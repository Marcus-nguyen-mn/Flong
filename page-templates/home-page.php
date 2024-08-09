<?php
/**
 * template name: Home Page
 */
get_header();
?>

<?php 
    get_template_part('sections/home/section-1'); 
    get_template_part('sections/home/section-2'); 
    get_template_part('sections/home/section-3'); 
    get_template_part('sections/home/section-4');
    get_template_part('sections/home/section-5'); 
    get_template_part('sections/home/section-6');
    get_template_part('sections/home/section-7'); 
?>
<?php get_footer();?>