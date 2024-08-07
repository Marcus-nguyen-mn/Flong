<?php
/**
 * template name: Home Page
 */
get_header();
?>
<?php 
    get_template_part('sections/home/section-1'); 
?>
<div class="mc_para_main">
    <?php 
        get_template_part('sections/home/section-2'); 
        get_template_part('sections/home/section-3'); 
        get_template_part('sections/home/section-4'); 
        get_template_part('sections/home/section-5'); 
        get_template_part('sections/home/section-6'); 
        get_template_part('sections/home/section-7');
        get_template_part('sections/home/section-8');
        get_template_part('sections/home/section-9');
        get_template_part('sections/home/section-10');
    ?>
</div>
    
    
    
    
    
    
<?php get_footer();?>