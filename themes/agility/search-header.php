
<?php
/**
 * The template for displaying all pages.
 * Template Name: search-header
 * This is the template that displays all pages by default.
 */
?>
<section class="search-band">
  <div class="container">
      <div class="search-wrapper">
      <form method="get" action="<?php echo get_site_url(); ?>/jobs" name="searchform" id="searchform">
          <input class="title" type="text" name="job_title" placeholder="Job title, skills" value="<?php  if(isset($_GET['job_title']) && $_GET['job_title']!='' ) { echo $_GET['job_title'];  } ?>">
          <input class="location" type="text" name="location" placeholder="Location" value="<?php  if(isset($_GET['location']) && $_GET['location']!='' ) { echo $_GET['location'];  } ?>">
          <button type="submit" class="search-button" href="javascript:void(0)">search  jobs</button>
          </form>
      </div> 
  </div>
</section>