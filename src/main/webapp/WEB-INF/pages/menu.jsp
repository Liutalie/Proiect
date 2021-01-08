<%-- 
    Document   : menu
    Created on : Jan 8, 2021, 11:53:17 AM
    Author     : Stefan
--%>

<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <a class="navbar-brand" href="{pageContext.request.contextPath}">Jobs</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarsExampleDefault">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item ${pageContext.request.requestURI eq '/Project/about.jsp' ? 'active' : ''}">
          <a class="nav-link" href="${pageContext.request.contextPath}/about.jsp">About</a>
      </li>
      <li class="nav-item ${activePage eq 'Jobs' ? 'active' : ''}">
        <a class="nav-link" href="${pageContext.request.contextPath}/Jobs">Jobs</a>
      </li>
      <li class="nav-item ${activePage eq 'Users' ? 'active' : ''}">
        <a class="nav-link" href="${pageContext.request.contextPath}/Users">Users</a>
      </li>
      
    </ul>
      <ul class="navbar-nav m1-auto">
          <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/Login">Login</a>
          </li>
      </ul>
  </div>
</nav>
