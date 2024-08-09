<?php
    get_header();
?>
<section class="list-services-wrapper py-5">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h1 class="title-page mx-auto mb-5"><?php 
                    $page_title = is_category()? single_cat_title(): "Dịch vụ";
                    echo $page_title;
                     ?>
                </h1>
                <?php
                    if(have_posts()):
                ?>
                <div class="list-services">
                    <?php
                        while(have_posts()): the_post();
                    ?>
                    <div class="service post-first d-block position-relative swiper-slide">
                        <div class="d-block overflow-hidden position-relative w-100 h-100">
                            <img src="<?php echo get_the_post_thumbnail_url();?>" alt="<?php the_title();?>" class="post-thumbnail w-100 h-100 object-fit-cover d-block">
                            <div class="post-content">
                                <div class="d-flex align-items-end">
                                    <div class="post-info pe-3">
                                        <h3 class="post-title"><?php the_title(); ?></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="service-content px-3 px-lg-4"><?php echo wp_trim_words(get_the_excerpt(), 20);?></div>
                        <a href="<?php the_permalink();?>" class="d-flex justify-content-center align-items-center readmore-icon">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none">
                                <path d="M12.666 8L2.66602 8" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M10 4.66602L12.6262 7.29224C12.9596 7.62558 13.1262 7.79224 13.1262 7.99935C13.1262 8.20646 12.9596 8.37312 12.6262 8.70646L10 11.3327" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg>
                        </a>
                    </div>
                    <?php endwhile;?>
                </div>
                <div class="pagination-wrapper mt-4">
                    <?php  
                        echo custom_pagination($wp_query);
                    ?>
                </div>
                <?php
                    else : echo "Không có dịch vụ phù hợp";
                    endif; wp_reset_query();
                ?>
            </div>
        </div>
    </div>
</section>
<?php
    get_footer();
?>