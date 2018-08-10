<?php
/*
 * The template for displaying all single posts and attachments
 */
$deserve_options = get_option('deserve_theme_options');
$custom=get_post_custom($bpost->ID);
get_header();
?>

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
        <li><?php the_title(); ?></li>
      </ul>
    </div>
  </div>
</section>
<!-- breadcrumps -->

<section class="search-content simliar-jobs">
	
	 <div class="container">
     <div class="job-details">
     	<div class="left-box">
     		<div class="wrapper">
	     		<div class="job-head">
		            <div class="left-side">
		              <div class="job-title"><?php the_title(); ?> </div>
		              <div class="job-comapany"><!-- <?php echo $custom['company_name'][0];?> -->Agility Personnel  </div>
		            </div>
		            <div class="job-posted"><?php echo human_time_diff( get_the_time('U'), current_time('timestamp') ) . ' ago'; ?></div>
		        </div>  
				<div class="job-footer">
	                
	                  <div class="experience"><?php echo $custom['year_of_experience'][0];?> </div>
	                  <div class="job-location"><?php echo $custom['country'][0];?> </div>
	               	
	                <!-- <div class="share" >share </div> -->
	                <div class="share">
	                  <span>Share</span>
	                  <nav>

	                    <a class="customer-share" href="https://twitter.com/intent/tweet?text=<?php the_title(); ?> - <?php the_permalink(); ?>" title="Tweet this!"><i class="fa fa-twitter"></i></a>

	                    <a class="customer-share" href="http://www.facebook.com/sharer.php?u=<?php the_permalink();?>&amp;t=<?php the_title(); ?>" title="Facebook share" target="_blank" ><i class="fa fa-facebook"></i></a>

	                    <a class="customer-share" href="http://www.linkedin.com/shareArticle?mini=true&amp;title=<?php the_title(); ?>&amp;url=<?php the_permalink(); ?>" title="Share on LinkedIn"><i class="fa fa-linkedin"></i></a>
	                    <a class="customer-share" href="https://plus.google.com/share?url=<?php the_permalink(); ?>" ><i class="fa fa-google"></i></a>
	                  
	                  </nav>
	                </div>
	                <div class="apply-inner">
	                	<a class="post-button" href="javascript:void(0)" data-toggle="modal" data-target="#formModal" data-id ='<?php the_title(); ?>'>apply now</a>
	                </div>


				</div>
				<div class="job-body">
				</div>
				<div class="job-desc">
					<h5>Job Description</h5>
					<?php while ( have_posts() ) : the_post(); ?>
					<?php the_content(); ?>
				<?php endwhile;?>
				</div>
	        </div> 
     	</div>
     	<div class="right-box">
     			<div class="wrapper">
     				<div class="cat-list"><h5>Industry</h5><p><?php echo $custom['industry'][0];?></p></div>
     				<hr>
     				<div class="cat-list"><h5>Title</h5><p><?php echo $custom['title'][0];?></p></div>
     				<hr>
     				<div class="cat-list"><h5>Education</h5><p><?php echo $custom['education'][0];?></p></div>
     				<hr>
     				<div class="cat-list"><h5>Posted On</h5><p><?php echo get_the_date('d M Y'); ?></p></div>
     			</div>
     	</div>

     </div>
    <!-- jobs listing -->
      <div class="col-md-9 pad-left-0">
        <div class="">

          <div class="cat-title"><h1>View Similar Jobs</h1></div>
          <!-- post card -->

          <?php

			// You might need to use wp_reset_query(); 
			// here if you have another query before this one

			global $post;

			$current_post_type = get_post_type( $post );

			// The query arguments
			$args = array(
			    'posts_per_page' => 3,
			    'order' => 'DESC',
			    'orderby' => 'ID',
			    'post_type' => $current_post_type,
			    'post__not_in' => array( $post->ID )
			);

			// Create the related query
			$rel_query = new WP_Query( $args );

			// Check if there is any related posts
			if( $rel_query->have_posts() ) : 
			?>

			<?php while ( $rel_query->have_posts() ) : $rel_query->the_post(); ?>
			       <div class="job-card">   
			        	<div class="job-head">
			                <div class="left-side">
			                  <div class="job-title"><a href="<?php echo get_permalink(); ?>"> <?php the_title(); ?>  </a></div>
			                  <div class="job-comapany"><?php echo $custom['company_name'][0];?>  </div>
			                </div>
			                <div class="job-posted"><?php echo human_time_diff( get_the_time('U'), current_time('timestamp') ) . ' ago'; ?></div>
			              </div>   
			               <div class="job-body">
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
			    	</div>

			<?php endwhile; ?>
			<?php endif;wp_reset_query();?>


			<!-- similiar post by cat <?php

			$customTaxonomyTerms = wp_get_object_terms( $post->ID, 'job_search', array('fields' => 'ids') );

			$args = array(
			    'post_type' => 'jobs',
			    'post_status' => 'publish',
			    'posts_per_page' => 3,
			    'orderby' => 'rand',
			    'tax_query' => array(
			        array(
			            'taxonomy' => 'job_search',
			            'field' => 'id',
			            'terms' => $customTaxonomyTerms
			        )
			    ),
			    'post__not_in' => array ($post->ID),
			);

			$relatedPosts = new WP_Query( $args );

			if($relatedPosts->have_posts()){
			    while($relatedPosts->have_posts()){ 
			        $relatedPosts->the_post();?>
			        <div class="job-card">   
			        	<div class="job-head">
			                <div class="left-side">
			                  <div class="job-title"><a href="<?php echo get_permalink(); ?>"> <?php the_title(); ?>  </a></div>
			                  <div class="job-comapany"><?php echo $custom['company_name'][0];?>  </div>
			                </div>
			                <div class="job-posted"><?php echo human_time_diff( get_the_time('U'), current_time('timestamp') ) . ' ago'; ?></div>
			              </div>   
			               <div class="job-body">
				              </div>
				              <div class="job-footer">
				                <div class="left-side">
				                  <div class="experience"><?php echo $custom['year_of_experience'][0];?> </div>
				                  <div class="job-location"><?php echo $custom['country'][0];?> </div>
				                </div>
				                <div class="share">share </div>
				                 <div class="share">
				                  <span>Share</span>
				                  <nav>
				                    <a href=""><i class="fa fa-twitter"></i></a>
				                    <a href="#" target="blank"><i class="fa fa-facebook"></i></a>
				                    <a href="#"><i class="fa fa-google"></i></a>
				                  
				                  </nav>
				                </div>
				              </div>
			    	</div>
			<?php
			    }
			    
			}else{
			    //no posts found
			  // echo ('no post') ;
			}

			//restore original post data
			wp_reset_postdata();

			?> -->
        </div>
      </div>  
    <!-- jobs listing -->    
    <!-- sidebar   -->
      <div class="col-md-3 subscribe" >
        <div class="wrapper" >
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
    <!-- sidebar   -->
    <!-- Modal -->
		<div class="modal fade" id="formModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h2 class="modal-title" id="exampleModalLabel">Apply Now - <span class="job-title-popup"></span></h2><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <?php echo do_shortcode('[contact-form-7 id="46" title="apply form"]'); ?>
		      </div>
		    </div>
		  </div>
		</div>
  </div><!--conatainer-->  
