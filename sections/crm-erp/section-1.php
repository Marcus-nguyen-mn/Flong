<section class="first_intro">
    <div class="first_intro_contain">
        <div class="video-fi">
            <video poster="<?php echo get_field("ser_video_head"); ?>" playsinline="" autoplay="" muted="" loop="">
                <source data-src="<?php echo get_field("ser_video_head"); ?>" type="video/mp4" src="<?php echo get_field("ser_video_head"); ?>">
            </video>
        </div>
        <div class="content-on-fi">
            <div class="title-fi">
                <?php echo get_field("title_video_ser"); ?>
            </div>
            <div class="desc-fi">
                <?php echo get_field("desc_video_ser"); ?>
            </div>
        </div>
        <div class="companion">
            <div class="companion-cover">
                Nhãn hàng đồng hành
            </div>
        </div>
        <div class="comment-your-prject mc-vibrate-btn-1">
            <div class="comment-contain">
                <div class="ic-arrown">
                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/arrow.png" alt="Arrow">
                </div>
                <div class="txt-cmt">
                    HÃY THẢO LUẬN <br /> VỀ DỰ ÁN CỦA BẠN
                </div>
            </div>
        </div>
        <a href="#" class="btn-show-project heartbeat-mc">
            <div class="num-and-ic">
                <div class="num">1000+</div>
                <div class="icon"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/arrow-white.png" alt="arrow"></div>
            </div>
            <p>Dự án đã thực hiện</p>
        </a>
    </div>
</section>