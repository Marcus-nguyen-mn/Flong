<section class="abu_video">
    <div class="mc-container">
        <div class="abu-vide-cover">
            <div class="left-txt">
                <div class="abu-title-video">
                    <?php echo get_field("title_abu_video"); ?>
                </div>
                <div class="abu-desc-video">
                    <?php echo get_field("desc_video_abu"); ?>
                </div>
            </div>
            <div class="right-video">
                <div class="right-video-cover">
                    <div class="img-ic-open-video img-ic-open-video-abu" data-video='<?php echo get_field("abu_link_video"); ?>'>
                        <img src="<?php echo get_field("abu_thumbnail_video"); ?>" alt="Thumb">
                        <div class="ic-play">
                            <i class="fa-solid fa-play"></i>
                        </div>
                    </div>
                    <div class="small-txt-video">
                        <?php echo get_field("abu_small_text"); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="abu-popup-video" id="abuPopVideo">
    <div class="close-video-abus">
        <i class="fa-solid fa-xmark"></i>
    </div>
    <div class="abu-show-video" id="abuShowVideo">
    </div>
</div>
<div class="overlay-pop-video">

</div>