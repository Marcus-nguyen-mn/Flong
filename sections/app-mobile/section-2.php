<section class="mc-partner">
    <div class="partner-contain">
        <?php 
            if( have_rows('ser_list_partner') ):
        ?>
        <div class="slider-partner">
            <?php 
                    while( have_rows('ser_list_partner') ) : the_row();
            ?>
            <div class="item-partner">
                <div class="logo-partner">
                    <img src="<?php echo get_sub_field("ser_item_partner_logo"); ?>" alt="Logo partner">
                </div>
            </div>
            <?php 
                endwhile;
            ?>
        </div>
        <?php 
            endif;
        ?>
    </div>
</section>