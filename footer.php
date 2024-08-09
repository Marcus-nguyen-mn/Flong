
<div class="mc_footer">
    <div class="contact-footer">
        <div class="footer-container">
            <div class="f-row">
                <div class="left">
                    <div class="title-page">
                        <?php echo get_field("title_contact_footer","option"); ?>
                    </div>
                    <div class="desc-footer">
                        <?php echo get_field("desc_footer","option"); ?>
                    </div>
                    <a href="tel:<?php echo get_field("hotline_footer","option"); ?>" class="one-item-contact">
                        <div class="left-ct">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/phone.png" alt="Phone">
                        </div>
                        <div class="right-ct">
                            <div class="sub-title">
                                Hotline
                            </div>
                            <div class="main-ct">
                                <?php echo get_field("hotline_footer","option"); ?>
                            </div>
                        </div>
                    </a>
                    <a href="mailto:<?php echo get_field("email_footer","option"); ?>" class="one-item-contact">
                        <div class="left-ct">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/email.png" alt="Email">
                        </div>
                        <div class="right-ct">
                            <div class="sub-title">
                                Email
                            </div>
                            <div class="main-ct">
                                <?php echo get_field("email_footer","option"); ?>
                            </div>
                        </div>
                    </a>
                    <div class="one-item-contact">
                        <div class="left-ct">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/address.png" alt="Address">
                        </div>
                        <div class="right-ct">
                            <div class="sub-title">
                                Địa chỉ
                            </div>
                            <div class="main-ct">
                                <?php echo get_field("address_footer","option"); ?>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="right">
                    <form action="">
                        <div class="inpt">
                            <input type="text" placeholder="Họ và Tên">
                        </div>
                        <div class="inpt">
                            <input type="text" placeholder="Email">
                        </div>
                        <div class="inpt">
                            <input type="text" placeholder="Số điện thoại">
                        </div>
                        <div class="inpt">
                            <textarea name="" id="" placeholder="Nội dung"></textarea>
                        </div>
                        <div class="btn-sub">
                            <button type="submit" class="handle-sub-form">GỬI</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="sub-footer">
        <div class="container">
            <div class="sub-row">
                <div class="logo-footer">
                    <img src="<?php echo get_field("logo_option","option"); ?>" alt="Logo Footer">
                </div>
                <div class="txt-sub">
                    <?php echo get_field("let_make_a_great_design_together","option"); ?>
                </div>
                <div class="menu-sub-footer">
                    <?php
                        wp_nav_menu( array(
                            'theme_location' => 'main_menu',
                        ) );
                    ?>
                </div>
            </div>
            <div class="cpyrig-social">
                <div class="copyright">
                    <?php echo get_field("copy_right","option"); ?>
                </div>
                <div class="social-footer">
                    <div class="list-social-footer">
                        <a href="<?php echo get_field("facebook_footer","option"); ?>">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/facebook.png" alt="facebook">
                        </a>
                        <a href="<?php echo get_field("instagram_footer","option"); ?>">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/instagram.png" alt="instagram">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php wp_footer() ?>
</body>

</html>