package action;

import java.io.IOException;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import orm.Tuser;
import orm.Trenwu;

import service.liuService;


import dao.DB;

public class renwu_servlet extends HttpServlet
{
	public void service(HttpServletRequest req,HttpServletResponse res)throws ServletException, IOException 
	{
        String type=req.getParameter("type");
		
        if(type.endsWith("renwuAdd"))
		{
			renwuAdd(req, res);
		}
        if(type.endsWith("renwuMine"))
		{
        	renwuMine(req, res);
		}
		if(type.endsWith("renwuDel"))
		{
			renwuDel(req, res);
		}
		
		if(type.endsWith("renwuShouhuo"))
		{
			renwuShouhuo(req, res);
		}
		if(type.endsWith("renwuMana"))
		{
			renwuMana(req, res);
		}
		
		if(type.endsWith("renwuNew"))
		{
			renwuNew(req, res);
		}
		if(type.endsWith("renwuDetailQian"))
		{
			renwuDetailQian(req, res);
		}
		
		if(type.endsWith("renwuByCatelog"))
		{
			renwuByCatelog(req, res);
		}
		if(type.endsWith("renwuRes"))
		{
			renwuRes(req, res);
		}
		
		if(type.endsWith("jiedanAdd"))
		{
			jiedanAdd(req, res);
		}
		if(type.endsWith("jiedanMine"))
		{
			jiedanMine(req, res);
		}
		
		
		
	}
	
	
	public void renwuAdd(HttpServletRequest req,HttpServletResponse res)
	{
		HttpSession session=req.getSession();
		Tuser user=(Tuser)session.getAttribute("user");
		
		String id=String.valueOf(new Date().getTime());
		String catelog_id=req.getParameter("catelog_id").trim();
		String mingcheng=req.getParameter("mingcheng").trim();
		String jieshao=req.getParameter("jieshao").trim();
		
		String fujian=req.getParameter("fujian").trim();
		int qian=Integer.parseInt(req.getParameter("qian"));
		String shijian=new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date());
		int user_id=user.getId();
		
		String zt="待接单";
		int jie_user_id=0;
		
