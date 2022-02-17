<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
 try {
           
Class.forName("com.mysql.jdbc.Driver");
    
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register2","root","cena");
 
PreparedStatement st = con.prepareStatement("insert into register5 values(?,?,?,?,?);");
 
st.setString(1, String.valueOf(request.getParameter("Name")));
        
st.setString(2, String.valueOf(request.getParameter("PCtype")));
          
st.setString(3, String.valueOf(request.getParameter("Hours")));
  
st.setString(4, String.valueOf(request.getParameter("Price")));
       
st.setString(5, String.valueOf(request.getParameter("MobileNumber")));
  
st.executeUpdate();
        
st.close();

con.close();

response.sendRedirect("studentViewAll.jsp");
     
   }
 catch (Exception e) 
{

e.printStackTrace();

}
%>

