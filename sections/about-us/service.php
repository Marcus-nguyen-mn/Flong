<div class="mc-service">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h3 class="title-page mb-4">CÁC HẠNG MỤC DỊCH VỤ</h3>
                <div class="related-services swiper">
                    <div class="swiper-wrapper">
                    <?php
                        $hightlight_service = get_field('list_service_choose_abu');
                        if( $hightlight_service ): ?>
                            <?php foreach( $hightlight_service as $post ): 
                                ?>
                            <div class="service post-first d-block position-relative swiper-slide">
                                <div class="d-block overflow-hidden position-relative w-100 h-100">
                                    <img src="<?php echo get_the_post_thumbnail_url($post->ID);?>" alt="<?php the_title($post->ID);?>" class="post-thumbnail w-100 h-100 object-fit-cover d-block">
                                    <div class="post-content">
                                        <div class="d-flex align-items-end">
                                            <div class="post-info pe-3">
                                                <h3 class="post-title"><?php the_title($post->ID); ?></h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="service-content px-3 px-lg-4"><?php echo wp_trim_words(get_the_excerpt($post->ID), 20);?></div>
                                <a href="<?php the_permalink($post->ID);?>" class="d-flex justify-content-center align-items-center readmore-icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none">
                                        <path d="M12.666 8L2.66602 8" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                        <path d="M10 4.66602L12.6262 7.29224C12.9596 7.62558 13.1262 7.79224 13.1262 7.99935C13.1262 8.20646 12.9596 8.37312 12.6262 8.70646L10 11.3327" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                    </svg>
                                </a>
                            </div>
                            <?php endforeach; ?>
                            <?php endif; wp_reset_postdata();?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>