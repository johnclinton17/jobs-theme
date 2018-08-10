<?php
/**
* Template Name: About us
 */

get_header(); ?>

<?php while ( have_posts() ) : the_post();
$featureimg= wp_get_attachment_url( get_post_thumbnail_id($post->ID) );
$custom=get_post_custom($post->ID);
$page_title = $post->post_name;
?>

<section class="innerbanner" style="background:url('<?php echo $featureimg ?>') no-repeat fixed center center /cover	;"> 
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
        <li><a href="#">What We Do</a></li>
        <li><?php the_title(); ?></li>
      </ul>
    </div>
  </div>
</section>
<!-- breadcrumps -->
<section class="about-section">
	<div class="container">
		<div class="col-md-6 col-sm-6 col-xs-12 about-content">
			<div class="row">
				<?php the_field('about_content');?>
			</div>
		</div>
		<div class="col-md-6 col-sm-6 col-xs-12 about-image">
			<div class="row">
				<img src="<?php the_field('image');?>">
			</div>
		</div>		
	</div>	
</section>

<section class="about-getintouch">
	<div class="container">
		<div class="wrapper">
			<?php the_field('get_in_touch');?>
		</div>
	</div>
</section>



<?php endwhile; // end of the loop. ?>	
<?php
get_footer();
