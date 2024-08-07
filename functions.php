<?php
/*
 *  GLOBAL VARIABLES
 */
define('THEME_DIR', get_stylesheet_directory());
define('THEME_URL', get_stylesheet_directory_uri());
/*
 *  INCLUDED FILES
 */
$file_includes = [
    'inc/theme-assets.php',                 // Style and JS
    'inc/theme-setup.php',                  // General theme setting
    'inc/acf-options.php',                  // ACF Option page
    'inc/duplicate.php',              // Dupplicate Post 
    'inc/cpt-project.php',              // CPT Projects            
];
foreach ($file_includes as $file) {
    if (!$filePath = locate_template($file)) {
        trigger_error(sprintf(__('Missing included file'), $file), E_USER_ERROR);
    }
    require_once $filePath;
}
unset($file, $filePath);
// //404
// add_action('wp', 'redirect_404_to_homepage', 1);
// function redirect_404_to_homepage()
// {
//     global $wp_query;
//     if ($wp_query->is_404) {
//         wp_redirect(get_bloginfo('url') . '/loi-404', 301);
//         exit;
//     }
// }

// Customize Menu Wordpress
add_filter('walker_nav_menu_start_el', 'append_da_damn_hover_popup', 15, 2);
function append_da_damn_hover_popup($item_output, $item) {
    $check_mega_1 = get_field('item_menu_has_thumbnail_cs', $item);
    if($check_mega_1 == true){
        // if there's no content, just return the <a> directly
        $list_pages = get_field('list_page_show_in_menu', $item);
        if (! get_field('list_page_show_in_menu', $item)) {
            return $item_output;
        }
        if( $list_pages ): 
            $mega = '<div class="mega-popup fade-in-bottom-item-menu">';
            $mega .= '<div class="mega-popup-contain">';
            $mega .= '<div class="mega-row">';
            foreach( $list_pages as $featured_post ): 
                $permalink = get_permalink( $featured_post->ID );
                $title = get_the_title( $featured_post->ID );
                $url_thumb_post = get_the_post_thumbnail_url( $featured_post->ID );
                $desc_post = get_field("excerpt_page_mc_cs",$featured_post->ID);
                
                if( $title ) {
                    $mega .= '<a href='. $permalink.' class="mega-item">';
                    $mega .= '<div class="detail-row">';
                    $mega .= '<div class="mega-item-thumb">';
                    $mega .= '<img src='. $url_thumb_post.' alt='. $url_thumb_post.' />';
                    $mega .= '</div>';
                    $mega .= '<div class="title-and-desc-item-menu">';
                    $mega .= '<div class="mega-item-title">';
                    $mega .= $title;
                    $mega .= '</div>';
                    $mega .= '<div class="mega-item-desc">';
                    $mega .= $desc_post;
                    $mega .= '</div>';
                    $mega .= '</div>';
                    $mega .= '</div>';
                    $mega .= '</a>';
                }
            endforeach;
            $mega .= '</div>';
            $mega .= '</div>';
            $mega .= '</div>';
        endif;  
        return $item_output.$mega;
    }else{
        return $item_output;
    }
}
function my_theme_archive_title( $title ) {
	if ( is_category() ) {
		$title = single_cat_title( '', false );
	} elseif ( is_tag() ) {
		$title = single_tag_title( '', false );
	} elseif ( is_author() ) {
		$title = '<span class="vcard">' . get_the_author() . '</span>';
	} elseif ( is_post_type_archive() ) {
		$title = post_type_archive_title( '', false );
	} elseif ( is_tax() ) {
		$title = single_term_title( '', false );
	}
 
	return $title;
}

add_filter( 'get_the_archive_title', 'my_theme_archive_title' );