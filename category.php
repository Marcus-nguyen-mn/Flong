<?php
get_header();
?>

<section class="list-news-wrapper py-5">
    <div class="container">
        <div class="row mb-5">
            <div class="col-10 mx-auto">
                <h1 class="title-page"><?php single_cat_title();?></h1>
            </div>
        </div>
        <?php if (have_posts()) : ?>
            <div class="category-posts">
                <div class="row mb-4">
                    <?php
                    $post_counter = 0;
                    while (have_posts()) : the_post();
                        $post_counter++;

                        if ($post_counter == 1) :
                            // Bài viết đầu tiên kiểu hiển thị A, col-6
                            ?>
                            <div class="col-12 col-lg-6 ms-auto">
                                <div class="post post-first w-100 h-100 d-block">
                                    <a href="<?php the_permalink();?>" class="d-block overflow-hidden position-relative w-100 h-100">
                                        <img src="<?php echo get_the_post_thumbnail_url();?>" alt="<?php the_title();?>" class="post-thumbnail w-100 h-100 object-fit-cover d-block">
                                        <div class="post-content">
                                            <div class="d-flex align-items-end">
                                                <div class="post-info pe-3">
                                                    <h3 class="post-title"><?php the_title(); ?></h3>
                                                    <div class="entry mb-0">
                                                        <?php the_excerpt(); ?>
                                                    </div>
                                                </div>
                                                <span class="d-flex justify-content-center align-items-center readmore-icon">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none">
                                                        <path d="M12.666 8L2.66602 8" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                                        <path d="M10 4.66602L12.6262 7.29224C12.9596 7.62558 13.1262 7.79224 13.1262 7.99935C13.1262 8.20646 12.9596 8.37312 12.6262 8.70646L10 11.3327" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                                    </svg>
                                                </span>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-12 col-lg-4 me-auto">
                                <div class="d-flex flex-column gap-2">
                                    <?php elseif ($post_counter == 2 || $post_counter == 3) : ?>
                                        <div class="post post-first">
                                            <a href="<?php the_permalink();?>" class="d-block overflow-hidden position-relative w-100 h-100">
                                                <img src="<?php echo get_the_post_thumbnail_url();?>" alt="<?php the_title();?>" class="post-thumbnail w-100 h-100 object-fit-cover d-block">
                                                <div class="post-content">
                                                    <div class="d-flex align-items-end">
                                                        <div class="post-info pe-3">
                                                            <h3 class="post-title"><?php the_title(); ?></h3>
                                                            <div class="entry mb-0">
                                                                <?php the_excerpt(); ?>
                                                            </div>
                                                        </div>
                                                        <span class="d-flex justify-content-center align-items-center readmore-icon">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none">
                                                                <path d="M12.666 8L2.66602 8" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                                                <path d="M10 4.66602L12.6262 7.29224C12.9596 7.62558 13.1262 7.79224 13.1262 7.99935C13.1262 8.20646 12.9596 8.37312 12.6262 8.70646L10 11.3327" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                                            </svg>
                                                        </span>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    <?php if ($post_counter == 3) : ?>
                                </div>
                               
                            </div>
                        </div>
                        <div class="row">
                            <?php
                        endif;
                    else :
                        // Các bài viết còn lại kiểu hiển thị B
                        ?>
                        <div class="col-10 mx-auto">
                            <div class="post post-second d-flex align-items-center gap-2">
                                <div class="post-thumb">
                                    <img src="<?php echo get_the_post_thumbnail_url();?>" alt="<?php the_title(); ?>" class="w-100 h-100 object-fit-cover">
                                </div>
                                <div class="post-content">

                                    <h2><?php the_title(); ?></h2>
                                    <div class="entry">
                                        <?php the_excerpt(); ?>
                                    </div>
                                </div>
                               
                            </div>
                        </div>
                    <?php
                    endif;
                endwhile;
                ?>
                </div>
            </div>
            <div class="pagination">
                <?php the_posts_pagination(); ?>
            </div>
        <?php else : ?>
            <p><?php _e('No posts found in this category.', 'textdomain'); ?></p>
        <?php endif; ?>
    </div>
</section>
<?php get_footer(); ?>


