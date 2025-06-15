<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import="model.employee" %>
<%@page import="dao.EmployeeDao" %>
<%@page import="java.util.*" %>

<%@include file="header.jsp" %>


<% 
    List<employee> list=EmployeeDao.getAllemployees();

    request.setAttribute("list",list);
    
%>

<div class="container">
    <h1 class="text-primary text-center">Employee Details</h1>
    
    <table class="table table-striped">
        
          <thead>
            <tr>
                <th>ID</th>         
                <th>NAME</th>         
                <th>DESIGNATION</th>         
                <th>SALARY</th>         
                <th>ACTION</th>         
            </tr>
          </thead>  
          
          <tbody>
              
              <c:forEach items="${list}" var="s">
                  <tr>
                      <td>${e.getId()}</td>
                      <td>${e.getName()}</td>
                      <td>${e.getDesignation()}</td>
                      <td>${e.getSalary()}</td>
                      <td>
                          <button> type="submit" class=" btn btn-primary>Edit" </button>
                          <button> type="submit" class=" btn btn-danger>Delete" </button>
                      </td>
                      
                  </tr>
                  
              </c:forEach>
                  
          </tbody>
        
        
    </table>
    
    
    
</div>


<%@include file="footer.jsp" %>



