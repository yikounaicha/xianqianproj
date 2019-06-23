一、创建实体bean（entity）

二、创建数据库连接

三、建立DAO服务层（一般写为接口，然后直接在Service层实现它的方法）

四、编写Service层

五、编写Servlet
    （关于Servlet层中的几个简单方法的理解）
        1.request.setAttribute(name，value)用于将调用Service中的方法从数据库中获得的值保存在request范围内
        2.req.getRequestDispatcher("list.jsp").forward(req,resp)指将值传递到jsp页面，forward方法只可以获得内部资源，大家应该理清他与sendredirect（）的区别

六、将所写的服务配置到web.xml文件中去
        1.配置简化如下
        <servlet>
            <servlet-name></servlet-name>
            <servlet-class></servlet-class>
        </servlet>
        <servlrt-mapping>
            <servlet-name></servlet-name>
            <url-pattern></url-pattern>
        </servlet-mapping>

 七、编写JSP页面


