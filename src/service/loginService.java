package service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.directwebremoting.WebContext;
import org.directwebremoting.WebContextFactory;

import orm.TAdmin;
import orm.Tcatelog;
import orm.Tuser;

import dao.DB;


public class loginService
{
	public String login(String userName,String userPw,int userType)
	{
		try
		{
			Thread.sleep(700);
		} catch (InterruptedException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String result="no";
		
		if(userType==0)//系统管理员登陆
		{
			String sql="select * from t_admin where userName=? and userPw=?";
			Object[] params={userName,userPw};
			DB mydb=new DB();
			mydb.doPstm(sql, params);
			try 
			{
				ResultSet rs=mydb.getRs();
				boolean mark=(rs==null||!rs.next()?false:true);
				if(mark==false)
				{
					 result="no";
				}
				else
				{
					 result="yes";
					 TAdmin admin=new TAdmin();
					 admin.setUserId(rs.getInt("userId"));
					 admin.setUserName(rs.getString("userName"));
					 admin.setUserPw(rs.getString("userPw"));
					 WebContext ctx = WebContextFactory.get(); 
					 HttpSession session=ctx.getSession(); 
					 session.setAttribute("userType", 0);
		             session.setAttribute("admin", admin);
				}
				rs.close();
			} 
			catch (SQLException e)
			{
				System.out.println("登录失败！");
				e.printStackTrace();
			}
			finally
			{
				mydb.closed();
			}
			
		}
		
		
		if(userType==1)
		{
			String sql="select * from t_user where loginname=? and loginpw=? and del='no'";
			Object[] params={userName,userPw};
			DB mydb=new DB();
			try
			{
				mydb.doPstm(sql, params);
				ResultSet rs=mydb.getRs();
				boolean mark=(rs==null||!rs.next()?false:true);
				if(mark==false)
				{
					result="no";
				}
				if(mark==true)
				{
					 result="yes";
					 
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
					
					 WebContext ctx = WebContextFactory.get(); 
					 HttpSession session=ctx.getSession(); 
					 
					 session.setAttribute("userType", 1);
		             session.setAttribute("user", user);
		             
				}
				rs.close();
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			mydb.closed();
		}
		if(userType==2)
		{
			
		}
		return result;
	}
	
	
	public String userLogout()
    {
		System.out.println("DDDD");
    	try 
		{
			Thread.sleep(700);
		} 
		catch (InterruptedException e)
		{
			e.printStackTrace();
		}
		WebContext ctx = WebContextFactory.get(); 
		HttpSession session=ctx.getSession(); 
		
		session.setAttribute("userType", null);
        session.setAttribute("user", null);
		
		return "yes";
    }

    public String adminPwEdit(String userPwNew)
    {
		System.out.println("DDDD");
    	try 
		{
			Thread.sleep(700);
		} 
		catch (InterruptedException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		WebContext ctx = WebContextFactory.get(); 
		HttpSession session=ctx.getSession(); 
		TAdmin admin=(TAdmin)session.getAttribute("admin");
		
		String sql="update t_admin set userPw=? where userId=?";
		Object[] params={userPwNew,admin.getUserId()};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		
		return "yes";
    }
    
    
    public List catelogAll()
    {
    	try
		{
			Thread.sleep(100);
		} catch (InterruptedException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    	List catelogList=new ArrayList();
		String sql="select * from t_catelog where del='no'";
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				Tcatelog catelog=new Tcatelog();
				catelog.setId(rs.getString("id"));
				catelog.setName(rs.getString("name"));
				catelogList.add(catelog);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		return catelogList;
    }
}
