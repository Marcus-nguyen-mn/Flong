<section class="img_empl_and_company">
    <div class="mc-container">
        <div class="eac_cover swiper">
            <div class="eac-slider swiper-wrapper">
                <?php 
                    while( have_rows('list_image_empl_and_company') ) : the_row();
                ?>
                <div class="swiper-slide item">
                    <img src="<?php echo get_sub_field("image_empl_and_company_item"); ?>" alt="Hình ảnh">
                </div>
                <?php 
                    endwhile;
                ?>
            </div>
            <div class="autoplay-progress">
                <svg viewBox="0 0 48 48">
                    <circle cx="24" cy="24" r="20"></circle>
                </svg>
                <span></span>
            </div>
        </div>
    </div>
</section>