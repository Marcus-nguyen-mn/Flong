<section class="ser_help_you">
    <div class="mc-container">
        <div class="ser-title-hy" data-aos="fade-down" data-aos-duration="900">
            <?php echo get_field("title_help_you_ser"); ?>
        </div>
        <div class="hy-row">
            <div class="left-form" data-aos="fade-right" data-aos-duration="900">
                <div class="hy-desc">
                    <?php echo get_field("desc_help_you_ser"); ?>
                </div>
                <?php
                get_template_part('sections/form-service');
                ?>
            </div>
            <div class="right-hy" data-aos="fade-left" data-aos-duration="900">
                <div class="right-hy-cover">
                    <?php
                    while (have_rows('list_content_help_you_ser')) : the_row();
                    ?>
                        <div class="item">
                            <div class="ic-tick">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/tick.png" alt="Tick">
                            </div>
                            <div class="content-item">
                                <div class="item-title">
                                    <?php echo get_sub_field("item_name_help_you_ser"); ?>
                                </div>
                                <div class="item-detail">
                                    <?php echo get_sub_field("item_detail_help_you_ser"); ?>
                                </div>
                            </div>
                        </div>
                    <?php
                    endwhile;
                    ?>
                </div>
            </div>
        </div>
    </div>
</section>