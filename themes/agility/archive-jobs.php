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
        <li><a href="<?php echo esc_url( home_url( '/' )); ?>jobs">Jobs</a></li>
      </ul>
    </div>
  </div>
</section>
<!-- breadcrumps -->
<section class="search-content">
  <div class="container">
     
    <!-- jobs listing -->
      <div class="col-md-9 pad-left-0">
        <div class="">
          <div class="cat-title"><h1>Jobs</h1></div>
         
          <!-- post card -->
      
          <?php
          $arg1 = array('post_type' => 'jobs', 'post_status' => "publish",'posts_per_page' => -1);

          $paged = get_query_var('paged') ? get_query_var('paged') : 1;
          $arg = array('post_type' => 'jobs', 'post_status' => "publish",'posts_per_page' => 10, 'paged' => $paged );
          if (isset($_GET['job_title']) && $_GET['job_title']!='' ) {
           
          $arg['s'] = $_GET['job_title'];
          $arg1['s'] = $_GET['job_title'];
        
          }
          if (isset($_GET['location']) && $_GET['location']!='' ) {
            $arg['meta_query'] = array(
              'relation' => 'OR',
               array(
                  'key' => 'country',
                  'value' => $_GET['location'],
                  'compare' => 'LIKE',
               ));
               $arg1['meta_query'] = array(
                'relation' => 'OR',
                 array(
                    'key' => 'country',
                    'value' => $_GET['location'],
                    'compare' => 'LIKE',
                 ));
          }
  
$the_query = new WP_Query($arg);
$the_query1 = new WP_Query($arg1);
 //print_r($arg);
if ( $the_query->have_posts() ) {
  
	// no posts found
?>
 
 <div class="show-result">Showing  <?php if($paged == 1) {  echo 1; } else { echo $paged*10-10; }  ?> - <?php  if(count($the_query->posts)>=10) {  echo  10*$paged;     } else { echo $paged*10+count($the_query->posts)-10; } ?> of  <?php echo count($the_query1->posts); ?> jobs</div>

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
                    <div class="post-excerpt"><?php echo wp_trim_words( get_the_excerpt(), 20, '...' ); ?></div>
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

                      <a class="customer-share" href="https://twitter.com/intent/tweet?text=<?php the_title(); ?> - <?php the_permalink(); ?>" title="Tweet this!"><i class="fa fa-twitter"></i></a>

                      <a class="customer-share" href="http://www.facebook.com/sharer.php?u=<?php the_permalink();?>&amp;t=<?php the_title(); ?>" title="Facebook share" target="_blank" ><i class="fa fa-facebook"></i></a>

                      <a class="customer-share" href="http://www.linkedin.com/shareArticle?mini=true&amp;title=<?php the_title(); ?>&amp;url=<?php the_permalink(); ?>" title="Share on LinkedIn"><i class="fa fa-linkedin"></i></a>
                      <a class="customer-share" href="https://plus.google.com/share?url=<?php the_permalink(); ?>" ><i class="fa fa-google"></i></a>
                    
                    </nav>
                  </div>
              </div>
          </div><!-- job-card -->
          <!-- post card -->
          <?php wp_reset_postdata(); ?>   
          
          <?php } } else {  echo ' <div class="job-card">   Sorry! No job matches. Please search other keywords </div>'; }  ?>  
        
          <?php wp_pagenavi(array( 'query' => $the_query )); ?>

        </div>
      </div>  
    <!-- jobs listing -->    
    <!-- sidebar   -->
      <div class="col-md-3 subscribe" >
        <div class="wrapper" data-spy="affix" data-offset-top="340">
          <h4>Get jobs alerts</h4>
          <h5>on your emails </h5>
          <div class="subscribe-form">
          
     <?php echo do_shortcode('[contact-form-7 id="41" title="job alerts"]'); ?>
           <!-- <form >
              <p><span class="wpcf7-form-control-wrap email"><input type="email" name="email" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email email-sub" aria-required="true" aria-invalid="false" placeholder="Email Address"></span><br>
              <input type="submit" value="subscribe" class="wpcf7-form-control wpcf7-submit subscribe-button"><span class="ajax-loader"></span></p>
            </form>-->
          </div>
        </div>
      </div>
    <!-- sidebar   -->

  </div><!--conatainer-->  
</section>

<!-- service end -->
<script src="<?php echo get_template_directory_uri(); ?>/js/social-share.js"></script>
<?php get_footer(); ?>


