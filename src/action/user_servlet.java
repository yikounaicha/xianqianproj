package action;

import java.io.IOException;
import java.sql.ResultSet;
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
import service.liuService;

import dao.DB;

public class user_servlet extends HttpServlet
{
	public void service(HttpServletRequest req,HttpServletResponse res)throws ServletException, IOException 
	{
        String type=req.getParameter("type");
		
		if(type.endsWith("userReg"))
		{
			userReg(req, res);
		}
		if(type.endsWith("userEditMe"))
		{
			userEditMe(req, res);
		}
		if(type.endsWith("userMana"))
		{
			userMana(req, res);
		}
		if(type.endsWith("userDel"))
		{
			userDel(req, res);
		}
	}
	
	
	public void userReg(HttpServletRequest req,HttpServletResponse res)
	{
		//int id=0;
		String loginname=req.getParameter("loginname");
		String loginpw=req.getParameter("loginpw");
		String xingming=req.getParameter("xingming");
		
		String xingbie=req.getParameter("xingbie");
		int nianling=Integer.parseInt(req.getParameter("nianling"));
		String zhuzhi=req.getParameter("zhuzhi");
		String dianhua=req.getParameter("dianhua");
		
		int jin=10;
		String del="no";
		
		String s=liuService.panduan_zhanghao(loginname.trim());
		if(s.equals("yizhan"))
		{
			req.setAttribute("message", "账号已被占用，请输入其他账号");
			req.setAttribute("path", "qiantai/user/userReg.jsp");
			
	        String targetURL = "/common/success.jsp";
			dispatch(targetURL, req, res);
		}
		else
		{
			String sql="insert into t_user(loginname,loginpw,xingming,xingbie,nianling,zhuzhi,dianhua,jin,del) values(?,?,?,?,?,?,?,?,?)";
			Object[] params={loginname,loginpw,xingming,xingbie,nianling,zhuzhi,dianhua,jin,del};
			DB mydb=new DB();
			mydb.doPstm(sql, params);
			mydb.closed();
			
			req.setAttribute("message", "注册成功,请登录");
			req.setAttribute("path", "qiantai/user/userLogin.jsp");
			
	        String targetURL = "/common/success.jsp";
			dispatch(targetURL, req, res);
		}
		
		
	}
	
	
	
	public void userEditMe(HttpServletRequest req,HttpServletResponse res)
	{
		int id=Integer.parseInt(req.getParameter("id")); 
		String loginname=req.getParameter("loginname");
		String loginpw=req.getParameter("loginpw");
		String xingming=req.getParameter("xingming");
		
		String xingbie=req.getParameter("xingbie");
		int nianling=Integer.parseInt(req.getParameter("nianling"));
		String zhuzhi=req.getParameter("zhuzhi");
		String dianhua=req.getParameter("dianhua");
		
		//int jin=Integer.parseInt(req.getParameter("jin"));
		//String del="no";
		
		String sql="update t_user set loginname=?,loginpw=?,xingming=?,xingbie=?,nianling=?,zhuzhi=?,dianhua=? where id=?";
		Object[] params={loginname,loginpw,xingming,xingbie,nianling,zhuzhi,dianhua,id};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("msg", "修改成功，重新登录后生效");
        String targetURL = "/common/msg.jsp";
		dispatch(targetURL, req, res);
	}
	
	
	public void userMana(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		List userList=new ArrayList();
		String sql="select * from t_user where del='no'";
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				Tuser user=new Tuser();
				
				user.setId(rs.getInt("id"));
				user.setLoginname(rs.getString("loginname"));
				user.setLoginpw(rs.getString("loginpw"));
				user.setXingming(rs.getString("xingming"));
				
				user.setXingbie(rs.getString("xingbie"));
				user.setNianling(rs.getInt("nianling"));
				user.setZhuzhi(rs.getString("zhuzhi"));
				user.setDianhua(rs.getString("dianhua"));
				
				user.setJin(rs.getInt("jin"));
				user.setDel(rs.getString("del"));
				
				userList.add(user);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		req.setAttribute("userList", userList);
		req.getRequestDispatcher("admin/user/userMana.jsp").forward(req, res);
	}
	
	
	public void userDel(HttpServletRequest req,HttpServletResponse res)
	{
        String id=req.getParameter("id");
		
		String sql="update t_user set del='yes' where id=?";
		Object[] params={id};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("msg", "操作成功");		
        String targetURL = "/common/msg.jsp";
		dispatch(targetURL, req, res);
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
