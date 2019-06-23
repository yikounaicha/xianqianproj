package orm;

public class Trenwu
{
	private String id;
	private String catelog_id;
	private String mingcheng;
	private String jieshao;
	
	private String fujian;
	private String shijian;
	private int qian;
	private int user_id;
	
	private String zt;//待接单-已接单-已收货
	private int jie_user_id;
	
	private Tcatelog catelog;
	private Tuser user;
	private Tuser jieUser;

	public String getId()
	{
		return id;
	}

	public void setId(String id)
	{
		this.id = id;
	}

	public Tcatelog getCatelog() {
		return catelog;
	}

	public int getQian() {
		return qian;
	}

	public void setQian(int qian) {
		this.qian = qian;
	}

	public String getZt() {
		return zt;
	}

	public void setZt(String zt) {
		this.zt = zt;
	}

	public int getJie_user_id() {
		return jie_user_id;
	}

	public void setJie_user_id(int jie_user_id) {
		this.jie_user_id = jie_user_id;
	}

	public Tuser getJieUser() {
		return jieUser;
	}

	public void setJieUser(Tuser jieUser) {
		this.jieUser = jieUser;
	}

	public void setCatelog(Tcatelog catelog) {
		this.catelog = catelog;
	}

	public String getCatelog_id()
	{
		return catelog_id;
	}

	public void setCatelog_id(String catelog_id)
	{
		this.catelog_id = catelog_id;
	}

	public String getMingcheng()
	{
		return mingcheng;
	}

	public void setMingcheng(String mingcheng)
	{
		this.mingcheng = mingcheng;
	}

	
	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public Tuser getUser() {
		return user;
	}

	public void setUser(Tuser user) {
		this.user = user;
	}

	public String getJieshao()
	{
		return jieshao;
	}

	public void setJieshao(String jieshao)
	{
		this.jieshao = jieshao;
	}

	
	public String getFujian()
	{
		return fujian;
	}

	public void setFujian(String fujian)
	{
		this.fujian = fujian;
	}

	public String getShijian()
	{
		return shijian;
	}

	public void setShijian(String shijian)
	{
		this.shijian = shijian;
	}
	
}
