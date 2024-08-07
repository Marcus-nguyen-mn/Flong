<section class="ser_rating_web">
    <div class="mc-container">
        <div class="srw_title_and_desc">
            <div class="srw_title" data-aos="fade-down" data-aos-duration="900">
                <?php echo get_field("ser_rating_title"); ?>
            </div>
            <div class="srw_desc" data-aos="fade-right" data-aos-duration="1000">
                <?php echo get_field("ser_rating_desc"); ?>
            </div>
        </div>
        <div class="srw_cover">
            <div class="srw_row">
                <div class="left-img" data-aos="fade-right" data-aos-duration="900">
                    <img src="<?php echo get_field("ser_rating_img_mh"); ?>" alt="Rating Website">
                </div>
                <div class="right-content" data-aos="fade-left" data-aos-duration="900">
                    <div class="right-content-cover">
                        <?php 
                            while( have_rows('ser_list_rating_website') ) : the_row();
                        ?>
                        <div class="item-right">
                            <div class="tick">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/tick.png" alt="Tick">
                            </div>
                            <div class="title">
                                <?php echo get_sub_field("ser_rating_item_title"); ?>
                            </div>
                            <div class="content-detail">
                                <?php echo get_sub_field("ser_rating_item_content"); ?>
                            </div>
                        </div>
                        <?php 
                            endwhile;
                        ?>
                    </div>
                </div>
            </div>
        </div>
        
    </div>
</section>