</section>
<script type="text/javascript">
		

		jQuery(".post-button").on('click',function() {
		var tex = jQuery(this).data('id');
		jQuery(".job-title-popup").text(tex);       
		});

		jQuery(".close").on('click',function() {
			jQuery('form')[0].reset();
		// jQuery("input:text[name='jobtitle']").val(null);       
		});

		jQuery(document).ready(function(){
		  //allow only text
		    jQuery(".name1,.state1,.city1").keypress(function(event){
		        var inputValue = event.charCode;
		        if(!(inputValue >= 65 && inputValue <= 120) && (inputValue != 32 && inputValue != 0)){
		            event.preventDefault();
		        }
		    });

		    //allow only numbers
		  jQuery(".phone1").keypress(function(event) {
		  return /\d/.test(String.fromCharCode(event.keyCode));
		  });

		   jQuery('.close').on('click', function() {
		        jQuery('form')[0].reset();
		        jQuery('.name1,.email1,.phone1,.city1,.state1,.resume').val("");
		        jQuery('.wpcf7-not-valid-tip').remove();
		        jQuery('.wpcf7-response-output').remove();
		        
		    });

		});


</script>
<script src="<?php echo get_template_directory_uri(); ?>/js/social-share.js"></script>
<?php get_footer(); ?>