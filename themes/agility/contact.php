<?php
/**
* Template Name: contact us
 */

get_header(); ?>

<?php while ( have_posts() ) : the_post();
$featureimg= wp_get_attachment_url( get_post_thumbnail_id($post->ID) );
$custom=get_post_custom($post->ID);
$page_title = $post->post_name;
?>

<section class="innerbanner" style="background:url('<?php echo $featureimg ?>') no-repeat fixed center top /cover	;"> 
	<div class="container">
    	<div class="row"> 
        	<div class="col-sm-12 col-sm-12 innerbannertext"><?php the_content(); ?> </div>

        </div>
    </div>
</section>
<!-- breadcrumps -->
<section class="breadcrumps">
  <div class="container">
    <div class="breadcrumps-wrapper">
      <ul class="breadcrumps-list">
       <li><a href="<?php echo esc_url( home_url( '/' )); ?>">Home </a></li>
        <li><?php the_title(); ?></li>
      </ul>
    </div>
  </div>
</section>
<!-- breadcrumps -->

<section class="title-row">
	<div class="container">
		<div class="about-contact">
			<h3>Have questions?</h3>
			<h4>We have the answers. Contact us for a swift reply!</h4>
		</div>
	</div>
</section>

<section class="form-columns">
	<div class="container">
		<div class="col-md-6 form-left">
			<div class="row">
				<h3>Submit an Enquiry</h3>
				<div class="wrapper">
					<?php echo do_shortcode('[contact-form-7 id="69" title="contact"]'); ?>
				</div>
			</div>
		</div>
		<div class="col-md-6 map-right">
			<div class="row">
				<h3>Contact Us</h3>
				<p>Agility Personnel<br>32238 Paseo Adelanto Ste. D<br>San Juan Capistrano, CA 92675</p>
				<a href="mailto:agilityjobs@agilitypersonnel.com" class="mailto">agilityjobs@agilitypersonnel.com</a>
				<div class="map-div">
					<img src="<?php echo get_template_directory_uri(); ?>/images/map.png">
				</div>
				<div class="socialrow">
					<ul class="social-buttons">
                    <a href="#"><li class="facebook"></li></a>
                    <a href="#"><li class="twitter"></li></a>
                    <a href="#"><li class="linkedin"></li></a>
                  </ul>
				</div>

			</div>
		</div>


	</div>
</section>



<?php endwhile; // end of the loop. ?>	
<?php
get_footer();
