<?php 
function create_post_type($title,$name,$slug,$support){
    $labels = array(
        'name' => $title,
        'singular_name' => $title,
        'add_new' => 'Thêm mới',
        'add_new_item' => 'Thêm mới',
        'edit_item' => 'Chỉnh sửa '.$title,
        'new_item' => 'Mới '.$title,
        'all_items' => 'Tất cả '.$title,
        'view_item' => 'Xem '.$title,
        'search_items' => 'Tìm kiếm '.$title,
        'not_found' => 'No post found',
        'not_found_in_trash' => 'No post found in Trash',
        'parent_item_colon' => '',
        'menu_name' => $title
    );
    $args = array(
        'labels' => $labels,
        'menu_icon' => 'dashicons-images-alt2',
        'public' => true,
        'publicly_queryable' => true,
        'show_ui' => true,
        'show_in_menu' => true,
        'hierarchical' => true,
        'has_archive' => true,
        'rewrite' => array('slug' => $slug),
        'menu_position' => null,
        'supports' => $support
    );
    register_post_type($name, $args );
}

/* tạo taxonomy  */
function create_taxonomy_theme($title="Category",$slug,$name,$post_type) {
    $labels = array(
        'name' => $title,
        'singular' => $title,
        'menu_name' => $title
    );
    $args = array(
        'labels' => $labels,
        'show_admin_column' => true,
        'hierarchical' => true,
        'public' => true,
        'rewrite' => array('slug' => $slug),
        'show_ui' => true,
//'rewrite' => array('slug' => $slug,'with_front' => true,'hierarchical' => true),
        'show_tagcloud' => true
    );
    register_taxonomy($name,$post_type,$args);
}
create_post_type("Sản phẩm","product","product",array( 'title','editor','thumbnail','excerpt','comments'));
create_taxonomy_theme("Danh mục sản phẩm","product-category","product-category","product");
create_post_type("Dịch vụ","service","service",array( 'title','editor','thumbnail','excerpt','comments'));
create_taxonomy_theme("Danh mục Dịch vụ","service-category","service-category","service");
