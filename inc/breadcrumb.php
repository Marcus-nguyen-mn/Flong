<?php
   function custom_breadcrumb() {
        // SVG icon trước "Trang chủ"
        $home_icon = '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"><path d="M14.25 19.5V15C14.25 14.801 14.171 14.6103 14.0303 14.4696C13.8897 14.329 13.6989 14.25 13.5 14.25H10.5C10.3011 14.25 10.1103 14.329 9.96967 14.4696C9.82902 14.6103 9.75 14.801 9.75 15V19.5C9.75 19.6989 9.67098 19.8896 9.53033 20.0303C9.38968 20.1709 9.19891 20.25 9 20.25H4.5C4.30109 20.25 4.11032 20.1709 3.96967 20.0303C3.82902 19.8896 3.75 19.6989 3.75 19.5V10.8281C3.75168 10.7243 3.77411 10.6219 3.81597 10.5269C3.85783 10.4319 3.91828 10.3462 3.99375 10.275L11.4937 3.45933C11.632 3.33284 11.8126 3.2627 12 3.2627C12.1874 3.2627 12.368 3.33284 12.5062 3.45933L20.0062 10.275C20.0817 10.3462 20.1422 10.4319 20.184 10.5269C20.2259 10.6219 20.2483 10.7243 20.25 10.8281V19.5C20.25 19.6989 20.171 19.8896 20.0303 20.0303C19.8897 20.1709 19.6989 20.25 19.5 20.25H15C14.8011 20.25 14.6103 20.1709 14.4697 20.0303C14.329 19.8896 14.25 19.6989 14.25 19.5Z" stroke="#F3551E" stroke-linecap="round" stroke-linejoin="round"/></svg>';
        
        // Bắt đầu breadcrumb
        echo '<nav class="breadcrumb d-flex align-items-center gap-2 mb-0">';
        echo '<a href="' . home_url() . '" class=" d-flex align-items-center gap-2">' . $home_icon . ' Trang chủ</a>';

        if (is_page()) {
            echo ' / ' . get_the_title();
        } elseif (is_single()) {
            $categories = get_the_category();
            if (!empty($categories)) {
                echo ' / <a href="' . esc_url(get_category_link($categories[0]->term_id)) . '">' . esc_html($categories[0]->name) . '</a>';
            } else {
                $post_type = get_post_type_object(get_post_type());
                echo ' / <a href="' . get_post_type_archive_link($post_type->name) . '">' . esc_html($post_type->label) . '</a>';
            }
            echo ' / ' . get_the_title();
        } elseif (is_category()) {
            echo ' / ' . single_cat_title('', false);
        } elseif (is_archive()) {
            $post_type = get_post_type_object(get_post_type());
            if ($post_type) {
                echo ' / ' . esc_html($post_type->label);
            } else {
                echo ' / ' . get_the_archive_title();
            }
        }

        echo '</nav>';
    }
?>