<?php
/**
 * template name: Website Service
 */
get_header();
?>
<?php 
    get_template_part('sections/website/section-1'); 
?>
<div class="mc_ser_main">
    <?php 
        get_template_part('sections/website/section-2'); 
        get_template_part('sections/website/section-3'); 
        get_template_part('sections/website/section-4'); 
        get_template_part('sections/website/section-5'); 
        get_template_part('sections/website/section-6'); 
        get_template_part('sections/website/section-7'); 
        get_template_part('sections/website/section-8'); 
    ?>
</div>
<?php get_footer();?>