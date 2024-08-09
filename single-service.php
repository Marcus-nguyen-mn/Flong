<?php
    get_header();
    if(have_posts()):
        while(have_posts()): the_post();
?>
    <section class="single-service py-5">
        <div class="container">
            <div class="row align-items-center mb-5">
                <div class="col-12 col-lg-6">
                    <img src="<?php echo get_the_post_thumbnail_url();?>" alt="<?php the_title();?>" class="w-100">
                </div>
                <div class="col-12 col-lg-6">
                    <h1 class="title-page mb-4"><?php the_title();?></h1>
                    <p class="product-desc-title"><strong>Mô tả sản phẩm:</strong></p>
                    <div class="product-feature mb-5"><?php echo get_field('service_desc');?></div>
                    <button class="contact-btn">Liên hệ báo giá</button>
                </div>
            </div>
            <div class="row mb-4">
                <?php 
                    $service_gallery = get_field('service_gallery');
                    foreach($service_gallery as $img) :
                ?>
                <div class="col-6 col-lg-4 mb-3">
                    <div class="service-img overflow-hidden">
                        <img src="<?php echo $img;?>" alt="<?php the_title();?>" class="w-100 h-100 object-fit-cover d-block">
                    </div>
                </div>
                <?php endforeach;?>
            </div>
            <div class="row">
                <div class="col-12">
                    <h3 class="title-page mb-4">CÁC DỊCH VỤ KHÁC</h3>
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
                    <div class="related-services swiper">
                        <div class="swiper-wrapper">
                            <?php
                                $args = array(
                                    'post_type' => 'service',
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
                                <div class="service post-first d-block position-relative swiper-slide">
                                    <div class="d-block overflow-hidden position-relative w-100 h-100">
                                        <img src="<?php echo get_the_post_thumbnail_url();?>" alt="<?php the_title();?>" class="post-thumbnail w-100 h-100 object-fit-cover d-block">
                                        <div class="post-content">
                                            <div class="d-flex align-items-end">
                                                <div class="post-info pe-3">
                                                    <h3 class="post-title"><?php the_title(); ?></h3>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="service-content px-3 px-lg-4"><?php echo wp_trim_words(get_the_excerpt(), 20);?></div>
                                    <a href="<?php the_permalink();?>" class="d-flex justify-content-center align-items-center readmore-icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none">
                                            <path d="M12.666 8L2.66602 8" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                            <path d="M10 4.66602L12.6262 7.29224C12.9596 7.62558 13.1262 7.79224 13.1262 7.99935C13.1262 8.20646 12.9596 8.37312 12.6262 8.70646L10 11.3327" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                        </svg>
                                    </a>
                                </div>
                            <?php
                                    endwhile;
                                endif;
                                wp_reset_query();
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<?php
        endwhile;
    endif; wp_reset_query();
    get_footer();
?>