		int jin=liuService.getUser(user.getId()).getJin();
		if(qian>jin)
		{
			req.setAttribute("msg", "金币不足，不能发布任务");
	        String targetURL = "/common/msg.jsp";
			dispatch(targetURL, req, res);
		}
		else
		{
			String sql="insert into t_renwu(id,catelog_id,mingcheng,jieshao,fujian,shijian,qian,user_id,zt,jie_user_id) values(?,?,?,?,?,?,?,?,?,?)";
			Object[] params={id,catelog_id,mingcheng,jieshao,fujian,shijian,qian,user_id,zt,jie_user_id};
			DB mydb=new DB();
			mydb.doPstm(sql, params);
			mydb.closed();
			
			liuService.kouchu_jin_user(user.getId(), qian);
			
			req.setAttribute("msg", "操作成功");
	        String targetURL = "/common/msg.jsp";
			dispatch(targetURL, req, res);
		}
		
	}
	

	public void renwuMine(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		HttpSession session=req.getSession();
		Tuser user=(Tuser)session.getAttribute("user");
		
		List renwuList=new ArrayList();
		String sql="select * from t_renwu where user_id=? order by shijian desc";
		Object[] params={user.getId()};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				Trenwu renwu=new Trenwu();
				
				renwu.setId(rs.getString("id"));
				renwu.setCatelog_id(rs.getString("catelog_id"));
				renwu.setMingcheng(rs.getString("mingcheng"));
				renwu.setJieshao(rs.getString("jieshao"));
				
				renwu.setFujian(rs.getString("fujian"));
				renwu.setQian(rs.getInt("qian"));
				renwu.setShijian(rs.getString("shijian"));
				renwu.setUser_id(rs.getInt("user_id"));
				
				renwu.setZt(rs.getString("zt"));
				renwu.setJie_user_id(rs.getInt("jie_user_id"));
				
				renwu.setCatelog(liuService.get_catelog(rs.getString("catelog_id")));
				
				int jie_user_id=rs.getInt("jie_user_id");
			    if(jie_user_id !=0)
				{
					renwu.setJieUser(liuService.getUser(jie_user_id));
				}
			    if(jie_user_id ==0)
				{
					renwu.setJieUser(new Tuser());
				}
				
				renwuList.add(renwu);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		
		req.setAttribute("renwuList", renwuList);
		req.getRequestDispatcher("admin/renwu/renwuMine.jsp").forward(req, res);
	}
	
	public void renwuDel(HttpServletRequest req,HttpServletResponse res)
	{
		String id=req.getParameter("id");
		String sql="delete from t_renwu where id=?";
		Object[] params={id.trim()};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("msg", "操作成功");
		
        String targetURL = "/common/msg.jsp";
		dispatch(targetURL, req, res);
	}
	
	
	public void renwuShouhuo(HttpServletRequest req,HttpServletResponse res)
	{
		String id=req.getParameter("id");
		String sql="update t_renwu set zt='已收货' where id=?";
		Object[] params={id.trim()};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		Trenwu renwu=liuService.getrenwu(id);
		int qian=renwu.getQian();
		int jie_user_id=renwu.getJie_user_id();
				
		liuService.zengjia_jin_use(jie_user_id, qian);
		
		req.setAttribute("msg", "操作成功");
        String targetURL = "/common/msg.jsp";
		dispatch(targetURL, req, res);
	}
	
	
	
	
	public void renwuMana(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		List renwuList=new ArrayList();
		String sql="select * from t_renwu order by shijian desc";
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				Trenwu renwu=new Trenwu();
				
				renwu.setId(rs.getString("id"));
				renwu.setCatelog_id(rs.getString("catelog_id"));
				renwu.setMingcheng(rs.getString("mingcheng"));
				renwu.setJieshao(rs.getString("jieshao"));
				
				renwu.setFujian(rs.getString("fujian"));
				renwu.setQian(rs.getInt("qian"));
				renwu.setShijian(rs.getString("shijian"));
				renwu.setUser_id(rs.getInt("user_id"));
				
				renwu.setCatelog(liuService.get_catelog(rs.getString("catelog_id")));
				renwu.setZt(rs.getString("zt"));
				renwu.setJie_user_id(rs.getInt("jie_user_id"));
				
				renwu.setCatelog(liuService.get_catelog(rs.getString("catelog_id")));
				
				int jie_user_id=rs.getInt("jie_user_id");
			    if(jie_user_id !=0)
				{
					renwu.setJieUser(liuService.getUser(jie_user_id));
				}
			    if(jie_user_id ==0)
				{
					renwu.setJieUser(new Tuser());
				}
				
				renwuList.add(renwu);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		
		req.setAttribute("renwuList", renwuList);
		req.getRequestDispatcher("admin/renwu/renwuMana.jsp").forward(req, res);
	}
	
	public void renwuNew(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		List renwuList=new ArrayList();
		String sql="select * from t_renwu where zt='待接单' order by shijian desc";
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				Trenwu renwu=new Trenwu();
				
				renwu.setId(rs.getString("id"));
				renwu.setCatelog_id(rs.getString("catelog_id"));
				renwu.setMingcheng(rs.getString("mingcheng"));
				renwu.setJieshao(rs.getString("jieshao"));
				
				renwu.setFujian(rs.getString("fujian"));
				renwu.setQian(rs.getInt("qian"));
				renwu.setShijian(rs.getString("shijian"));
				renwu.setUser_id(rs.getInt("user_id"));
				
				renwu.setZt(rs.getString("zt"));
				renwu.setJie_user_id(rs.getInt("jie_user_id"));
				
				renwuList.add(renwu);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		if(renwuList.size()>8)
		{
			renwuList=renwuList.subList(0, 8);
		}
		
		req.setAttribute("renwuList", renwuList);
		
		req.getRequestDispatcher("qiantai/renwu/renwuNew.jsp").forward(req, res);
	}
	
	
	public void renwuDetailQian(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
        String id=req.getParameter("id");
		
		Trenwu renwu=new Trenwu();
		
		String sql="select * from t_renwu where id="+id;
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				renwu.setId(rs.getString("id"));
				renwu.setCatelog_id(rs.getString("catelog_id"));
				renwu.setMingcheng(rs.getString("mingcheng"));
				renwu.setJieshao(rs.getString("jieshao"));
				
				renwu.setFujian(rs.getString("fujian"));
				renwu.setQian(rs.getInt("qian"));
				renwu.setShijian(rs.getString("shijian"));
				renwu.setUser_id(rs.getInt("user_id"));
				
				renwu.setZt(rs.getString("zt"));
				renwu.setJie_user_id(rs.getInt("jie_user_id"));
				
				renwu.setUser(liuService.getUser(rs.getInt("user_id")));
				
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		
		req.setAttribute("renwu", renwu);
		req.getRequestDispatcher("qiantai/renwu/renwuDetailQian.jsp").forward(req, res);
	}
	
	public void renwuByCatelog(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
        String catelog_id=req.getParameter("catelog_id");
		
		List renwuList=new ArrayList();
		String sql="select * from t_renwu where zt='待接单' and catelog_id="+catelog_id;
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				Trenwu renwu=new Trenwu();
				
				renwu.setId(rs.getString("id"));
				renwu.setCatelog_id(rs.getString("catelog_id"));
				renwu.setMingcheng(rs.getString("mingcheng"));
				renwu.setJieshao(rs.getString("jieshao"));
				
				renwu.setFujian(rs.getString("fujian"));
				renwu.setQian(rs.getInt("qian"));
				renwu.setShijian(rs.getString("shijian"));
				renwu.setUser_id(rs.getInt("user_id"));
				
				renwu.setZt(rs.getString("zt"));
				renwu.setJie_user_id(rs.getInt("jie_user_id"));
				
				renwuList.add(renwu);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		req.setAttribute("renwuList", renwuList);
		req.getRequestDispatcher("qiantai/renwu/renwuByCatelog.jsp").forward(req, res);
	}
	
	
	public void renwuRes(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
        String mingcheng=req.getParameter("mingcheng").trim();
		
		List renwuList=new ArrayList();
		String sql="select * from t_renwu where zt='待接单' and mingcheng like '%"+mingcheng.trim()+"%'";
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				Trenwu renwu=new Trenwu();
				
				renwu.setId(rs.getString("id"));
				renwu.setCatelog_id(rs.getString("catelog_id"));
				renwu.setMingcheng(rs.getString("mingcheng"));
				renwu.setJieshao(rs.getString("jieshao"));
				
				renwu.setFujian(rs.getString("fujian"));
				renwu.setQian(rs.getInt("qian"));
				renwu.setShijian(rs.getString("shijian"));
				renwu.setUser_id(rs.getInt("user_id"));
				
				renwu.setZt(rs.getString("zt"));
				renwu.setJie_user_id(rs.getInt("jie_user_id"));
				
				renwuList.add(renwu);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		
		req.setAttribute("renwuList", renwuList);
		req.getRequestDispatcher("qiantai/renwu/renwuRes.jsp").forward(req, res);
	}
	
	
	public void jiedanAdd(HttpServletRequest req,HttpServletResponse res)
	{
		HttpSession session=req.getSession();
		Tuser user=(Tuser)session.getAttribute("user");
		
		String id=req.getParameter("id");
		String zt="已接单";
		int jie_user_id=user.getId();
		
		
		String sql="update t_renwu set zt=?,jie_user_id=? where id=?";
		Object[] params={zt,jie_user_id,id};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("message", "成功接单，可在用户中心查看");
		req.setAttribute("path", "qiantai/default.jsp");
        String targetURL = "/common/success.jsp";
		dispatch(targetURL, req, res);
	}
	
	
	
	public void jiedanMine(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		HttpSession session=req.getSession();
		Tuser user=(Tuser)session.getAttribute("user");
		
		List renwuList=new ArrayList();
		String sql="select * from t_renwu where jie_user_id=?";
		Object[] params={user.getId()};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				Trenwu renwu=new Trenwu();
				
				renwu.setId(rs.getString("id"));
				renwu.setCatelog_id(rs.getString("catelog_id"));
				renwu.setMingcheng(rs.getString("mingcheng"));
				renwu.setJieshao(rs.getString("jieshao"));
				
				renwu.setFujian(rs.getString("fujian"));
				renwu.setQian(rs.getInt("qian"));
				renwu.setShijian(rs.getString("shijian"));
				renwu.setUser_id(rs.getInt("user_id"));
				
				renwu.setZt(rs.getString("zt"));
				renwu.setJie_user_id(rs.getInt("jie_user_id"));
				
				renwu.setCatelog(liuService.get_catelog(rs.getString("catelog_id")));
				renwu.setUser(liuService.getUser(rs.getInt("user_id")));
				
				int jie_user_id=rs.getInt("jie_user_id");
			    if(jie_user_id !=0)
				{
					renwu.setJieUser(liuService.getUser(jie_user_id));
				}
			    if(jie_user_id ==0)
				{
					renwu.setJieUser(new Tuser());
				}
				
				renwuList.add(renwu);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		
		req.setAttribute("renwuList", renwuList);
		req.getRequestDispatcher("admin/renwu/jiedanMine.jsp").forward(req, res);
	}
	
	
	public void dispatch(String targetURI,HttpServletRequest request,HttpServletResponse response) 
	{
		RequestDispatcher dispatch = getServletContext().getRequestDispatcher(targetURI);
		try 
		{
		    dispatch.forward(request, response);
		    return;
		} 
		catch (ServletException e) 
		{
                    e.printStackTrace();
		} 
		catch (IOException e) 
		{
			
		    e.printStackTrace();
		}
	}
	public void init(ServletConfig config) throws ServletException 
	{
		super.init(config);
	}
	
	public void destroy() 
	{
		
	}
}
