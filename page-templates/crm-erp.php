<?php
/**
 * template name: CRM/ERP Service
 */
get_header();
?>
<?php 
    get_template_part('sections/crm-erp/section-1'); 
?>
<div class="mc_ser_main">
    <?php 
        get_template_part('sections/crm-erp/section-2'); 
        get_template_part('sections/crm-erp/section-3'); 
        get_template_part('sections/crm-erp/section-4'); 
        get_template_part('sections/crm-erp/section-5'); 
        get_template_part('sections/crm-erp/section-6'); 
        get_template_part('sections/crm-erp/section-7'); 
    ?>
</div>
<?php get_footer();?>