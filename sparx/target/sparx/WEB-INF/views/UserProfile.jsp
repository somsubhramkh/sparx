<%@include file="/WEB-INF/views/template/Header.jsp"%>


<div class="cover">
      <div class="cover-image" style="background-image: url(<c:url value="/resources/img/UserBG.jpg" />);"></div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <img src="http://pingendo.github.io/pingendo-bootstrap/assets/user_placeholder.png" class="center-block img-circle img-responsive">
            <h3 class="text-center">John Doe</h3>
            <p class="text-center">Developer</p>
          </div>
          <div class="col-md-8">
            <ul class="list-group">
              <li class="list-group-item">Email:</li>
              <li class="list-group-item">Student/Alumni:</li>
              <li class="list-group-item">Course Enrolled for:</li>
            </ul>
          </div>
        </div>
      </div>
    </div>

<%@include file="/WEB-INF/views/template/Footer.jsp"%>