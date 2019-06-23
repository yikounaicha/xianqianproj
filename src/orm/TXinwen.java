package orm;

/**
 * TXinwen entity. @author MyEclipse Persistence Tools
 */

public class TXinwen implements java.io.Serializable
{

	// Fields

	private String id;
	private String biaoti;
	private String jieshao;
	private String fujian;
	
	private String fabushi;
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getBiaoti() {
		return biaoti;
	}
	public void setBiaoti(String biaoti) {
		this.biaoti = biaoti;
	}
	
	public String getFujian() {
		return fujian;
	}
	public void setFujian(String fujian) {
		this.fujian = fujian;
	}
	public String getJieshao() {
		return jieshao;
	}
	public void setJieshao(String jieshao) {
		this.jieshao = jieshao;
	}
	public String getFabushi() {
		return fabushi;
	}
	public void setFabushi(String fabushi) {
		this.fabushi = fabushi;
	}

}