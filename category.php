<?php
get_header();
?>
<div class="mc-archive">
    <div class="archive-banner-and-title">
        <div class="banner">
            <img src="<?php echo get_field("banner_projects_page", "option"); ?>" alt="Banner">
        </div>
        <div></div>
        <div class="mc-bread-and-title">
            <div class="archive-main-title">
                <?php echo single_cat_title(); ?>
            </div>
            <div class="mc-bread">
                <a href="<?php echo site_url(); ?>">Trang chủ</a>
                <p><i class="fa-solid fa-angles-right"></i></p>
                <div><?php echo single_cat_title(); ?></div>
            </div>

        </div>
    </div>
    <div class="archiv-pr-cover">
        <div class="mc-container">
            <div class="list-cat-archi">
                <?php
                $categories = get_categories();
                foreach ($categories as $category) {
                ?>
                    <a href="<?php echo esc_url(get_category_link($category->term_id)); ?>" class="item-cat-project">
                        <?php echo esc_html($category->name); ?>
                    </a>
                <?php
                }
                ?>
            </div>
            <div class="list-posts">
                <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
                        <div class="item-post" data-aos="fade-up" data-aos-duration="700">
                            <a href="<?php the_permalink(); ?>" class="thumb-post mc-effect-hov">
                                <img src="<?php echo get_the_post_thumbnail_url(); ?>" alt="<?php echo get_the_title(); ?>" />
                            </a>
                            <?php
                            $categories_blog = get_the_category();
                            ?>
                            <a href="<?php echo esc_url(get_category_link($categories_blog[0]->term_id)) ?>" class="term-one-project">
                                <?php
                                echo $categories_blog[0]->name;
                                ?>
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
                                <?php echo wp_trim_words(get_the_excerpt(), 38, '...'); ?>
                            </div>
                        </div>
                <?php endwhile;
                endif; ?>
            </div>
            <?php
            the_posts_pagination(array(
                'prev_text' => __('Trước', 'textdomain'),
                'next_text' => __('Sau', 'textdomain'),
            ));
            ?>
        </div>
    </div>
</div>


<?php get_footer(); ?>