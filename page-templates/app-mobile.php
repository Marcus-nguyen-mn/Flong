<?php
/**
 * template name: App Mobile Service
 */
get_header();
?>
<?php 
    get_template_part('sections/app-mobile/section-1'); 
?>
<div class="mc_ser_main">
    <?php 
        get_template_part('sections/app-mobile/section-2'); 
        get_template_part('sections/app-mobile/section-3'); 
        get_template_part('sections/app-mobile/section-4'); 
        get_template_part('sections/app-mobile/section-5'); 
        get_template_part('sections/app-mobile/section-7'); 
    ?>
</div>
<?php get_footer();?>