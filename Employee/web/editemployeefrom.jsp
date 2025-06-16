


<%@page import="model.Employee" %>
<%@page import="dao.EmployeeDao" %>


<%
    String id=request.getParameter("id");    
    Employee e=EmployeeDao.getById(Integer.parseInt(id));

%>



<%@include file="header.jsp" %>



<div class="container my-3">
    <div class="bg-success text-center">
        <h1 class="jumborton">Update employee</h1>
    </div>
    <!--    start form-->
    <form action="editstudent.jsp"  method="post">
        <input type="hidden" name="id" value="<%=e.getId()%>" />

        <div class="row">
            <div class="col-md-6">
                <label for="exampleInputEmail1" class="form-label">Name</label>
                <input type="text" class="form-control" id="name" name="name" value="<%=e.getName()%>" placeholder="Full Name">
            </div>

                
        </div>
        <!-- start 2nd row-->
        <div class="row mt-3">
            <div class="col-md-6">
                <label  class="form-label">designation</label>
                <select class="form-select" name="designation" aria-label="Default select example">
                    <option disabled>Select Anyone</option>
                    <option value="junior software engineer" <%= "junior software engineer".equals(e.getSubject()) ? "selected" : "" %>>junior software engineer</option>
                    <option value="senior software engineer" <%= "senior software engineer".equals(e.getSubject()) ? "selected" : "" %>>senior software engineer</option>
                    <option value="manager" <%= "manager".equals(e.getSubject()) ? "selected" : "" %>>manager</option>
                  
                </select>
            </div>

                  
        </div>

        

        </div>

        <div class="row mt-3 text-center">
            <div class="col-md-6">
                <button type="submit" class="btn btn-success text-center" >edit</button>

            </div>

            <div class="col-md-6">
                <button type="reset" class="btn btn-danger text-center" >delete</button>

            </div>
        </div>
    </form>

    <!--end form    -->
</div>
            
            <%@include file="footer.jsp" %>