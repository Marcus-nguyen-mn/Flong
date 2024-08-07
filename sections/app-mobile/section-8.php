<section class="ser_choose_for_you">
    <div class="mc-container">
        <div class="scf_title" data-aos="fade-down" data-aos-duration="900">
            <?php echo get_field("scf_title"); ?>
        </div>
        <div class="scf-cover" data-aos="fade-up" data-aos-duration="900">
            <div class="scf-row">
                <?php 
                    while( have_rows('scf_list_box') ) : the_row();
                ?>
                <div class="scf-col">
                    <div class="name-col">
                        <div class="main-name">
                            <?php echo get_sub_field("item_scf_name"); ?>
                            <div class="sub-name">
                                <?php echo get_sub_field("item_scf_sub_name"); ?>
                            </div>
                        </div>
                        
                    </div>
                    <div class="desc-and-price">
                        <div class="desc">
                            <?php echo get_sub_field("item_scf_desc"); ?>
                        </div>
                        <div class="price">
                            <?php echo get_sub_field("item_scf_price"); ?>
                        </div>
                    </div>
                    <div class="detail-ser">
                        <?php 
                            while( have_rows('item_scf_content_detail') ) : the_row();
                        ?>
                        <div class="item-detail-ser">
                            <div class="tick">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/tick.png" alt="Tick">
                            </div>
                            <div class="txt">
                                <?php echo get_sub_field("item_scf_detail_tick"); ?>
                            </div>
                        </div>
                        <?php 
                            endwhile;
                        ?>
                    </div>
                    <div class="btn-register">
                        <button type="button">
                            <div class="txt">
                                ĐĂNG KÝ NGAY
                            </div>
                            <div class="arrow">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/arrow.png" alt="Arrow">
                            </div>
                        </button>
                    </div>
                </div>
                <?php 
                    endwhile;
                ?>
            </div>
        </div>
    </div>
</section>