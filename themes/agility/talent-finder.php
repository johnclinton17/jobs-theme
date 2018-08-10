<?php
/**
* Template Name: talent finder
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
        	<div class="col-sm-12 col-sm-12 innerbannertext"></div>

        </div>
    </div>
</section>
<!-- breadcrumps -->
<section class="breadcrumps">
  <div class="container">
    <div class="breadcrumps-wrapper">
      <ul class="breadcrumps-list">
       <li><a href="<?php echo esc_url( home_url( '/' )); ?>">Home </a></li>
       <li><a href="javascript:void(0)">Companies </a></li>
        <li><?php the_title(); ?></li>
      </ul>
    </div>
  </div>
</section>
<!-- breadcrumps -->

<section class="title-row">
	<div class="container">
		<div class="about-contact">
			<?php the_content();?>
		</div>
	</div>
</section>

<section class="form-columns">
	<div class="container">
		<div class="col-md-10 form-left">
			<div class="row">
				<div class="wrapper">
					<?php echo do_shortcode('[contact-form-7 id="98" title="talent finder"]'); ?>
				</div>
			</div>
		</div>
	</div>
</section>



<?php endwhile; // end of the loop. ?>	
<?php
get_footer();
