<?php
    get_header();
?>
<?php
    if(have_posts()):
        while (have_posts()): the_post();
?>
<section class="single-product-wrapper py-5">
    <div class="container">
        <div class="row mb-5">
            <div class="col-12 col-lg-7">
                <?php
                    $gallery = get_field('image_gallery');
                    if(count($gallery) > 0) :
                ?>
                    <div class="product-images">
                        <div class="swiper product-gallery-slider">
                            <div class="swiper-wrapper">
                                <?php foreach($gallery as $image):?>
                                    <div class="swiper-slide overflow-hidden p-3 p-lg-5">
                                        <img src="<?php echo $image;?>" alt="<?php the_title();?>" class="w-100 h-auto">
                                    </div>
                                <?php endforeach;?>
                            </div>
                        </div>
                        <div thumbsSlider="" class="swiper product-gallery-thumb">
                             <div class="swiper-wrapper">
                                <?php foreach($gallery as $image):?>
                                    <div class="swiper-slide overflow-hidden">
                                        <img src="<?php echo $image;?>" alt="<?php the_title();?>" class="w-100 h-auto">
                                    </div>
                                <?php endforeach;?>
                             </div>           
                        </div>                        
                    </div>
                <?php else :?>
                    <div class="product-thumb overflow-hidden">
                        <img src="<?php echo get_the_post_thumbnail_url();?>" alt="<?php the_title();?>" class="w-100 h-100 object-fit-cover">
                    </div>
                <?php endif;?>
            </div>
            <div class="col-12 col-lg-5">
                <h1 class="title-page mb-5"><?php the_title();?></h1>
                <p class="product-desc-title"><strong>Mô tả sản phẩm:</strong></p>
                <p class="product-short-desc"><?php echo get_field('short_desc');?></p>
                <p class="product-desc-title"><strong>Đặc điểm:</strong></p>
                <div class="product-feature mb-5"><?php echo get_field('product_feature');?></div>
                <button class="contact-btn">Liên hệ báo giá</button>
            </div>
        </div>
        <div class="row mb-5">
            <div class="col-12">
                <h3 class="title-page mb-5">CHI TIẾT SẢN PHẨM</h3>
            </div>
            <?php 
                if(have_rows('product_highlights')):
                    while(have_rows('product_highlights')): the_row();
                    $feature_name = get_sub_field('feature_name');
                    $feature_image = get_sub_field('feature_image');
                    $feature_content = get_sub_field('feature_content');
            ?>
            <div class="col-12 col-lg-6 mx-auto">
                <div class="feature-wrapper overflow-hidden position-relative">
                    <img src="<?php echo $feature_image?>" alt="<?php echo $feature_name;?>" class="w-100 h-100 object-fit-cover d-block">
                    <div class="feature-text px-5"><?php echo get_field('product_highlights_1')?><?php echo $feature_content;?></div>
                    <div class="feature-name"><?php echo $feature_name;?></div>
                </div>
            </div>
            <?php endwhile; endif;?>
        </div>
        <div class="row mb-5">
            <div class="col-12 ">
                <div class="border-bottom pb-4 mb-4">
                    <div class="specifications-title">THÔNG SỐ KỸ THUẬT</div>
                </div>
            </div>
            <div class="col-12">
                <div class="specifications text-justify"><?php echo get_field('specifications');?></div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="d-flex justify-content-between align-items-center mb-5">
                    <h3 class="title-page"> SẢN PHẨM TƯƠNG TỰ</h3>
                    <?php
                        $categories = get_the_category();
                        if (!empty($categories)) {
                            // Lấy category đầu tiên
                            $category = $categories[0];
                            $category_link = get_category_link($category->term_id);
                            $category_name = $category->name;
                        }
                    ?>
                    <a href="<?php echo $category_link;?>" class="readmore-link d-flex gap-2 text-decoration-none">
                        <span>Xem tất cả</span>
                        <span><svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" viewBox="0 0 17 17" fill="none">
                        <path d="M6.5 3.5L11.5 8.5L6.5 13.5" stroke="#CC3D00" stroke-width="1.09375" stroke-linecap="round" stroke-linejoin="round"/>
                        </svg></span>
                    </a>
                </div>
                <div class="related-products swiper">
                    <div class="swiper-wrapper">
                        <?php
                            $args = array(
                                'post_type' => 'product',
                                'category__in' => $category_ids, // Lấy bài viết trong các category
                                'post__not_in' => array(get_the_ID()), // Loại trừ bài viết hiện tại
                                'posts_per_page' => 5, // Số lượng bài viết hiển thị
                                'caller_get_posts' => 1 // Loại bỏ bài viết sticky
                            );
                            $related_post = new WP_Query($args);
                            if($related_post->have_posts()):
                                while($related_post->have_posts()):
                                    $related_post->the_post();
                        ?>
                            <div class="product swiper-slide" id="product-<?php echo get_the_ID();?>">
                                <a href="<?php the_permalink();?>" class="d-block text-decoration-none">
                                    <div class="product-thumbnail overflow-hidden px-3 px-lg-5">
                                        <img src="<?php echo get_the_post_thumbnail_url();?>" alt="<?php the_title();?>" title="<?php the_title();?>" class="w-100 h-auto">
                                    </div>
                                    <div class="product-info px-4 py-2">
                                        <h3 class="product-title"><?php the_title();?></h3>
                                        <p class="product-excerpt"><?php echo esc_html(wp_trim_words(get_the_excerpt(),10));?></p>
                                    </div>
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
<?php endwhile; endif; wp_reset_query();?>
<?php get_footer();?>