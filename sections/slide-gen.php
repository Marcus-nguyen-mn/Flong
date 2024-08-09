<div class="mc-slider-top">
    <div class="slider-top-cover swiper">
        <div class="swiper-wrapper">
            <?php 
                if( have_rows('list_banner_gen','option') ):
                    while( have_rows('list_banner_gen','option') ) : the_row();
            ?>
            <div class="swiper-slide">
                <img src="<?php echo get_sub_field("item_banner_gen","option"); ?>" alt="banner">
            </div>
            <?php 
                endwhile;
            endif;
            ?>
        </div>
        <div class="swiper-pagination"></div>
    </div>
</div>
