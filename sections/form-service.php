<div class="lform-hy-cover">
    <div class="hy-inpt">
        <input type="text" id="inpNameFormService" placeholder="Họ và tên" />
        <p class="s-valid-sty s-valid-name">Bạn chưa nhập Họ tên !</p>
    </div>
    <div class="hy-inpt">
        <input type="text" id="inpPhoneFormService" placeholder="Số điện thoại" />
        <p class="s-valid-sty s-valid-phone">Bạn chưa nhập Số điện thoại !</p>
    </div>
    <div class="hy-inpt">
        <input type="text" id="inpEmailFormService" placeholder="Email" />
        <p class="s-valid-sty s-valid-email">Bạn chưa nhập Email !</p>
    </div>
    <div class="loading" id="mcLoadingSerivce">
        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/load.gif" alt="Loading...">
    </div>
    <div class="hy-btn-sub">
        <input type="hidden" name="DateBt" id="DateService" value="<?php date_default_timezone_set("Asia/Ho_Chi_Minh");
                                                                    echo date("G:i - d/m/Y"); ?>" />
        <?php $url      = "https://" . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
        $validURL = str_replace("&", "&amp", $url); ?>
        <input type="hidden" id="linkService" class="" value="<?php echo $validURL; ?>" name="Link" />
        <button type="submit" class="btn-handle-sub-form-service">
            <div class="txt">
                Gửi đi
            </div>
            <div class="ic-arrow">
                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/arrow.png" alt="Arrow">
            </div>
        </button>
    </div>
</div>