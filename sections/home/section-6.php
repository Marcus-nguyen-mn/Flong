<div class="mc_partner_home" style="background-image: url(<?php echo get_field("background_partner_home") ?>);">
    <div class="container">
        <div class="title-page">
            <?php echo get_field("title_partner_home"); ?>
        </div>
        <div class="slide-partner-cover">
            <div class="slide-partner swiper">
                <div class="swiper-wrapper">
                    <?php 
                            if( have_rows('list_partner_home') ):
                                while( have_rows('list_partner_home') ) : the_row();
                        ?>
                    <div class="item swiper-slide">
                        <img src="<?php echo get_sub_field("logo_partner_home"); ?>" alt="Partner">
                    </div>
                    <?php 
                        endwhile;
                    endif;
                    ?>
                    
                </div>
            </div>
            <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
        </div>
        
    </div>
</div>