<?php
/**
 * template name: 404
 */
get_header();
get_template_part('sections/menu-main');?>
<section  id="for_title_blog" class="child_page secstion_full">
    <div class="container_site">
      <div class="left_page_header_child">
           Trang bạn tìm kiếm không tồn tại!
      </div>
      <div class="right_page_header_child">
             <span class="you_are_here">Bạn đang ở đây:<a href="<?php echo esc_url( home_url( ) ); ?>">Trang chủ</a> / lỗi tìm kiếm</span>
      </div>
    </div>
</section>
<section id="DoiNguBacSi_archive_search" class="page_wrapper">
    <div class="container_site">
    	<header class="page-header">
    		<h1 style="text-align: center;" class="page_title_search">Xin lỗi! Trang bạn tìm kiếm không tồn tại</h1>
    	</header>
    	<div class="page_content_search">
			<p style="text-align: center;"><a href="<?php echo get_home_url();?>">Quay lại trang chủ</a></p>
    	</div>
    </div>
</section>

<?php
get_footer();
 ?>