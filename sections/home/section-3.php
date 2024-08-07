<section class="mc-service">
    <div class="service-contain">
        <div class="ser-cover">
            <div class="left-banner" data-aos="fade-right" data-aos-duration="800">
                <img src="<?php echo get_field("solutions_banner_sec_3"); ?>" alt="Solutions">
            </div>
            <div class="right-content" data-aos="fade-left" data-aos-duration="800">
                <div class="list-service">
                    <?php $count=1;while( have_rows('list_service_sec_3') ) : the_row(); ?>
                    <div class="item-service">
                        <div class="num">
                            <?php echo "0".$count.'/'; ?>
                        </div>
                        <div class="name-service collapsible">
                            <?php echo get_sub_field("name_service_s3"); ?>
                        </div>
                        <div class="item-service-cover <?php if($count == 1){ echo "default";} ?>">
                            <div class="list-ser-detail">
                                <?php while( have_rows('list_service_detail_s3') ) : the_row(); ?>
                                <div class="item-ser-detail">
                                    <?php echo get_sub_field("item_ser_detail_s3"); ?>
                                </div>
                                <?php 
                                    endwhile;
                                ?>
                            </div>
                            <div class="desc-service">
                                <?php echo get_sub_field("desc_ser_s3"); ?>
                            </div>
                            <a href="<?php echo get_sub_field("link_s3"); ?>" class="link-service">
                                <div class="text">
                                    Xem thêm
                                </div>
                                <div class="arrow">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/arrow-el.png" alt="Arrow El">
                                </div>
                            </a>
                        </div>
                    </div>
                    <?php 
                        $count++; endwhile;
                    ?>
                </div>
            </div>
        </div>
    </div>
</section>