<section class="blog ser_projects">
    <div class="mc-container">
        <div class="title-blog" data-aos="fade-down" data-aos-duration="900">
            <?php echo "DỰ ÁN NỔI BẬT" ?>
        </div>
        <div class="list_cat_blog" data-aos="fade-right" data-aos-duration="800">
            <?php 
                $categories = get_terms('cat-projects');
                foreach ( $categories as $category ) {
                    ?>
                    <a href="<?php echo esc_url( get_category_link( $category->term_id ) ); ?>" class="item-cat-blog">
                        <?php echo esc_html( $category->name ); ?>
                    </a>
                <?php 
                }
                ?>
            
        </div>
        
        <div class="list_post_blog swiper" data-aos="fade-up" data-aos-duration="900">
            <div class="list_post_blog_cover swiper-wrapper">
                <?php 
                    $args = array( 
                        'post_type'=>'project',
                        'post_status'=>'publish',
                        'posts_per_page' => 10
                    );
                    $blogs = new WP_Query( $args );
                        if ( $blogs->have_posts() ) :
                        while ( $blogs->have_posts() ) : $blogs->the_post();
                ?>
                <div class="item-blog swiper-slide">
                    <a href="<?php the_permalink(); ?>" class="thumbnail-blog">
                        <img src="<?php echo get_the_post_thumbnail_url() ?>" alt="<?php echo get_the_title(); ?>">
                    </a>
                    <div class="cat-and-date">
                        <div class="cat">
                            <?php 
                                $categories_project = get_the_terms(get_the_ID(),'cat-projects');
                                echo $categories_project[0]->name;
                            ?>
                        </div>
                        <div class="date">
                            <?php echo get_the_date('d/m/Y'); ?>
                        </div>
                    </div>
                    <a href="<?php the_permalink(); ?>" class="title-post">
                        <?php echo get_the_title(); ?>
                    </a>
                </div>
                <?php 
                        endwhile;
                    endif;
                    
                    // Reset Post Data
                    wp_reset_postdata();
                
                ?>
            </div>
        </div>
    </div>
</section>