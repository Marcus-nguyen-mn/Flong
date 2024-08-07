<section class="mc_why_choose dev_abus">
    <div class="mc-container">
        <div class="why_top">
            <div class="mc-why-title" data-aos="fade-down" data-aos-duration="900">
                <?php echo get_field("abu_titl_dev"); ?>
            </div>
            <div class="mc-why-desc" data-aos="fade-right" data-aos-duration="1000">
                <?php echo get_field("abu_desc_dev"); ?>
            </div>
        </div>
        <div class="bottom-why">
            <div class="why-row">
                <div class="left-why" data-aos="fade-right" data-aos-duration="900">
                    <div class="long-desc-why">
                        <?php echo get_field("abu_content_dev"); ?>
                    </div>
                </div>
                <div class="right-why" data-aos="fade-left" data-aos-duration="900">
                    <div class="right-why-cover">
                        <div class="right-why-row">
                            <div class="right-col-4 right-image">
                                <img src="<?php echo get_field("img_dev_abus"); ?>" alt="Hình ảnh lý do">
                            </div>
                            <div class="right-col-8">
                                <div class="content-why-cover">
                                    <div class="content-why-row">
                                        <?php 
                                            while( have_rows('abu_detail_dev') ) : the_row();
                                        ?>
                                        <div class="item-content-why">
                                            <div class="number-and-arrow">
                                                <div class="num">
                                                    <?php echo get_sub_field("abu_dev_item_number"); ?>
                                                </div>
                                                <div class="arrow">
                                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/arrow.png" alt="Arrow">
                                                </div>
                                            </div>
                                            <div class="content">
                                                <?php echo get_sub_field("abu_dev_item_content"); ?>
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
                </div>
            </div>
        </div>
    </div>
</section>