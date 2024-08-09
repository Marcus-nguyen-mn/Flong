<!doctype html>
<html id="no_margin" <?php language_attributes(); ?>>

<head>
    <meta charset="<?php bloginfo( 'charset' ); ?>" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <meta property="og:image" content="<?php echo esc_url($featured_img_url); ?>" />
    <link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
    <link rel="icon" href="<?php //echo get_template_directory_uri(); ?>/images/favico.png" type="image/x-icon" />
    <?php wp_head(); ?>
</head>

<body <?php body_class(); ?> id='top'>
    <div class="mc_header" id="mcHeader">
        <div class="container">
            <div class="head-row">
                <a href="<?php echo site_url(); ?>" class="logo-head">
                    <img src="<?php echo get_field("logo_option","option"); ?>" alt="Logo">
                </a>
                <div class="search-head">
                    <form role="search" method="get" class="search_form_footer" action="<?php echo esc_url( home_url( '/' ) ); ?>">                                 		
                        <div class="search_form_page_wrap">
                            <input type="search" id="search_field_2" class="mc-search-field search_field_form_page_footer search_field_form_page_search_page_only" placeholder="Tìm kiếm" value="<?php echo get_search_query(); ?>" name="s" />
                            <button type="submit" class="search_submit_page_footer search_submit_page_search_page">
                                <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 18 18" fill="none">
                                <path d="M10.7871 0.962891C9.6543 0.962891 8.60612 1.24935 7.64258 1.82227C6.69206 2.36914 5.94336 3.11784 5.39648 4.06836C4.82357 5.0319 4.53711 6.08008 4.53711 7.21289C4.53711 7.95508 4.66081 8.66146 4.9082 9.33203C5.1556 10.0026 5.50065 10.6113 5.94336 11.1582L0.962891 16.1387L1.86133 17.0371L6.8418 12.0566C7.38867 12.4993 7.9974 12.8444 8.66797 13.0918C9.33854 13.3392 10.0449 13.4629 10.7871 13.4629C11.9199 13.4629 12.9681 13.1764 13.9316 12.6035C14.8822 12.0566 15.6309 11.3079 16.1777 10.3574C16.7507 9.39388 17.0371 8.3457 17.0371 7.21289C17.0371 6.08008 16.7507 5.0319 16.1777 4.06836C15.6309 3.11784 14.8822 2.36914 13.9316 1.82227C12.9681 1.24935 11.9199 0.962891 10.7871 0.962891ZM10.7871 2.21289C11.6986 2.21289 12.5352 2.4375 13.2969 2.88672C14.0586 3.33594 14.6641 3.94141 15.1133 4.70312C15.5625 5.46484 15.7871 6.30143 15.7871 7.21289C15.7871 8.12435 15.5625 8.96094 15.1133 9.72266C14.6641 10.4844 14.0586 11.0898 13.2969 11.5391C12.5352 11.9883 11.6986 12.2129 10.7871 12.2129C9.87565 12.2129 9.03906 11.9883 8.27734 11.5391C7.51562 11.0898 6.91016 10.4844 6.46094 9.72266C6.01172 8.96094 5.78711 8.12435 5.78711 7.21289C5.78711 6.30143 6.01172 5.46484 6.46094 4.70312C6.91016 3.94141 7.51562 3.33594 8.27734 2.88672C9.03906 2.4375 9.87565 2.21289 10.7871 2.21289Z" fill="white"/>
                                </svg>
                            </button>
                        </div>
                    </form>
                </div>
                <div class="hotline-head">
                    <a href="tel: <?php echo get_field("hotline_footer","option"); ?>">
                        Hotline
                    </a>
                </div>
            </div>
            <div class="mc-head-menu">
                <?php
                    wp_nav_menu( array(
                        'theme_location' => 'main_menu',
                    ) );
                ?>
            </div>
        </div>
    </div>
    <div class="head-fix" id="fixedMenu">
        <div class="container">
            <div class="head-fix-row">
                <a href="<?php echo site_url(); ?>" class="logo-head">
                    <img src="<?php echo get_field("logo_option","option"); ?>" alt="Logo">
                </a>
                <div class="head-fix-menu">
                    <?php
                        wp_nav_menu( array(
                            'theme_location' => 'main_menu',
                        ) );
                    ?>
                </div>
            </div>
        </div>
    </div>
    <div class="head-mob">
        <div class="head-mob-row">
            <div class="bar-mob">
                <button type="button" class="handle-bar-mob">
                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/bar.png" alt="Bar">
                </button>
            </div>
            <a href="<?php echo site_url(); ?>" class="logo-mob">
                <img src="<?php echo get_field("logo_option","option"); ?>" alt="logo">
            </a>
            <div class="hot-mob">
                <a href="tel: <?php echo get_field("hotline_footer","option"); ?>">
                    Hotline
                </a>
            </div>
        </div>
    </div>
    <div class="menu-mob mc-in-left">
        <div class="menu-mob-cover">
            <button type="button" class="menu-mob-cls">
                <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32" fill="none">
                    <path fill-rule="evenodd" clip-rule="evenodd" d="M7.05752 7.05703C7.57822 6.53633 8.42244 6.53633 8.94313 7.05703L16.0003 14.1142L23.0575 7.05703C23.5782 6.53633 24.4224 6.53633 24.9431 7.05703C25.4638 7.57773 25.4638 8.42195 24.9431 8.94265L17.8859 15.9998L24.9431 23.057C25.4638 23.5777 25.4638 24.4219 24.9431 24.9426C24.4224 25.4633 23.5782 25.4633 23.0575 24.9426L16.0003 17.8855L8.94314 24.9426C8.42244 25.4633 7.57822 25.4633 7.05752 24.9426C6.53682 24.4219 6.53682 23.5777 7.05752 23.057L14.1147 15.9998L7.05752 8.94265C6.53682 8.42195 6.53682 7.57773 7.05752 7.05703Z" fill="#777E91"/>
                </svg>
            </button>
            <a href="<?php echo site_url(); ?>" class="logo-mob-pop">
                <img src="<?php echo get_field("logo_option","option"); ?>" alt="logo">
            </a>
            <div class="list-menu-mob">
                <?php
                    wp_nav_menu( array(
                        'theme_location' => 'main_menu',
                    ) );
                ?>
            </div>
            <div class="search-mob">
                <form role="search" method="get" class="search_form_footer" action="<?php echo esc_url( home_url( '/' ) ); ?>">                                 		
                    <div class="search_form_page_wrap">
                        <input type="search" id="search_field_2" class="mc-search-field search_field_form_page_footer search_field_form_page_search_page_only" placeholder="Tìm kiếm" value="<?php echo get_search_query(); ?>" name="s" />
                        <button type="submit" class="search_submit_page_footer search_submit_page_search_page">
                            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 18 18" fill="none">
                            <path d="M10.7871 0.962891C9.6543 0.962891 8.60612 1.24935 7.64258 1.82227C6.69206 2.36914 5.94336 3.11784 5.39648 4.06836C4.82357 5.0319 4.53711 6.08008 4.53711 7.21289C4.53711 7.95508 4.66081 8.66146 4.9082 9.33203C5.1556 10.0026 5.50065 10.6113 5.94336 11.1582L0.962891 16.1387L1.86133 17.0371L6.8418 12.0566C7.38867 12.4993 7.9974 12.8444 8.66797 13.0918C9.33854 13.3392 10.0449 13.4629 10.7871 13.4629C11.9199 13.4629 12.9681 13.1764 13.9316 12.6035C14.8822 12.0566 15.6309 11.3079 16.1777 10.3574C16.7507 9.39388 17.0371 8.3457 17.0371 7.21289C17.0371 6.08008 16.7507 5.0319 16.1777 4.06836C15.6309 3.11784 14.8822 2.36914 13.9316 1.82227C12.9681 1.24935 11.9199 0.962891 10.7871 0.962891ZM10.7871 2.21289C11.6986 2.21289 12.5352 2.4375 13.2969 2.88672C14.0586 3.33594 14.6641 3.94141 15.1133 4.70312C15.5625 5.46484 15.7871 6.30143 15.7871 7.21289C15.7871 8.12435 15.5625 8.96094 15.1133 9.72266C14.6641 10.4844 14.0586 11.0898 13.2969 11.5391C12.5352 11.9883 11.6986 12.2129 10.7871 12.2129C9.87565 12.2129 9.03906 11.9883 8.27734 11.5391C7.51562 11.0898 6.91016 10.4844 6.46094 9.72266C6.01172 8.96094 5.78711 8.12435 5.78711 7.21289C5.78711 6.30143 6.01172 5.46484 6.46094 4.70312C6.91016 3.94141 7.51562 3.33594 8.27734 2.88672C9.03906 2.4375 9.87565 2.21289 10.7871 2.21289Z" fill="white"/>
                            </svg>
                        </button>
                    </div>
                </form>
            </div>
        </div>
        
    </div>
<?php 
if(!is_front_page()) {
    get_template_part('sections/breadcrumb');
}

?>