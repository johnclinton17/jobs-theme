<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WP_Bootstrap_Starter
 */

?>
			
		</div><!-- .container-fluid -->
	</div><!-- #content -->
	<footer id="colophon" class="site-footer" role="contentinfo">
      <div class="container">
        <div class="row">
          <div class="footer-menus">
            <div class="col-md-9 flex-box">
              <div class="box">
                <h5>Talent</h5>
              	<?php wp_nav_menu( array('menu' => 'talent') );?>
              </div>
              <div class="box">
                <h5>Companies</h5>
              	<?php wp_nav_menu( array('menu' => 'Companies') );?>
                
              </div>
              <div class="box">
                <h5>What We Do</h5>
              	<?php wp_nav_menu( array('menu' => 'What We Do') );?>
                
              </div>
              <div class="box">
                <h5>Agility Personnel</h5>
              	<?php dynamic_sidebar( 'footer4' ); ?>
                
              </div>
            </div>
            <div class="col-md-3">
              <div class="social-wrapper">
                  <h5>Connect With Us</h5>
                  <ul class="social-buttons">
                    <!-- <a href="#"><li class="facebook"></li></a> -->
                    <a href="https://twitter.com/AgilityJobs" target="_blank"><li class="twitter"></li></a>
                    <a href="https://www.linkedin.com/company/agility-personnel" target="_blank"><li class="linkedin"></li></a>
                  </ul>              
              </div>
            </div>
          </div> 
          <div class="col-md-12 copy-row">
              <p class="copy">&copy;<script>new Date().getFullYear()>2010&&document.write(+new Date().getFullYear());</script> Agility Personnel. All rights reserved.</p>
          </div>
        </div>
      </div>
    </footer>

</div><!-- #page -->

<?php wp_footer(); ?>
<script type="text/javascript">
      jQuery(document).ready(function() {
        jQuery('.flexslider').flexslider({
          animation: "slide",
          directionNav:false
        });
      });


      jQuery(document).ready(function() {

        jQuery( ".hamburger--spin" ).click(function() {
          jQuery( this ).toggleClass( "is-active" );
          jQuery( ".overlay" ).toggleClass( "open" );
        });


        jQuery('.white-logo').hide();

        jQuery('.hamburger--spin').on('click',function(){

          jQuery('.black-logo,.white-logo').toggle()
        });


      });


      (function($) {
    function mediaSize() {
        if (window.matchMedia('(max-width: 767px)').matches) {
        $('ul > .dropdown a').attr('data-toggle','dropdown');
        $('.dropdown-menu li a').removeAttr('data-toggle','dropdown');
        } else {
            $('.dropdown-menu .dropdown a').removeAttr('data-toggle');
            $('li.dropdown').mouseover(function(){
                $(this).addClass('open');
            });
            $('li.dropdown').mouseleave(function(){
                $(this).removeClass('open');
            });
        }
    };
  mediaSize();
    window.addEventListener('resize', mediaSize, false);  
})(jQuery);
    </script>
</body>
</html>
