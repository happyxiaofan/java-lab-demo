<%@ page contentType="text/html; charset=utf-8" import="java.util.*,java.sql.*" %>  
<% 
    request.setCharacterEncoding("utf-8");   
    String sort=new String(request.getParameter("sort").getBytes("iso-8859-1"),"gbk");        
    System.out.println("sort="+sort);   
    
    Connection conn = null;  
    Statement st = null;  
    ResultSet rs = null;  
    List lists = new ArrayList();  
 
    try{  
        //Class.forName(dbDriver);
         Class.forName("com.mysql.jdbc.Driver"); 
    } catch(java.lang.ClassNotFoundException e) {  
        e.printStackTrace();  
    }  
 
    try {
          
   conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/labmis","root","1209"); 
        st=conn.createStatement();  
        rs=st.executeQuery("select teachername from teacher where teacherdept = (SELECT deptname FROM dept where deptno='"+sort+"')");
        //rs=st.executeQuery("select name from web_type where pid = (SELECT type_id FROM web_type where name='酷站大全')");  
        while (rs.next())  
        {
            lists.add(rs.getString(1));  
        }  
        rs.close();  
        st.close();  
        conn.close();  
    }  catch (Exception e)  {     
        e.printStackTrace();  
    }  
    response.setContentType("text/xml; charset=utf-8");  
    response.setHeader("Cache-Control", "no-cache");  
    //必须要写下面这一行，不然取出的XML长度为0  
    response.getWriter().write("<?xml   version=\"1.0\"   encoding=\"utf-8\"?>");      
    out.println("<response>");  
    for(int i=0;i<lists.size();i++)  
    {  
        out.println("<res>" + lists.get(i).toString() + "</res>");  
    }  
    out.println("</response>"); 
%> 