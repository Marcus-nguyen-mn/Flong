<?php
get_header();
?>
<div class="mc-archive mc_search_page">
    <div class="archive-banner-and-title">
        <div class="banner">
            <img src="<?php echo get_field("banner_projects_page","option"); ?>" alt="Banner">
        </div>
        <div></div>
        <div class="mc-bread-and-title">
            <div class="archive-main-title">
                <?php if ( have_posts() ) : 
                    $allsearch =new WP_Query("s=$s&showposts=-1");
                    echo $allsearch ->found_posts." "; printf( __( 'Kết quả tìm kiếm cho từ khóa: %s', 'WebExp24h' ), '<span>' . esc_html( get_search_query() ));
                ?>
                <?php endif; ?>
            </div>
            <div class="mc-bread">
                <a href="<?php echo site_url(); ?>">Trang chủ</a>
                <p><i class="fa-solid fa-angles-right"></i></p>
                <div>Tìm kiếm</div>
            </div>
            
        </div>
    </div>
    <div class="archiv-pr-cover">
        <div class="mc-container">
            <div class="list-posts">
                <?php if (have_posts()) : while(have_posts()) : the_post(); ?>
                    <div class="item-post" data-aos="fade-up" data-aos-duration="700">
                        <a href="<?php the_permalink(); ?>" class="thumb-post">
                            <img src="<?php echo get_the_post_thumbnail_url(); ?>" alt="<?php echo get_the_title(); ?>" />
                        </a>
                        <a href="<?php the_permalink(); ?>" class="title-and-arrow-one-projects">
                            <div class="title-item">
                                <?php the_title(); ?>
                            </div>
                            <div class="arrow-white">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/arrow.png" alt="Arrow">
                            </div>
                        </a>
                        <div class="desc-item-project">
                            <?php echo get_the_excerpt(); ?>
                        </div>
                    </div>
                <?php endwhile; endif; ?>
            </div>
            <?php
                the_posts_pagination( array(
                'prev_text' => __( 'Trước', 'textdomain' ),
                'next_text' => __( 'Sau', 'textdomain' ),
                ) );
            ?>
        </div>
    </div>
</div>


<?php get_footer();?>
