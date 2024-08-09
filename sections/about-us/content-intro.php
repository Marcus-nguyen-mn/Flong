<div class="mc_content_intro">
    <div class="container">
        <?php 
            if( have_rows('all_content_intro_company') ):
                $count=1; while( have_rows('all_content_intro_company') ) : the_row();
                if($count % 2 != 0){
        ?>
        <div class="content-row">
            <div class="left-big">
                <?php echo get_sub_field("content_abu_page_center"); ?>
            </div>
            <div class="right-sm">
                <img src="<?php echo get_sub_field("image_mh_content"); ?>" alt="Sm">
            </div>
        </div>
        <?php }else{
        ?>
        <div class="content-row">
            <div class="left-sm">
                <img src="<?php echo get_sub_field("image_mh_content"); ?>" alt="Sm">
            </div>
            <div class="right-big">
                <?php echo get_sub_field("content_abu_page_center"); ?>
            </div>
        </div>
        <?php } ?>
        <?php 
            $count++;endwhile;
        endif;
        ?>
    </div>
</div>