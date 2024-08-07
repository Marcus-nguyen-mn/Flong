<!doctype html>
<html id="no_margin" <?php language_attributes(); ?>>

<head>
    <meta charset="<?php bloginfo( 'charset' ); ?>" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <meta property="og:image" content="<?php echo esc_url($featured_img_url); ?>" />
    <link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
    <link rel="icon" href="<?php //echo get_template_directory_uri(); ?>/images/favico.png" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="<?php echo get_template_directory_uri(); ?>/assets/lib/slick.css"/>
    <link rel="stylesheet" type="text/css" href="<?php echo get_template_directory_uri(); ?>/assets/lib/slick-theme.css"/>
    <?php wp_head(); ?>
</head>

<body <?php body_class(); ?> id='top'>

<section class="header">
    <div class="mc-container">
        <div class="header-contain">
            <div class="logo">
                <a href="<?php echo site_url(); ?>">
                    <img src="<?php echo get_field("logo_main","option"); ?>" alt="Logo">
                </a>
            </div>
            
            <div class="main-menu">
                <?php
                    wp_nav_menu( array(
                        'theme_location' => 'main_menu',
                    ) );
                ?>
            </div>
            <div class="right-info-header">
                <div class="rih-contain">
                    <a href="tel:<?php echo get_field("phone_number","option"); ?>" class="phone-number"><?php echo get_field("phone_number","option"); ?></a>
                    <div class="search-form">
                        <form role="search" method="get" class="search_form" action="<?php echo esc_url( home_url( '/' ) ); ?>">                                 		
                            <div class="search_form_page_wrap">
                                <input type="search" id="search_field_2" class="search-field" value="<?php echo get_search_query(); ?>" name="s" />
                                <button type="submit" class="search_submit_page">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/search.png" alt="search">
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="mc_header_mob">
    <div class="mc-container">
        <div class="mc_header_mob_cover">
            <div class="left-ic-open-menu" id="leftIcOpenMenuMob">
                <i class="fa-solid fa-bars"></i>
            </div>
            <div class="center-logo">
                <a href="<?php echo site_url(); ?>">
                    <img src="<?php echo get_field("logo_main","option"); ?>" alt="Logo Mobile" />    
                </a>
            </div>
            <div class="right_ic_search">
                <div class="right_open_ic_search">
                    <i class="fa-solid fa-magnifying-glass"></i>
                </div>
                <div class="right_close_ic_search">
                    <i class="fa-solid fa-xmark"></i>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="mc_menu_mob mc-slide-in-left-menu" id="menuMob">
    <div class="ic-close-menu-mob" id="closeMenuMob">
        <i class="fa-solid fa-x"></i>
    </div>
    <div class="logo_menu_mob">
        <img src="<?php echo get_field("logo_footer","option"); ?>" alt="Logo Mobile" />
    </div>
    <div class="mc_menu_mob_cover">
        <?php
            wp_nav_menu( array(
                'theme_location' => 'main_menu',
            ) );
        ?>
    </div>
</div>
<div class="overlay_menu_mob" id="overlayMenuMob">

</div>
<div class="search_mob search-slide-in-right">
    <form role="search" method="get" class="search_form" action="<?php echo esc_url( home_url( '/' ) ); ?>">                                 		
        <div class="search_form_page_wrap">
            <input type="search" id="search_field_2" class="search-field" value="<?php echo get_search_query(); ?>" name="s" />
            <button type="submit" class="search_submit_page">
                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/search.png" alt="search">
            </button>
        </div>
    </form>
</div>