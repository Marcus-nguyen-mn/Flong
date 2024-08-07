<?php
get_template_part('sections/popup-form-right');
?>
<section class="mc-footer">
    <section class="txt-and-form" data-aos="zoom-in" data-aos-duration="600">
        <div class="mc-container">
            <div class="taf-row">
                <div class="taf-col left-taf" data-aos="fade-right" data-aos-duration="900">
                    <div class="dau-and-txt">
                        <div class="dau">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/nhay.png" alt="Note">
                        </div>
                        <div class="txt">
                            <?php echo get_field("txt_ceo_td", "option"); ?>
                        </div>
                    </div>
                    <div class="ceo-footer">
                        <div class="name-positon">
                            <div class="name">
                                <?php echo get_field("name_ceo_footer", "option"); ?>
                            </div>
                            <div class="position">
                                <?php echo get_field("position_ceo_footer", "option"); ?>
                            </div>
                        </div>
                        <div class="ceo-img">
                            <img src="<?php echo get_field("img_ceo_footer", "option"); ?>" alt="CEO">
                        </div>
                    </div>
                </div>
                <div class="taf-col right-taf" data-aos="fade-left" data-aos-duration="900">
                    <div class="right-form">
                        <div class="title-form">
                            <?php echo get_field("title_form_footer", "option"); ?>
                        </div>
                        <div class="form-footer">
                            <div class="inp-sty">
                                <input type="text" id="inpNameFormBottom" placeholder="Họ và tên: " />
                                <p class="valid-sty valid-name">Bạn chưa nhập Họ tên !</p>
                            </div>
                            <div class="inp-sty">
                                <input type="text" id="inpEmailFormBottom" placeholder="Email: " />
                                <p class="valid-sty valid-email">Bạn chưa nhập Email !</p>
                            </div>
                            <div class="inp-sty">
                                <input type="number" id="inpPhoneFormBottom" placeholder="Số điện thoại: " />
                                <p class="valid-sty valid-phone">Bạn chưa nhập Số điện thoại !</p>
                            </div>
                            <div class="inp-sty">
                                <input type="text" id="inpCompanyFormBottom" placeholder="Công ty/ Tổ chức/ Cá nhân: " />
                            </div>
                            <div class="inp-sty-note">
                                <input type="text" id="inpContentFormBottom" placeholder="Nội dung tư vấn: " />
                            </div>
                        </div>
                        <div class="loading" id="mcLoading">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/load.gif" alt="Loading...">
                        </div>
                        <div class="btn-sub-form">
                            <input type="hidden" name="DateBt" id="DateBt" value="<?php date_default_timezone_set("Asia/Ho_Chi_Minh");
                                                                                    echo date("G:i - d/m/Y"); ?>" />
                            <?php $url      = "https://" . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
                            $validURL = str_replace("&", "&amp", $url); ?>
                            <input type="hidden" id="linkRes" class="" value="<?php echo $validURL; ?>" name="Link" />
                            <button type="submit" class="btn-handle-sub-form-bottom">
                                Gửi ngay
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="footer">
        <div class="main-foot">
            <div class="mc-container">
                <div class="footer-row">
                    <div class="footer-col">
                        <div class="one-col-footer">
                            <div class="title-one-col-footer">
                                Liên hệ
                            </div>
                            <div class="content-one-col">
                                <div class="styl-footer-info">
                                    <div class="icon">
                                        <i class="fa-solid fa-envelope"></i>
                                    </div>
                                    <div class="info">
                                        <div class="txt">
                                            Email
                                        </div>
                                        <div class="content">
                                            <?php echo get_field("email_footer", "option"); ?>
                                        </div>
                                    </div>
                                </div>
                                <div class="styl-footer-info">
                                    <div class="icon">
                                        <i class="fa-solid fa-phone"></i>
                                    </div>
                                    <div class="info">
                                        <div class="txt">
                                            Số điện thoại
                                        </div>
                                        <a href="tel:<?php echo get_field("phone_number", "option"); ?>" class="content">
                                            <?php echo get_field("phone_number", "option"); ?>
                                        </a>
                                    </div>
                                </div>
                                <div class="styl-footer-info">
                                    <div class="icon">
                                        <i class="fa-solid fa-location-dot"></i>
                                    </div>
                                    <div class="info">
                                        <div class="txt">
                                            Địa chỉ
                                        </div>
                                        <div class="content">
                                            <?php echo get_field("address_footer", "option"); ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="footer-col">
                        <div class="one-col-footer">
                            <div class="title-one-col-footer">
                                Chính sách của chúng tôi
                            </div>
                            <div class="content-one-col">
                                <?php echo get_field("policy_us_footer", "option"); ?>
                            </div>
                        </div>
                    </div>
                    <div class="footer-col">
                        <div class="one-col-footer one-col-footer-abu">
                            <div class="title-one-col-footer">
                                Về Poha
                            </div>
                            <div class="content-one-col">
                                <?php echo get_field("about_poha_footer", "option"); ?>
                            </div>
                        </div>
                    </div>
                    <div class="footer-col">
                        <div class="one-col-footer">
                            <img src="<?php echo get_field("image_footer", "option"); ?>" alt="Logo">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="bottom-footer">
            <div class="mc-container">
                <div class="bf-row">
                    <div class="bf-logo">
                        <img src="<?php echo get_field("logo_footer", "option"); ?>" alt="Logo Blue">
                    </div>
                    <div class="list-social-bf">
                        <div class="list-social-bf-cover">
                            <a href="<?php echo get_field("facebook_footer", "option"); ?>">
                                <i class="fa-brands fa-facebook-f"></i>
                            </a>
                            <a href="<?php echo get_field("linkedin_footer", "option"); ?>">
                                <i class="fa-brands fa-linkedin-in"></i>
                            </a>
                            <a href="<?php echo get_field("twiter_footer", "option"); ?>">
                                <i class="fa-brands fa-twitter"></i>
                            </a>
                            <a href="<?php echo get_field("instagram_footer", "option"); ?>">
                                <i class="fa-brands fa-instagram"></i>
                            </a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="copy-right-poha">
            <div class="mc-container">
                <?php echo get_field("copy_right", "option"); ?>
            </div>
        </div>

    </section>
</section>

<script type="text/javascript" src="<?php echo get_template_directory_uri(); ?>/assets/lib/slick.min.js"></script>
<?php wp_footer() ?>
</body>

</html>