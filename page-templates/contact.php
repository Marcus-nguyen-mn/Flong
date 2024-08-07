<?php
/**
 * template name: Contact
 */
get_header();
?>
<section class="mcnq_info_contact_page">
    <div class="banner-and-title">
        <div class="banner">
            <img src="<?php echo get_field("banner_projects_page","option"); ?>" alt="Banner">
        </div>
        <div></div>
        <div class="mc-bread-and-title">
            <div class="archive-main-title">
                Liên hệ
            </div>
            <div class="mc-bread">
                <a href="<?php echo site_url(); ?>">Trang chủ</a>
                <p><i class="fa-solid fa-angles-right"></i></p>
                <div>Liên hệ</div>
            </div>
            
        </div>
    </div>
  <div class="mc-container">
    <div class="mcnq_info_contact_page_contain">
      <div class="mc-row">
        <div class="mc-col-6">
          <div class="mc_info_contact_page">
            <div class="mccp_title_info">
              <?php echo get_field("nv_title_new_ver_contact"); ?>
            </div>
            <div class="mccp_sub_title_info">
              <?php echo get_field("nv_title_info_company_cp"); ?>
            </div>
            <div class="mccp_repeater_info">
              <?php
                if(have_rows("nv_info_repeater_company")) :
                  while(have_rows("nv_info_repeater_company")) : the_row();
              ?>
              <div class="mccp_repeater_info_item">
                <div class="mccp_repeater_info_icon">
                    <?php echo get_sub_field("mc_contact_p_icon"); ?>
                </div>
                <div class="mccp_repeater_info_text">
                  <?php echo get_sub_field("nv_info_cp"); ?>
                </div>
              </div>
              <?php
                endwhile;
              endif;
              ?>
            </div>
            <div class="nqcp_time_work">
              <?php echo get_field("nv_time_work_cp"); ?>
            </div>
          </div>
        </div>
        <div class="mc-col-6">
            <div class="mc-contact-maps">
                <?php echo get_field("nv_cp_iframe_google_maps"); ?>
            </div>
        </div>
      </div>
    </div>
  </div>
</section>


<?php get_footer();?>