
<jsp:useBean class="model.Student" id="e"/>
<%@page import="dao.StudentDao" %>
<jsp:setProperty name="e" property="*"/>

<% int result=EmployeeDao.saveEmployee(e);
if(result>0){
    
    response.sendRedirect("index.jsp");
    }
    
    else{
    response.sendRedirect("error.jsp");
    
    }

    %>
    
    