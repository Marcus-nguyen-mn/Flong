<section class="intro-service">
    <div class="mc-container">
        <div class="titl-and-desc-inserp">
            <div class="title-intro-service" data-aos="fade-down" data-aos-duration="900">
                <?php echo get_field("serp_intro_title"); ?>
            </div>
            <div class="desc-intro-service" data-aos="fade-right" data-aos-duration="1000">
                <?php echo get_field("serp_intro_desc"); ?>
            </div>
        </div>
        
        <div class="content-intro-serpage">
            <div class="serp-row">
                <div class="left-img" data-aos="fade-right" data-aos-duration="900">
                    <img src="<?php echo get_field("img_serp_intro"); ?>" alt="Website">
                </div>
                <div class="right-content" data-aos="fade-left" data-aos-duration="900">
                    <?php 
                        $count=1;while( have_rows('list_step_intro_serp') ) : the_row();
                    ?>
                    <div class="item-content">
                        <div class="num">
                            <?php echo "0".$count."/"; ?>
                        </div>
                        <div class="name-step">
                            <?php echo get_sub_field("item_serp_intro_title"); ?>
                        </div>
                        <div class="detail">
                            <?php echo get_sub_field("item_serp_intro_desc"); ?>
                        </div>
                    </div>
                    <?php 
                        $count++;endwhile;
                    ?>
                </div>
            </div>
        </div>
    </div>
</section>