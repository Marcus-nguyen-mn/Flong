<?php
/**
 * Template Name: Products
 */
get_header();
?>
<section class="list-product-wrapper py-5">
    <div class="container">
        <div class="row mb-5">
            <div class="col-12">
                <h1 class="title-page text-center mx-auto"><?php echo get_the_title(); ?></h1>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <?php
                    $args = array(
                        'post_type' => 'product',
                        'posts_per_page' => 16,
                        'paged' => get_query_var('paged') ? get_query_var('paged') : 1 // Lấy số trang hiện tại
                    );
                    $products = new WP_Query($args);
                    if($products->have_posts()):
                ?>
                <div class="list-products">
                        <?php while($products->have_posts()): $products->the_post();?>
                            <div class="product " id="product-<?php echo get_the_ID();?>">
                                <a href="<?php the_permalink();?>" class="d-block text-decoration-none">
                                    <div class="product-thumbnail overflow-hidden px-3 px-lg-5">
                                        <img src="<?php echo get_the_post_thumbnail_url();?>" alt="<?php the_title();?>" title="<?php the_title();?>" class="w-100 h-auto">
                                    </div>
                                    <div class="product-info px-4 py-2">
                                        <h3 class="product-title"><?php the_title();?></h3>
                                        <p class="product-excerpt"><?php echo esc_html(wp_trim_words(get_the_excerpt(),10));?></p>
                                    </div>
                                </a>
                            </div>
                        <?php endwhile;?>
                </div>
                <div class="pagination-wrapper mt-4">
                    <?php   
                       echo custom_pagination($products);
                    ?>
                </div>
                <?php else: echo "Không có sản phẩm phù hợp"; endif; wp_reset_query();?>
            </div>
        </div>
    </div>
</section>
<?php get_footer();?>