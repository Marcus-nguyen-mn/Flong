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
                    );
                    $products = new WP_Query($args);
                    if($products->have_posts()):
                ?>
                <div class="list-products">
                        <?php while($products->have_posts()): $products->the_post();?>
                            <div class="product" id="product-<?php echo get_the_ID();?>">
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
                <div class="pagination-wrapper">
                    <?php  
                        echo paginate_links( array(
                            'base'         => str_replace( 999999999, '%#%', esc_url( get_pagenum_link( 999999999 ) ) ),
                            'total'        => $products->max_num_pages,
                            'current'      => max( 1, get_query_var( 'paged' ) ),
                            'format'       => '?paged=%#%',
                            'show_all'     => false,
                            'type'         => 'plain',
                            'end_size'     => 2,
                            'mid_size'     => 1,
                            'prev_next'    => true,
                            'prev_text'    => sprintf(  __( '<', 'text-domain' ) ),
                            'next_text'    => sprintf(  __( '>', 'text-domain' ) ),
                            'add_args'     => false,
                            'add_fragment' => '',
                            ) );
                    ?>
                </div>
                <?php endif; wp_reset_query();?>
            </div>
        </div>
    </div>
</section>
<?php get_footer();?>