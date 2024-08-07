<div class="popup_form_right pfr-slide-in-right">
    <div class="clos-pop" id="btnClosPopRight">
        <i class="mc-close"></i>
    </div>
    <div class="pfr_cover">
        <div class="pfr_title">
            Bạn có dự án mới ?
        </div>
        <div class="pfr_desc">
            POHA cam kết không sử dụng thông tin của bạn để mua bán hoặc Spam. Chúng tôi sẽ giúp bạn hiện thực hóa ý tưởng một cách tốt nhất.
        </div>
        <div class="pfr_form">
            <div class="pfr_form_cover">
                <div class="inp-sty">
                    <input type="text" id="inpNameFormRight" placeholder="Họ và tên: " />
                    <p class="r-valid-sty r-valid-name">Bạn chưa nhập Họ tên !</p>
                </div>
                <div class="inp-sty">
                    <input type="text" id="inpEmailFormRight" placeholder="Email: " />
                    <p class="r-valid-sty r-valid-email">Bạn chưa nhập Email !</p>
                </div>
                <div class="inp-sty">
                    <input type="number" id="inpPhoneFormRight" placeholder="Số điện thoại: " />
                    <p class="r-valid-sty r-valid-phone">Bạn chưa nhập Số điện thoại !</p>
                </div>
                <div class="inp-sty">
                    <input type="text" id="inpCompanyFormRight" placeholder="Công ty/ Tổ chức/ Cá nhân: " />
                </div>
                <div class="inp-sty-note">
                    <input type="text" id="inpContentFormRight" placeholder="Nội dung tư vấn: " />
                </div>
            </div>
            <div class="loading" id="mcLoadingRight">
                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/load.gif" alt="Loading...">
            </div>
            <div class="btn-sub-form">
                <input type="hidden" name="DateRight" id="DateRight" value="<?php date_default_timezone_set("Asia/Ho_Chi_Minh");
                                                                            echo date("G:i - d/m/Y"); ?>" />
                <?php $url      = "https://" . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
                $validURL = str_replace("&", "&amp", $url); ?>
                <input type="hidden" id="LinkResRight" class="" value="<?php echo $validURL; ?>" name="LinkResRight" />
                <button type="submit" class="btn-handle-sub-form-right">
                    Gửi ngay
                </button>
            </div>
        </div>
    </div>
</div>
<div class="overlay_pop_form_right">
</div>