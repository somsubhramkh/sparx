<%@include file="/WEB-INF/views/template/Header.jsp"%>

  <aside class="callout">
      <div class="text-vertical-center"></div>
    </aside>
    
    <section id="services" class="services bg-primary">
      <div class="container">
        <div class="row text-center">
          <div class="col-lg-10 col-lg-offset-1">
            <h2>
              <i class="fa fa-sign-in" aria-hidden="true"></i>
              <br>Sign In</h2>
            <hr class="small">
            <div class="section">
              <form class="form-horizontal" role="form" action="perform_login" method="post">
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputEmail3" class="control-label">Username</label>
                  </div>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="username" placeholder="Username">
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputPassword3" class="control-label">Password</label>
                  </div>
                  <div class="col-sm-10">
                    <input type="password" class="form-control" name="password" placeholder="Password">
                  </div>
                </div>
                
                <div class="form-group">
                  <button type="submit" class="btn btn-default">Sign in</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
<%@include file="/WEB-INF/views/template/Footer.jsp"%>