<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WP_Bootstrap_Starter
 */

?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
  <!-- fonts   -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700" rel="stylesheet">
    <!-- fonts   -->
<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<div id="page" class="site">
	<a class="skip-link screen-reader-text" href="#content"><?php esc_html_e( 'Skip to content', 'wp-bootstrap-starter' ); ?></a>

	  <header id="masthead" class="home_banner" role="banner" >
      <nav class="navbar navbar-default <?php if( is_home() || is_front_page() ) : ?>home-header<?php endif; ?> navbar-fixed-top desktop-menu" id="myScrollspy">
        <div class="container">
          <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-brand">
		      	<!-- <?php if ( get_theme_mod( 'm1_logo' ) ) : ?>
		      		<a href="<?php echo esc_url( home_url( '/' )); ?>" class="site-logo"><img src="<?php echo get_theme_mod( 'm1_logo' ); ?>" height="<?php echo esc_attr(get_custom_header()->height); ?>" width="<?php echo esc_attr(get_custom_header()->width); ?>" alt="<?php esc_url(bloginfo('name')); ?>" /></a>
		       <?php else: ?>
		        	<a href="<?php echo esc_url( home_url( '/' )); ?>"><?php esc_url(bloginfo('name')); ?></a><br>
		      <?php endif; ?> -->
		      <a href="<?php echo esc_url( home_url( '/' )); ?>" class="site-logo"><img src="<?php if( is_home() || is_front_page() ) : ?><?php echo get_template_directory_uri(); ?>/images/logo.png<?php else: ?><?php echo get_template_directory_uri(); ?>/images/inner-logo.png<?php endif; ?>"></a>
		      </div>
          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          	 <?php
		            wp_nav_menu( array(
		                'theme_location'    => 'primary',
		                'depth'             => 3,
		                'container'         => '',
		                'container_class'   => '',
		        		'container_id'      => 'navbar-collapsed',
		                'menu_class'        => 'nav navbar-nav',
		                'fallback_cb'       => 'wp_bootstrap_navwalker::fallback',
		                'walker'            => new wp_bootstrap_navwalker())
		            );
		        ?>
          </div>
          <!-- /.navbar-collapse --> 
        <!-- /.container-fluid --> 
    	</nav>

        <div class="navbar <?php if( is_home() || is_front_page() ) : ?>home-header-mobile<?php endif; ?>  mobile-menu">
         <a href="<?php echo esc_url( home_url( '/' )); ?>" class="black-logo site-logo"><img src="<?php if( is_home() || is_front_page() ) : ?><?php echo get_template_directory_uri(); ?>/images/logo.png<?php else: ?><?php echo get_template_directory_uri(); ?>/images/inner-logo.png<?php endif; ?>"></a>
         <a class="white-logo site-logo" href="<?php echo esc_url( home_url( '/' )); ?>">
			<img src="<?php echo get_template_directory_uri(); ?>/images/logo.png"  alt="logo">
		</a>
          <button class="hamburger hamburger--spin js-hamburger " type="button">
            <span class="hamburger-box">
              <span class="hamburger-inner"></span>
            </span>
          </button>
        </div>
         
        <!-- Overlay Navigation Menu -->
        <div class="overlay">
          <nav class="overlay-menu">
          	<?php
		            wp_nav_menu( array(
		                'theme_location'    => 'primary',
		                'depth'             => 3,
		                'container'         => '',
		                'container_class'   => '',
		        		'container_id'      => 'navbar-collapsed',
		                'menu_class'        => 'nav navbar-nav',
		                'fallback_cb'       => 'wp_bootstrap_navwalker::fallback',
		                'walker'            => new wp_bootstrap_navwalker())
		            );
		        ?>
          </nav>
        </div>
    </header>
   

	<div id="content" class="site-content">
		<div class="container-fluid">
			
