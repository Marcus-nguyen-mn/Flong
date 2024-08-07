<section class="mc_why_choose">
    <div class="mc-container">
        <div class="why_top">
            <div class="mc-why-title" data-aos="fade-down" data-aos-duration="900">
                <?php echo get_field("title_sec_5"); ?>
            </div>
            <div class="mc-why-desc" data-aos="fade-right" data-aos-duration="1000">
                <?php echo get_field("desc_sec_5"); ?>
            </div>
        </div>
        <div class="bottom-why">
            <div class="why-row">
                <div class="left-why" data-aos="fade-right" data-aos-duration="900">
                    <div class="long-desc-why">
                        <?php echo get_field("desc_long_sec_5"); ?>
                    </div>
                    <a href="<?php echo get_field("link_sec_5"); ?>" class="btn-read-more">
                        <div class="txt">
                            Về chúng tôi
                        </div>
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/arrow.png" alt="Arrow">
                    </a>
                </div>
                <div class="right-why" data-aos="fade-left" data-aos-duration="900">
                    <div class="right-why-cover">
                        <div class="right-why-row">
                            <div class="right-col-4 right-image">
                                <img src="<?php echo get_field("image_sec_5"); ?>" alt="Hình ảnh lý do">
                            </div>
                            <div class="right-col-8">
                                <div class="content-why-cover">
                                    <div class="content-why-row">
                                        <?php 
                                            while( have_rows('list_why_choose') ) : the_row();
                                        ?>
                                        <div class="item-content-why">
                                            <div class="number-and-arrow">
                                                <div class="num">
                                                    <?php echo get_sub_field("number_why_item"); ?>
                                                </div>
                                                <div class="arrow">
                                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/arrow.png" alt="Arrow">
                                                </div>
                                            </div>
                                            <div class="content">
                                                <?php echo get_sub_field("content_item_sec_5"); ?>
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