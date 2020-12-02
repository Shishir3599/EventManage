<%-- 
    Document   : newjsp
    Created on : 20 Nov, 2020, 9:34:34 PM
    Author     : Ankit Sahu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<body>

<%

// Grab the variables from the form.
  String firstName = request.getParameter("first_name");
  String lastName = request.getParameter("last_name");
  String username = request.getParameter("username");
  String type_query = request.getParameter("type_query");
  String Floor = request.getParameter("floor");
  String issues[] = request.getParameterValues("query_type");
%>
<%-- Print out the variables. --%>

<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 5px;
  text-align: left;    
}
</style>
</head>
<body>

<style>
body {text-align: center;}
</style>

<h1>Output in Tabular Format</h1>
<p>Displaying input taken from the user.</p>

<table align=center style="width:50%">
  <tr>
    <th>Input</th>
    <th>Output</th>
  </tr>
  <tr>
    <td>First Name</td>
    <td><%=firstName%></td>
  </tr>
  <tr>
    <td>Last name</td>
    <td><%=lastName%></td>
  </tr>
  <tr>
    <td>Floor</td>
    <td><%=Floor%></td>
  </tr>
  <tr>
    <td>Username</td>
    <td><%=username%></td>
  </tr>
  <tr>
      <%
          int iter = 0;
          for(String i:issues){
              out.println("<tr>");
              out.println("<td> Issue Number : " + Integer.toString(iter) + "</td>");
              out.println("<td>" + i + "</td>");
              out.println("</tr>");
              iter += 1;
          }
        %>.
  </tr>
</table>

<h1>Hello, <%=firstName%> <%=lastName%>!</h1>
I see that you are <%=Floor%>. You have logged in with username as 
<%=username%> It seems like issues report be you are
<%
    for(String i:issues){
        out.println(i+" ,");
    }
%>.

</body>
</html>
