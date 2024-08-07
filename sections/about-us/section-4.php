<section class="poha_team">
    <div class="marquee-text">
        <div class="marquee-text-cover">
            <div class="txt">
                <?php echo get_field("text_roll_abu_team"); ?>
            </div>
            <div class="txt">
                <?php echo get_field("text_roll_abu_team"); ?>
            </div>
            <div class="txt">
                <?php echo get_field("text_roll_abu_team"); ?>
            </div>
        </div>
        
    </div>
    <div class="team_title_desc">
        <div class="mc-container">
            <div class="team-row">
                <div class="left-title">
                    <div class="emp-text">
                        <?php echo get_field("title_abu_team"); ?>
                    </div>
                </div>
                <div class="right-desc">
                    <?php echo get_field("desc_abu_team"); ?>
                </div>
            </div>
        </div>
    </div>
    <div class="space-tt"></div>
    <div class="list-member" data-aos="fade-up" data-aos-duration="900">
        <div class="mc-container">
            <div class="swiper my-slider-team">
                <div class="member-poha-slider swiper-wrapper">
                    <?php 
                        while( have_rows('list_empl_abu_team') ) : the_row();
                    ?>
                    <div class="item swiper-slide">
                        <div class="avatar">
                            <img src="<?php echo get_sub_field("item_team_abu_image"); ?>" alt="Avatar">
                        </div>
                        <div class="name">
                            <?php echo get_sub_field("item_team_abu_name"); ?>
                        </div>
                        <div class="position">
                            <?php echo get_sub_field("item_team_abu_position"); ?>
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