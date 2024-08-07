<?php
get_header();
?>
<section class="single_projects">
    <div class="head-single-project">
        <div class="sing-container">
            <div class="hsp-row">
                <div class="left-content">
                    <div class="sub-title">
                        <?php echo "Dự án" ?>
                    </div>
                    <div class="main-title">
                        <?php echo get_the_title(); ?>
                    </div>
                    <div class="sub-desc">
                        <?php echo get_field("hsp_sub_descripts"); ?>
                    </div>
                    <div class="desc">
                        <?php echo get_the_excerpt(); ?>
                    </div>
                    <div class="hsp-button">
                        <button type="button" class="register-project">Đặt dự án</button>
                        <?php if(get_field("hsp_link_live")): ?>
                        <a href="<?php echo get_field("hsp_link_live"); ?>" class="view-live" target="_blank">Xem live</a>
                        <?php endif; ?>
                    </div>
                </div>
                <div class="right-img">
                    <img src="<?php echo get_the_post_thumbnail_url(); ?>" alt="Thumb">
                </div>
            </div>
        </div>
    </div>
    <div class="hsp-content-cover">
        <div class="sing-container">
            <div class="hsc-row">
                <div class="left-content">
                    <?php the_content(); ?>
                </div>
                <div class="right-side-bar">
                    <div class="project-lq">
                        <div class="title-project-lq">
                            Các dự án khác
                        </div>
                        <div class="list-project">
                            <?php 
                                $args = array( 
                                    'post_type'=>'project',
                                    'post_status'=>'publish',
                                    'posts_per_page' => 5
                                );
                                $blogs = new WP_Query( $args );
                                    if ( $blogs->have_posts() ) :
                                    while ( $blogs->have_posts() ) : $blogs->the_post();
                            ?>
                            <a href="<?php the_permalink(); ?>" class="item">
                                <div class="thumb-projects">
                                    <img src="<?php echo get_the_post_thumbnail_url() ?>" alt="<?php echo get_the_title(); ?>" />
                                </div>
                                <div class="name-project">
                                    <?php echo get_the_title(); ?>
                                </div>
                            </a>
                            <?php 
                                    endwhile;
                                endif;
                                
                                // Reset Post Data
                                wp_reset_postdata();
                            
                            ?>
                        </div>
                    </div>
                    <div class="typ-cat-cover">
                        <div class="title">
                            Chuyên mục dự án
                        </div>
                        <div class="type-cat">
                            <?php 
                                $categories = get_terms('cat-projects');
                                foreach ( $categories as $category ) {
                                    ?>
                                    <a href="<?php echo esc_url( get_category_link( $category->term_id ) ); ?>" class="item-type-cat">
                                        <?php echo esc_html( $category->name ); ?>
                                    </a>
                            <?php 
                            }
                            ?>
                        </div>
                    </div>
                    <div class="banner-qc">
                        <a href="<?php echo get_field("link_qc_projects_detail_1","option"); ?>">
                            <img src="<?php echo get_field("img_qc_projects_detail_1","option"); ?>" alt="QC">
                        </a>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<?php get_footer();?>