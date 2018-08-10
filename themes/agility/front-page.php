<?php
/**
* Template Name: front-page
 */

get_header(); ?>

<!--page contentrs starts here-->
<section class="banner-slider">
      <div class="flexslider">
         <ul class="slides">
            <?php
            $args = array( 'posts_per_page' => 5,'post_type' =>'home_banner','post_status'=> 'publish','orderby' => 'date','order' => 'ASC');
            $bannerposts = get_posts( $args );
            foreach ( $bannerposts as $bpost ) : setup_postdata( $bpost );
            $bannerimg = wp_get_attachment_url( get_post_thumbnail_id($bpost->ID) );
            $custom=get_post_custom($bpost->ID);?>
            
            
            <li>
                <div class="bannerfill" style="background:url('<?php echo $bannerimg;?>') no-repeat scroll center center / cover ;">
                    <div class="banner-text">
                        <span class="first-line-banner"><?php echo $custom['title'][0];?></span>                	
                    	<p class="sub-text"><?php echo $custom['content'][0];?></p>
                    	<a href="<?php echo $custom['link'][0];?>" class="banner-button">explore jobs</a>
                    </div>                    
                </div>
            </li>                
            <?php endforeach; 
            wp_reset_postdata();?>
        </ul>
    </div>
</section>

<!--banner ends here-->
<!-- search section -->
   <section class="search-section">
     <div class="container">
      <div class="col-md-10 col-centered">
        <div class="row">
          <div class="col-md-8 job-border">
            <div class="wrapper">
            <div class="sec-title"><h1>featured job opportunities</h1></div>
            <div class="job-list">
                <?php
                    $args = array(
                      'type'                     => 'jobs',
                      'child_of'                 => 53,
                      'parent'                   => '',
                      'orderby'                  => 'title',
                      'order'                    => 'name',
                      'hide_empty'               => 1,
                      'hierarchical'             => 1,
                      'exclude'                  => '',
                      'include'                  => '',
                      'number'                   => '10',
                      'taxonomy'                 => 'job_search',
                      'pad_counts'               => false );
                    $categories = get_categories($args);

                    echo '<ul>';

                    foreach ($categories as $category) {
                        $url = get_term_link($category);?>
                        <li><a href="<?php echo $url;?>"><?php echo $category->name; ?> (<?php echo $category->count; ?>)</a></li>
                    <?php
                    }
                    echo '</ul>';
                    ?>

                  

                <a href="<?php echo esc_url( home_url( '/' )); ?>jobs" class="more">more Jobs</a>
            </div>
          </div>
        </div>
          <!-- <div class="col-md-4 location-border">
            <div class="wrapper">
             <div class="sec-title"><h1>browse by location</h1></div>
             <div class="job-location">
              <?php
                    $args = array(
                      'type'                     => 'jobs',
                      'child_of'                 => 9,
                      'parent'                   => '',
                      'orderby'                  => 'name',
                      'order'                    => 'ASC',
                      'hide_empty'               => 0,
                      'hierarchical'             => 1,
                      'exclude'                  => '',
                      'include'                  => '',
                      'number'                   => '0',
                      'taxonomy'                 => 'jobs_category',
                      'pad_counts'               => false );
                    $categories = get_categories($args);

                    echo '<ul>';

                    foreach ($categories as $category) {
                        $url = get_term_link($category);?>
                        <li><a href="<?php echo $url;?>"><?php echo $category->name; ?></a></li>
                    <?php
                    }
                    echo '</ul>';
                    ?> 
              <a href="<?php echo esc_url( home_url( '/' )); ?>jobs" class="more">more locations</a>
             </div>
           </div>
          </div> -->
          <div class="col-md-4 join-border">
            <div class="wrapper">
             <div class="sec-title">
              <img src="<?php echo get_template_directory_uri(); ?>/images/talent.png"><br/><br/>
              <?php the_content();?>
              <a href="#" class="join-button">register now</a>
             </div>
           </div>
          </div>
        </div>
      </div>
     </div> <!-- container -->
   </section>
   <!-- search section -->
    

  <!-- subscribe section -->
  <section class="subscribe-section">
    <div class="container">
      <div class="wrapper-subscribe">
        <h2>sign-up to get free job alerts by email </h2>
        <div id="content">
          <?php echo do_shortcode('[contact-form-7 id="4" title="subscribe"]'); ?>
        </div>

      </div>
    </div> 
  </section>
  <!-- subscribe section -->



<?php
get_footer();
