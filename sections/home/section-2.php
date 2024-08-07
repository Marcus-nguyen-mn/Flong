<section class="mc-partner">
    <div class="partner-contain">
        <?php 
            if( have_rows('list_partner_sec_2') ):
        ?>
        <div class="slider-partner">
            <?php 
                    while( have_rows('list_partner_sec_2') ) : the_row();
            ?>
            <div class="item-partner">
                <div class="logo-partner">
                    <img src="<?php echo get_sub_field("logo_partner_sec_2"); ?>" alt="Logo partner">
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