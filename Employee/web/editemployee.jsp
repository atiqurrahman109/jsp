<jsp:useBean class="model.employee"  id="e" />
<%@page  import="dao.employeeDao" %>
<jsp:setProperty  name="e" property="*" />

<%
        
        int result=employeeDao.updateemployee(e);
        if(result > 0){
             response.sendRedirect("index.jsp");
    
            }
            else{
    response.sendRedirect("error.jsp");
    }


%>
