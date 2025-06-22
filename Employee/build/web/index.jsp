

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import="model.Employee" %>
<%@page import="dao.EmployeeDao" %>
<%@page import="java.util.*" %>

<%@include file="header.jsp" %>



  <%   List<Employee> list=EmployeeDao.getAllEmployees();

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
              
              <c:forEach items="${list}" var="e">
                  <tr>
                      <td>${e.getId()}</td>
                      <td>${e.getName()}</td>
                      <td>${e.getDesignation()}</td>
                      <td>${e.getSalary()}</td>
                      
                      <td>
                          <a href="editemployeefrom.jsp?id=${e.id}" class="btn btn-primary">edit</a>
                          
                          <a href="deleteemployee.jsp?id=${e.id}" class="btn btn-danger"
                            onclick ="return confirm('Are you sure you want to delete this employee?');">Delete</a>
                        
                      </td>
                      
                  </tr>
                  
              </c:forEach>
                  
          </tbody>
        
        
    </table>
    
    
    
</div>


<%@include file="footer.jsp" %>



