<div class="mc_highlight_product">
    <div class="container">
        <div class="2light-product-cover">
            <div class="title-and-read-more">
                <div class="title-page">
                    <?php echo get_field("title_2light_product_home"); ?>
                </div>
                <div class="readmore">
                    <a href="#" class="readmore-cover">
                        <div class="txt">Xem tất cả</div>
                        <div class="icon">
                            <i class="mc-chevron-right"></i>
                        </div>
                    </a>
                </div>
            </div>
            <div class="product-2light">
                <div class="slide-product-2light swiper">
                    <div class="swiper-wrapper">
                    <?php
                        $hightlight_product = get_field('higlight_product_home');
                        if( $hightlight_product ): ?>
                            <?php foreach( $hightlight_product as $post ): 
                                ?>
                        <div class="product item swiper-slide">
                            <a href="<?php echo get_permalink( $post->ID );?>" class="d-block text-decoration-none">
                                <div class="product-thumbnail overflow-hidden px-3 px-lg-5">
                                    <img src="<?php echo get_the_post_thumbnail_url($post->ID);?>" alt="<?php echo get_the_title($post->ID);?>" title="<?php echo get_the_title($post->ID);?>" class="w-100 h-auto">
                                </div>
                                <div class="product-info px-4 py-2">
                                    <h3 class="product-title"><?php echo get_the_title($post->ID);?></h3>
                                    <p class="product-excerpt"><?php echo esc_html(wp_trim_words(get_the_excerpt($post->ID),10));?></p>
                                </div>
                            </a>
                        </div>
                        <?php endforeach; ?>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>