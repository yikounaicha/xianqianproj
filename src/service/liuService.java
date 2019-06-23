package service;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;



import orm.Tcatelog;
import orm.Trenwu;
import orm.Tuser;


import dao.DB;

public class liuService
{
	public static List catelogList()
	{
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
	
	
	
	
	public static Tcatelog get_catelog(String id)
	{
		Tcatelog catelog=new Tcatelog();
		String sql="select * from t_catelog where id=?";
		Object[] params={id.trim()};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				catelog.setId(rs.getString("id"));
				catelog.setName(rs.getString("name"));
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		return catelog;
	}
	
	
	public static String panduan_zhanghao(String loginname)
	{
		String s="meizhan";
		
		String sql="select * from t_user where del='no' and loginname=?";
		Object[] params={loginname.trim()};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				s="yizhan";
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		return s;
	}
	
	
	
	
	public static List renwuNew()
	{
		List renwuList=new ArrayList();
		String sql="select * from t_renwu where zt='´ý½Óµ¥' order by id desc";
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
				renwu.setShijian(rs.getString("shijian"));
				renwu.setQian(rs.getInt("qian"));
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
		
		if(renwuList.size()>3)
		{
			renwuList=renwuList.subList(0, 3);
		}
		
		return renwuList;
	}
	
	
	public static Trenwu getrenwu(String id)
	{
		Trenwu renwu=new Trenwu();
		
		String sql="select * from t_renwu where id=?";
		Object[] params={id};
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
				renwu.setShijian(rs.getString("shijian"));
				renwu.setQian(rs.getInt("qian"));
				renwu.setUser_id(rs.getInt("user_id"));
				
				renwu.setZt(rs.getString("zt"));
				renwu.setJie_user_id(rs.getInt("jie_user_id"));
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		
		return renwu;
	}
	
	
	public static Tuser getUser(int id)
	{
		Tuser user=new Tuser();
		
		String sql="select * from t_user where id=?";
		Object[] params={id};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
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
				
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		return user;
	}
	
	
	public static void kouchu_jin_user(int id,int qian)
	{
		String sql="update t_user set jin=jin-? where id=?";
		Object[] params={qian,id};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
	}
	
	
	public static void zengjia_jin_use(int id,int qian)
	{
		String sql="update t_user set jin=jin+? where id=?";
		Object[] params={qian,id};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
	}
}
