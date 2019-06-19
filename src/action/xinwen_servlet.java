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

import orm.TXinwen;

import dao.DB;





public class xinwen_servlet extends HttpServlet
{
	public void service(HttpServletRequest req,HttpServletResponse res)throws ServletException, IOException 
	{
        String type=req.getParameter("type");
		
		
		if(type.endsWith("xinwenAdd"))
		{
			xinwenAdd(req, res);
		}
		if(type.endsWith("xinwenMana"))
		{
			xinwenMana(req, res);
		}
		if(type.endsWith("xinwenDel"))
		{
			xinwenDel(req, res);
		}
		if(type.endsWith("xinwenDetailHou"))
		{
			xinwenDetailHou(req, res);
		}
		if(type.endsWith("xinwenAll"))
		{
			xinwenAll(req, res);
		}
		if(type.endsWith("xinwenDetailQian"))
		{
			xinwenDetailQian(req, res);
		}
	}
	
	
	public void xinwenAdd(HttpServletRequest req,HttpServletResponse res)
	{
		String id=String.valueOf(new Date().getTime());
		String biaoti=req.getParameter("biaoti");
		String jieshao=req.getParameter("jieshao");
		String fujian=req.getParameter("fujian");
		if(fujian.equals(""))
		{
			fujian="/img/zanwu.jpg";
		}
		
		
		String fabushi=new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date());
		
		
		String sql="insert into t_xinwen values(?,?,?,?,?)";
		Object[] params={id,biaoti,jieshao,fujian,fabushi};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("msg", "操作成功");
        String targetURL = "/common/msg.jsp";
		dispatch(targetURL, req, res);
        
	}
	
	
	public void xinwenDel(HttpServletRequest req,HttpServletResponse res)
	{
		String id=req.getParameter("id");
		
		String sql="delete from t_xinwen where id=?";
		Object[] params={id};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("msg", "操作成功");
        String targetURL = "/common/msg.jsp";
		dispatch(targetURL, req, res);
	}

	public void xinwenMana(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		List xinwenList=new ArrayList();
		String sql="select * from t_xinwen";
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				TXinwen xinwen=new TXinwen();
				
				xinwen.setId(rs.getString("id"));
				xinwen.setBiaoti(rs.getString("biaoti"));
				xinwen.setJieshao(rs.getString("jieshao"));
				xinwen.setFujian(rs.getString("fujian"));
				
				xinwen.setFabushi(rs.getString("fabushi"));
				
				xinwenList.add(xinwen);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		req.setAttribute("xinwenList", xinwenList);
		req.getRequestDispatcher("admin/xinwen/xinwenMana.jsp").forward(req, res);
	}
	
	
	public void xinwenDetailHou(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		String id=req.getParameter("id");
		TXinwen xinwen=new TXinwen();
		
		String sql="select * from t_xinwen where id=?";
		Object[] params={id};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			rs.next();
			
				
			xinwen.setId(rs.getString("id"));
			xinwen.setBiaoti(rs.getString("biaoti"));
			xinwen.setJieshao(rs.getString("jieshao"));
			xinwen.setFujian(rs.getString("fujian"));
			
			xinwen.setFabushi(rs.getString("fabushi"));
				
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		req.setAttribute("xinwen", xinwen);
		req.getRequestDispatcher("admin/xinwen/xinwenDetailHou.jsp").forward(req, res);
	}
	
	public void xinwenAll(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		List xinwenList=new ArrayList();
		String sql="select * from t_xinwen order by id desc";
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				TXinwen xinwen=new TXinwen();
				
				xinwen.setId(rs.getString("id"));
				xinwen.setBiaoti(rs.getString("biaoti"));
				xinwen.setJieshao(rs.getString("jieshao"));
				xinwen.setFujian(rs.getString("fujian"));
				
				xinwen.setFabushi(rs.getString("fabushi"));
				
				xinwenList.add(xinwen);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		req.setAttribute("xinwenList", xinwenList);
		req.getRequestDispatcher("qiantai/xinwen/xinwenAll.jsp").forward(req, res);
	}
	
	
	public void xinwenDetailQian(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		String id=req.getParameter("id");
		TXinwen xinwen=new TXinwen();
		
		String sql="select * from t_xinwen where id=?";
		Object[] params={id};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			rs.next();
			
			xinwen.setId(rs.getString("id"));
			xinwen.setBiaoti(rs.getString("biaoti"));
			xinwen.setJieshao(rs.getString("jieshao"));
			xinwen.setFujian(rs.getString("fujian"));
			
			xinwen.setFabushi(rs.getString("fabushi"));
			
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		req.setAttribute("xinwen", xinwen);
		req.getRequestDispatcher("qiantai/xinwen/xinwenDetailQian.jsp").forward(req, res);
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
