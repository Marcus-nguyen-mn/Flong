<?php
function post_type_project(){
    $label = array(
        'name' => __('Dự án'),
        'singular_name' => __('Dự án'),

    );
    $args = array(
        'labels' => $label,
        'description' => 'Projects',
        'supports' => array(
            'title',
            'editor',
            'excerpt',
            'author',
            'thumbnail',
            'comments',
            'trackbacks',
            'revisions',
            'custom-fields'
        ),
        'taxonomies' => array('post_tag'),
        'hierarchical' => false,
        'public' => true,
        'show_ui' => true,
        'show_in_menu' => true,
        'show_in_nav_menus' => true,
        'show_in_admin_bar' => true,
        'menu_position' => 20,
        'menu_icon' => 'dashicons-images-alt2',
        'can_export' => true,
        'has_archive' => true,
        'exclude_from_search' => false,
        'publicly_queryable' => true,
        'capability_type' => 'post',
    );
    register_post_type('project', $args);
}
add_action('init', 'post_type_project');

function taxonomy_projects() {
	$labels = array(
		'name' => 'Category Projects',
		'singular' => 'Category Projects',
		'menu_name' => 'Category Projects'
	);
	$args = array(
		'labels'                   => $labels,
		'hierarchical'               => true,
		'public'                     => true,
		'show_ui'                    => true,
		'show_admin_column'          => true,
		'show_in_nav_menus'          => true,
		'show_tagcloud'              => true,
	);
	register_taxonomy('cat-projects', 'project', $args);


}
add_action( 'init', 'taxonomy_projects', 0 );