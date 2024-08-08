<div class="mc-slider-top">
    <div class="slider-top-cover swiper">
        <div class="swiper-wrapper">
            <?php 
                if( have_rows('slider_banner_top') ):
                    while( have_rows('slider_banner_top') ) : the_row();
            ?>
            <div class="swiper-slide">
                <img src="<?php echo get_sub_field("item_slider_banner_top"); ?>" alt="banner">
            </div>
            <?php 
                endwhile;
            endif;
            ?>
        </div>
        <div class="swiper-pagination"></div>
    </div>
</div>
