<?php
/**
 * The template for displaying archive pages
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WP_Bootstrap_Starter
 */

get_header(); ?>

<!-- SEARCH -->
<?php
  
    // Include the featured content template.
    get_template_part( 'search-header' );

?>
<!-- SEARCH -->
<!-- breadcrumps -->
<section class="breadcrumps">
  <div class="container">
    <div class="breadcrumps-wrapper">
      <ul class="breadcrumps-list">
        <li><a href="<?php echo esc_url( home_url( '/' )); ?>">Home </a></li>
        <li><a href="<?php echo esc_url( home_url( '/' )); ?>jobs/">Job Search </a></li>
        <li><?php single_term_title(); ?></li>
      </ul>
    </div>
  </div>
</section>
<!-- breadcrumps -->
<?php

$term = get_term_by( 'slug', get_query_var( 'term' ), get_query_var( 'taxonomy' ) );

$paged = get_query_var('page') ? get_query_var('page') : 1;


$args = array(
  'post_type' => 'jobs','post_status' => "publish",'posts_per_page' => 10,'paged' => $paged, /*Post type (plays)*/
  'tax_query' => array(
      array(
          'taxonomy' => 'job_search', /*Taxonomy to search (genre)*/
          'field'    => 'slug',
          'terms'    => $term->slug, /*Search category for (comedy)*/
      ),
  ),
);
$args1 = array(
  'post_type' => 'jobs','post_status' => "publish",'posts_per_page' => -1,'paged' => $paged, /*Post type (plays)*/
  'tax_query' => array(
      array(
          'taxonomy' => 'job_search', /*Taxonomy to search (genre)*/
          'field'    => 'slug',
          'terms'    => $term->slug, /*Search category for (comedy)*/
      ),
  ),
);
$the_query1 = new WP_Query($args1);
$the_query = new WP_Query($args);
?>




<section class="search-content">
  <div class="container">
     
    <!-- jobs listing -->
      <div class="col-md-9 pad-left-0">
        <div class="">
          <div class="cat-title"><h1><?php single_term_title(); ?></h1></div>

<?php  if ( $the_query->have_posts() ) { ?>


          
          <div class="show-result">Showing  <?php if($paged == 1) {  echo 1; } else { echo $paged*10-10; }  ?> - <?php  if(count($the_query->posts)>=10) {  echo  10*$paged;     } else { echo $paged*10+count($the_query->posts)-10; } ?> of  <?php echo count($the_query1->posts); ?> jobs</div>
          <!-- post card -->
          <?php	while ( $the_query->have_posts() ) {
            
            $the_query->the_post();
            $custom= get_post_custom($bpost->ID);
            //print_r($custom);
         ?>
          <div class="job-card">          
              <div class="job-head">
                <div class="left-side">
                  <div class="job-title"><a href="<?php echo get_permalink(); ?>"> <?php the_title(); ?>  </a></div>
                  <div class="job-comapany"><?php echo $custom['company_name'][0];?>  </div>
                </div>
                <div class="job-posted"><?php echo human_time_diff( get_the_time('U'), current_time('timestamp') ) . ' ago'; ?></div>
              </div>
              <div class="job-body">
                    <div class="post-excerpt"><?php the_excerpt(); ?></div>
                    <div class="apply-div"><a class="post-button" href="<?php echo get_permalink(); ?>" >apply</a></div>
              </div>
              <div class="job-footer">
                <div class="left-side">
                  <div class="experience"><?php echo $custom['year_of_experience'][0];?> </div>
                  <div class="job-location"><?php echo $custom['country'][0];?> </div>
                </div>
                <!-- <div class="share">share </div> -->
                <div class="share">
                  <span>Share</span>
                  <nav>
                    <a href=""><i class="fa fa-twitter"></i></a>
                    <a href="#" target="blank"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-google"></i></a>
                  </nav>
                </div>
              </div>
          </div><!-- job-card -->
          <!-- post card -->
          <?php wp_reset_postdata(); ?>   
          <?php } }  ?>  
          <?php  wp_pagenavi(array('query' => $the_query  )); ?>
          
        </div>
      </div>  
    <!-- jobs listing -->    
    <!-- sidebar   -->
      <div class="col-md-3 subscribe" >
        <div class="wrapper" data-spy="affix" data-offset-top="340">
          <h4>Get jobs alerts</h4>
          <h5>on your emails </h5>
          <div class="subscribe-form">
             <!--<?php echo do_shortcode('[contact-form-7 id="41" title="job alerts"]'); ?>-->
            <form >
              <p><span class="wpcf7-form-control-wrap email"><input type="email" name="email" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email email-sub" aria-required="true" aria-invalid="false" placeholder="Email Address"></span><br>
              <input type="submit" value="subscribe" class="wpcf7-form-control wpcf7-submit subscribe-button"><span class="ajax-loader"></span></p>
            </form>
          </div>
        </div>
      </div>
    <!-- sidebar	 -->

  </div><!--conatainer-->  
</section>


<script src="<?php echo get_template_directory_uri(); ?>/js/social-share.js"></script>
<!-- service end -->
<?php get_footer(); ?>


