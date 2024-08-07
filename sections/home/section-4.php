<section class="develop" data-aos="zoom-in" data-aos-duration="600">
    <div class="develop_contain">
        <div class="mc-container">
            <div class="develop_title" data-aos="fade-down" data-aos-duration="900">
                <?php echo get_field("title_sec_4"); ?>
            </div>
            <div class="dev-row">
                <div class="dev-left" data-aos="fade-right" data-aos-duration="900">
                    <div class="desc-dev">
                        <?php echo get_field("desc_sec_4"); ?>
                    </div>
                    <a href="<?php echo get_field("link_show_more_sec_4"); ?>" class="more-dev">
                        <div class="txt">
                            Xem thêm dự án
                        </div>
                        <div class="arrow-dev">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/arrow.png" alt="Arrow">
                        </div>
                    </a>
                </div>
                <div class="dev-right" data-aos="fade-left" data-aos-duration="900">
                    <div class="slide-dev-right">
                        <?php 
                            while( have_rows('list_industries_sec_4') ) : the_row();
                        ?>
                        <div class="item">
                            <div class="thumb-dev mc-effect-hov">
                                <img src="<?php echo get_sub_field("image_item_sec_4"); ?>" alt="Thumb item dev">
                            </div>
                            <div class="item-content-cover">
                                <a href="<?php echo get_sub_field("link_item_sec_4"); ?>" class="name-dev mc-effect-hov-txt-1">
                                    <?php echo get_sub_field("name_item_sec_4"); ?>
                                </a>
                                <div class="desc-item-dev">
                                    <?php echo get_sub_field("desc_item_sec_4"); ?>
                                </div>
                                <a href="<?php echo get_sub_field("link_item_sec_4"); ?>" class="view-item-dev">
                                    <div class="txt mc-effect-hov-txt-1">
                                        Xem thêm
                                    </div>
                                    <div class="arrow-item">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/arrow-el.png" alt="Arrow">
                                    </div>
                                </a>
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