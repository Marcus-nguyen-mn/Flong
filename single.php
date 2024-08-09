<?php
get_header();
?>
<?php
    if(have_posts()):
        while(have_posts()):
            the_post();
?>
<section class="single-post py-5">
    <div class="container">
        <div class="row mb-5">
            <div class="col-12 col-lg-10 mx-auto">
                <h1 class="single-post-title"><?php the_title();?></h1>
                <div class="post-date mb-2 text-italic">Tin đăng: <?php echo get_the_date('\N\g\à\y j \t\há\n\g n \n\ă\m Y')?></div>
                <p class="single-post-excerpt"><?php the_excerpt()?></p>
                <img src="<?php echo get_the_post_thumbnail_url();?>" alt="<?php the_title();?>" class="w-100 d-block mb-4">
                <div class="single-post-content mb-4">
                    <?php the_content();?>
                </div>
                <div class="socical-wrapper">
                    <a href="https://www.facebook.com/sharer/sharer.php?u=<?php the_permalink();?>&quote=<?php echo get_the_title();?>" class="d-flex align-items-center gap-2">
                        <span class="d-block"><img src="<?php echo get_template_directory_uri();?>/assets/images/fb-icon.svg" alt="Facebook"></span>
                        <span class="d-block">Chia sẻ</span>
                    </a>
                </div>
                <div class="border-bottom mt-4"></div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="d-flex justify-content-between align-items-center mb-5">
                    <h3 class="title-page"> TIN TỨC LIÊN QUAN</h3>
                    <?php
                        $categories = get_the_category();
                        if (!empty($categories)) {
                            // Lấy category đầu tiên
                            $category = $categories[0];
                            $category_link = get_category_link($category->term_id);
                            $category_name = $category->name;
                        }
                        $category_ids = array();
                        foreach ($categories as $cat) {
                            $category_ids[] = $cat->term_id;
                        }
                    ?>
                    <a href="<?php echo $category_link;?>" class="readmore-link d-flex gap-2 text-decoration-none">
                        <span>Xem tất cả</span>
                        <span><svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" viewBox="0 0 17 17" fill="none">
                        <path d="M6.5 3.5L11.5 8.5L6.5 13.5" stroke="#CC3D00" stroke-width="1.09375" stroke-linecap="round" stroke-linejoin="round"/>
                        </svg></span>
                    </a>
                </div>
                <div class="related-posts swiper">
                    <div class="swiper-wrapper">
                        <?php
                            $args = array(
                                'post_type' => 'post',
                                'category__in' => $category_ids, // Lấy bài viết trong các category
                                'post__not_in' => array(get_the_ID()), // Loại trừ bài viết hiện tại
                                'posts_per_page' => 9, // Số lượng bài viết hiển thị
                                'caller_get_posts' => 1 // Loại bỏ bài viết sticky
                            );
                            $related_post = new WP_Query($args);
                            if($related_post->have_posts()):
                                while($related_post->have_posts()):
                                    $related_post->the_post();
                           
                        ?>
                            <div class="related-post swiper-slide">
                                <a href="<?php the_permalink();?>" class="d-block overflow-hidden post-thumb mb-3">
                                    <img src="<?php echo get_the_post_thumbnail_url();?>" alt="<?php the_title();?>" class="w-100 h-100 object-fit-cover">
                                </a>
                                <div class="post-content">
                                    <div class="post-date mb-2">Tin đăng: <?php echo get_the_date('\N\g\à\y j \t\há\n\g n \n\ă\m Y')?></div>
                                    <h3 ><a class="post-title text-decoration-none" href="<?php the_permalink();?>"><?php the_title();?></a></h3>
                                </div>
                            </div>
                        <?php
                            endwhile; endif; wp_reset_query();
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<?php
        endwhile;
    endif;
    wp_reset_query();
?>
<?php get_footer(); ?>