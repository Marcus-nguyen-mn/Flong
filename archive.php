<?php
get_header();
?>
<section class="list-product-wrapper py-5">
    <div class="container">
        <div class="row mb-5">
            <div class="col-12">
                <h1 class="title-page text-center mx-auto"><?php echo single_cat_title(); ?></h1>
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
                    <?php   the_posts_pagination(array(
                        'mid_size'  => 2,
                        'prev_text' => __('<svg xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38" fill="none"><rect x="-0.25" y="0.25" width="37.5" height="37.5" rx="3.75" transform="matrix(-1 0 0 1 37.5 0)" stroke="#CECECE" stroke-width="0.5"/><path d="M25 18.5C25.2761 18.5 25.5 18.7239 25.5 19C25.5 19.2761 25.2761 19.5 25 19.5L25 18.5ZM13.6464 19.3536C13.4512 19.1583 13.4512 18.8417 13.6464 18.6464L16.8284 15.4645C17.0237 15.2692 17.3403 15.2692 17.5355 15.4645C17.7308 15.6597 17.7308 15.9763 17.5355 16.1716L14.7071 19L17.5355 21.8284C17.7308 22.0237 17.7308 22.3403 17.5355 22.5355C17.3403 22.7308 17.0237 22.7308 16.8284 22.5355L13.6464 19.3536ZM25 19.5L14 19.5L14 18.5L25 18.5L25 19.5Z" fill="#D37E00"/></svg>', 'textdomain'),
                        'next_text' => __('<svg xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38" fill="none"><rect x="0.25" y="0.25" width="37.5" height="37.5" rx="3.75" stroke="#CECECE" stroke-width="0.5"/><path d="M13 18.5C12.7239 18.5 12.5 18.7239 12.5 19C12.5 19.2761 12.7239 19.5 13 19.5L13 18.5ZM24.3536 19.3536C24.5488 19.1583 24.5488 18.8417 24.3536 18.6464L21.1716 15.4645C20.9763 15.2692 20.6597 15.2692 20.4645 15.4645C20.2692 15.6597 20.2692 15.9763 20.4645 16.1716L23.2929 19L20.4645 21.8284C20.2692 22.0237 20.2692 22.3403 20.4645 22.5355C20.6597 22.7308 20.9763 22.7308 21.1716 22.5355L24.3536 19.3536ZM13 19.5L24 19.5L24 18.5L13 18.5L13 19.5Z" fill="#D37E00"/></svg>', 'textdomain'),
                        'screen_reader_text' => __( 'Điều hướng trang' )
                    ));?>
                </div>
                <?php endif; wp_reset_query();?>
            </div>
        </div>
    </div>
</section>
<?php get_footer();?>