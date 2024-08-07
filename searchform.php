<?php
/**
 * Template for displaying search forms in Phòng Khám Đa Khoa Phương Nam
 *
 */
?>

<form role="search" method="get" class="search_form_footer" action="<?php echo esc_url( home_url( '/' ) ); ?>">                                 		
     <div class="search_form_page_wrap">
        <input type="search" id="search_field_2" class="search-field search_field_form_page_footer search_field_form_page_search_page_only" placeholder="Điền từ khóa" value="<?php echo get_search_query(); ?>" name="s" />
        <button type="submit" class="search_submit_page_footer search_submit_page_search_page"><i class="fa fa-search"></i></button>
     </div>
</form>
