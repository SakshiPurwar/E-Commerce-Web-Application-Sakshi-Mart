
<%@page import="com.learn.mycart.entities.User"%>
<%
    User user1 = (User) session.getAttribute("current-user");


%>

 

  
<nav class="navbar navbar-expand-lg navbar-dark custom-bg  "style="background-color: #673ab7;">
 <div class="container text-center">
    <a class="navbar-brand" href="index.jsp">MyCart</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
           <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
         </li>
     
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Categories
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
    </ul>
       <!-- Right-align Login and Register links -->
            <ul class="navbar-nav ml-auto">
                <%                    if (user1 == null) {
                 
                %>
                 
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="login.jsp">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="register.jsp">Register</a>
                </li>
                <%                    } else {

                %>

                <li class="nav-item active">
                    <a class="nav-link"  href="#!"> <%=user1.getUserName()%></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link active" aria-current="page" href="LogoutServlet">Logout</a>
                </li>

                <%
                    }
                %>
            </ul>
            </div>
  </div
  </div>
</nav>