
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
  
<head>
   
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
   <title>JSP Page</title>
 
   </head>
  
  <body bgcolor = aquamarine>
  
   <table border="1">
     
   <tr>
       
  <th>Name</th>
      
  <th>PCtype</th>
            
  <th>Hours</th>
             
 <th>Price</th>

<th>MobileNumber</th>
     
   </tr>
     
<%
    try{
           
 Class.forName("com.mysql.jdbc.Driver");
           
 Connection con = DriverManager.getConnection("jdbc:mysql:// localhost:3306/register2","root","cena");
           
 PreparedStatement st = con.prepareStatement("Select * from register5");
 
            
  ResultSet rs = st.executeQuery();
          
while(rs.next())
{
     
  %>
       
<tr>
     
      
<td><%=rs.getString("Name")%></td>
        
<td><%=rs.getString("PCtype")%></td>
       
<td><%=rs.getString("Hours")%></td>
            
<td><%=rs.getString("Price")%></td>

<td><%=rs.getString("MobileNumber")%></td>

       
 </tr>
  
 <%
            
 }
 }
catch (Exception e)
{
         
e.printStackTrace();
     
}
      
%>
   

</table>
   
</body>

</html>
