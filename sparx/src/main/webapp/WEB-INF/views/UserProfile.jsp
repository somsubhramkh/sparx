<%@include file="/WEB-INF/views/template/Header.jsp"%>

<%@page import="sparx.model.User" %>

  <aside class="callout">
      <div class="text-vertical-center"></div>
    </aside>


<%User user=(User)request.getAttribute("user"); %>

<%String path="/sparx/resources/img/"+user.getUserId()+".jpg"; %>

    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <img src="<%=path %>" class="center-block img-circle img-responsive">
            <h3 class="text-center"><%=user.getName()%></h3>
            <p class="text-center"><%=user.getLocation()%></p>
          </div>
          <div class="col-md-8">
            <ul class="list-group">
              <li class="list-group-item">Email:<%=user.getEmail()%></li>
              
            </ul>
          </div>
        </div>
      </div>
    </div>

<%@include file="/WEB-INF/views/template/Footer.jsp"%>