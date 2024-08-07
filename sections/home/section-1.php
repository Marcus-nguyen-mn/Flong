<section class="first_intro">
    <div class="first_intro_contain">
        <div class="video-fi">
            <video poster="<?php echo get_field("video_background"); ?>" playsinline="" autoplay="" muted="" loop="">
                <source data-src="<?php echo get_field("video_background"); ?>" type="video/mp4" src="<?php echo get_field("video_background"); ?>">
            </video>
        </div>
        <div class="content-on-fi">
            <div class="title-fi">
                <?php echo get_field("big_title_sec_1"); ?>
            </div>
            <div class="desc-fi">
                <?php echo get_field("desc_sec_1"); ?>
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
        <a href="<?php echo get_field("link_projects_sec_6"); ?>" class="btn-show-project heartbeat-mc">
            <div class="num-and-ic">
                <div class="num">1000+</div>
                <div class="icon"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/arrow-white.png" alt="arrow"></div>
            </div>
            <p>Dự án đã thực hiện</p>
        </a>
    </div>
</section>