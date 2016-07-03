    <!-- Footer -->
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-lg-10 col-lg-offset-1 text-center">
            <h4>
              <strong>NIIT Ltd</strong>
            </h4>
            <p>Institutional Area
              <br>Plot 85, Sector 32, Gurgaon(Haryana)</p>
            <ul class="list-unstyled">
              <li>
                <i class="fa fa-phone fa-fw"></i>+(91) 72780 46260</li>
              <li>
                <i class="fa fa-envelope-o fa-fw"></i>
                <a href="mailto:info@niit.com">info@niit.com</a>
              </li>
            </ul>
            <br>
            <ul class="list-inline">
              <li>
                <a href="https://web.facebook.com/niit4u?_rdr"><i class="fa fa-facebook fa-fw fa-3x"></i></a>
              </li>
              <li>
                <a href="https://twitter.com/NIITLtd"><i class="fa fa-twitter fa-fw fa-3x"></i></a>
              </li>
              <li>
                <a href="https://www.youtube.com/user/niitcareers"><i class="fa fa-youtube fa-fw fa-3x"></i></a>
              </li>
            </ul>
            <hr class="small">
            <p class="text-muted">Copyright &copy; NIIT LTD 2016</p>
          </div>
        </div>
      </div>
    </footer>
    <!-- jQuery -->
    <script src="<c:url value="/resources/js/jquery.js" />"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    <!-- Angular JavaScript -->
    <script src="<c:url value="/resources/js/angular.min.js" />"></script>
    <!-- Custom Theme JavaScript -->
    <script>
      // Closes the sidebar menu
            $("#menu-close").click(function(e) {
                e.preventDefault();
                $("#sidebar-wrapper").toggleClass("active");
            });
        
            // Opens the sidebar menu
            $("#menu-toggle").click(function(e) {
                e.preventDefault();
                $("#sidebar-wrapper").toggleClass("active");
            });
        
            // Scrolls to the selected menu item on the page
            $(function() {
                $('a[href*=#]:not([href=#])').click(function() {
                    if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') || location.hostname == this.hostname) {
        
                        var target = $(this.hash);
                        target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                        if (target.length) {
                            $('html,body').animate({
                                scrollTop: target.offset().top
                            }, 1000);
                            return false;
                        }
                    }
                });
            });
    </script>
  </body>

</html>