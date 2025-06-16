<jsp:useBean class="model.employee"  id="e" />
<%@page  import="dao.employeeDao" %>
<jsp:setProperty  name="e" property="*" />

<%
        
      employeeDao.deleteemployee(e.getId());
       
      response.sendRedirect("index.jsp");
    
           


%>
