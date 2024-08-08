<?php
function custom_pagination($query) {
    $big = 999999999; // need an unlikely integer

    echo paginate_links(array(
        'base'      => str_replace($big, '%#%', esc_url(get_pagenum_link($big))),
        'format'    => '?paged=%#%',
        'current'   => max(1, get_query_var('paged')),
        'total'     => $query->max_num_pages,
        'type'      => 'list', // Đặt phân trang thành dạng list để dễ thêm class
        'prev_text' => __('<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none"><path d="M12.5 3.74988L6.25 9.99988L12.5 16.2499" stroke="#5A5A5A" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/></svg>', 'textdomain'),
        'next_text' => __('<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none"><path d="M7.5 3.74988L13.75 9.99988L7.5 16.2499" stroke="#5A5A5A" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/></svg>', 'textdomain'),
        'before_page_number' => '<span class="my-custom-class">', // Thêm class cho số trang
        'after_page_number'  => '</span>',
        'mid_size'  => 2,
    ));
}
?>