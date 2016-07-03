<%@include file="/WEB-INF/views/template/Header.jsp"%>

<c:url var="addAction" value="/Register/add"></c:url>

 <aside class="callout">
      <div class="text-vertical-center"></div>
    </aside>
   
    <section id="services" class="services bg-primary">
      <div class="container">
        <div class="row text-center">
          <div class="col-lg-10 col-lg-offset-1">
            <h2>
              <br>Register as a New User</h2>
            <hr class="small">
            <div class="section">
            
              <form:form class="form-horizontal" role="form" commandName="user" action="${addAction}" enctype="multipart/form-data">
                <div class="form-group">
                  <div class="col-sm-2">
                    <label class="control-label">Username</label>
                  </div>
                  <div class="col-sm-10">
                    <form:input type="text" path="username" class="form-control" placeholder="Username"  />
                  </div>
                  <form:errors path="username" cssClass="error"/>
                </div>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label class="control-label">Password</label>
                  </div>
                  <div class="col-sm-10">
                    <form:input type="password" class="form-control" placeholder="Password" path="password" />
                  </div>
                  <form:errors path="password" cssClass="error"/>
                </div>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label class="control-label">Name</label>
                  </div>
                  <div class="col-sm-10">
                    <form:input type="text" class="form-control" placeholder="Name" path="name" />
                  </div>
                  <form:errors path="name" cssClass="error"/>
                </div>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label class="control-label">Email</label>
                  </div>
                  <div class="col-sm-10">
                    <form:input type="email" class="form-control" placeholder="Email" path="email" />
                  </div>
                  <form:errors path="email" cssClass="error"/>
                  
                </div>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label class="control-label">Location</label>
                  </div>
                  <div class="col-sm-10">
                    <form:input type="text" class="form-control" placeholder="Location" path="location" />
                  </div>
                  <form:errors path="location" cssClass="error"/>
                </div>
                
                <div class="form-group">
                <div class="col-sm-2">
                   
                  </div>
						<div class="col-sm-10">
							<form:input type="file" class="form-control" path="profilePicture" />
						</div>
					</div>
					
                <div class="form-group">
                  <button type="submit" class="btn btn-default">Register</button>
                </div>
              </form:form>
            </div>
          </div>
        </div>
        <!-- /.col-lg-10 -->
      </div>
      <!-- /.row -->
      <!-- /.container -->
    </section>

<%@include file="/WEB-INF/views/template/Footer.jsp"%>