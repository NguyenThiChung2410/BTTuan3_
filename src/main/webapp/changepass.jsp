<%-- 
    Document   : changepass
    Created on : Nov 7, 2024, 10:52:06 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="shared/header.jsp" />
<!--nhung noi dung nav.jsp-->
<jsp:include page="shared/nav.jsp" />
<form action="ChangePassServlet" method="post">
    <h2>Change Password</h2>
    <div>
        <label>Old PassWord</label>
        <input type="password" name="oldpassword" required="" class="form-control">
    </div>
    <div>
        <label>New PassWord</label>
        <input type="password" name="newpassword" required="" class="form-control">
    </div>
    <div>
        <label>Confirm PassWord</label>
        <input type="password" name="confirmpassword" required="" class="form-control">
    </div>
    <div class="mt-2">
        <button type="submit" class="btn btn-primary">Submit</button>
    </div>
    <%
    if(request.getAttribute("error")!=null){
    
    %>
    <div class="text-danger mb-3">
        <%=request.getAttribute("error")%>
    </div>
    <%
        }
    %>
</form>
<jsp:include page="shared/footer.jsp" />   
