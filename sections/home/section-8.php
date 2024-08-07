<section class="customer-talk">
    <div class="mc-container">
        <div class="title-customer-talk" data-aos="fade-down" data-aos-duration="900">
            <?php echo get_field("title_sec_8"); ?>
        </div>
        <div class="out-tc" data-aos="fade-right" data-aos-duration="1000">
            <?php 
                $count_cs=1; while( have_rows('sec_8_tc') ) : the_row();
            ?>
            <div class="item">
                <div class="item-cover">
                    <div class="number">
                        <?php echo "0".$count_cs."."; ?>
                    </div>
                    <div class="title-tc">
                        <?php echo get_sub_field("text_item_sec_8"); ?>
                    </div>
                </div>
                
            </div>
            <?php 
                $count_cs++; endwhile;
            ?>
        </div>
    </div>
    <div class="list-customer-talk">
        <div class="mc-container">
            <div class="list-customer-talk-cover">
                <div class="lct-col lct-col-1">
                    <?php while( have_rows('list_comment_of_customer_1') ) : the_row(); ?>
                    <div class="item-lct">
                        <img src="<?php echo get_sub_field("image_lct_1"); ?>" alt="Comment">
                    </div>
                    <?php 
                        endwhile;
                    ?>
                </div>
                <div class="lct-col lct-col-2">
                    <?php while( have_rows('list_comment_of_customer_2') ) : the_row(); ?>
                    <div class="item-lct">
                        <img src="<?php echo get_sub_field("image_lct_2"); ?>" alt="Comment">
                    </div>
                    <?php 
                        endwhile;
                    ?>
                </div>
                <div class="lct-col lct-col-3">
                    <?php while( have_rows('list_comment_of_customer_3') ) : the_row(); ?>
                    <div class="item-lct">
                        <img src="<?php echo get_sub_field("image_lct_3"); ?>" alt="Comment">
                    </div>
                    <?php 
                        endwhile;
                    ?>
                </div>
                <div class="lct-col lct-col-4">
                    <?php while( have_rows('list_comment_of_customer_4') ) : the_row(); ?>
                    <div class="item-lct">
                        <img src="<?php echo get_sub_field("image_lct_4"); ?>" alt="Comment">
                    </div>
                    <?php 
                        endwhile;
                    ?>
                </div>
                <div class="lct-col lct-col-5">
                    <?php while( have_rows('list_comment_of_customer_5') ) : the_row(); ?>
                    <div class="item-lct">
                        <img src="<?php echo get_sub_field("image_lct_5"); ?>" alt="Comment">
                    </div>
                    <?php 
                        endwhile;
                    ?>
                </div>
            </div>
        </div>
    </div>
</section>