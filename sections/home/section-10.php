<section class="blog">
    <div class="mc-container">
        <div class="title-blog" data-aos="fade-down" data-aos-duration="900">
            <?php echo "Blog Công Nghệ" ?>
        </div>
        <div class="list_cat_blog" data-aos="fade-right" data-aos-duration="800">
            <?php 
                $categories = get_categories();
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
                        'post_type'=>'post',
                        'post_status'=>'publish',
                        'posts_per_page' => 10
                    );
                    $blogs = new WP_Query( $args );
                        if ( $blogs->have_posts() ) :
                        while ( $blogs->have_posts() ) : $blogs->the_post();
                ?>
                <div class="item-blog swiper-slide">
                    <a href="<?php the_permalink(); ?>" class="thumbnail-blog mc-effect-hov">
                        <img src="<?php echo get_the_post_thumbnail_url() ?>" alt="<?php echo get_the_title(); ?>">
                    </a>
                    <div class="cat-and-date">
                        <div class="cat">
                            <?php 
                                $categories_blog = get_the_category();
                                echo $categories_blog[0]->name;
                            ?>
                        </div>
                        <div class="date">
                            <?php echo get_the_date('d/m/Y'); ?>
                        </div>
                    </div>
                    <a href="<?php the_permalink(); ?>" class="title-post mc-effect-hov-txt-2">
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