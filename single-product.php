<?php
    get_header();
?>
<?php
    if(have_posts()):
        while (have_posts()): the_post();
?>
<section class="single-product-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-12 col-lg-7">
                <?php
                    $gallery = get_field('image_gallery');
                    if(count($gallery) > 0) :
                ?>
                    <div class="product-images">
                        <div class="swiper product-gallery-slider">
                            <div class="swiper-wrapper">
                                <?php foreach($gallery as $image):?>
                                    <div class="swiper-slide overflow-hidden p-3 p-lg-5">
                                        <img src="<?php echo $image;?>" alt="<?php the_title();?>" class="w-100 h-auto">
                                    </div>
                                <?php endforeach;?>
                            </div>
                        </div>
                        <div thumbsSlider="" class="swiper product-gallery-thumb">
                             <div class="swiper-wrapper">
                                <?php foreach($gallery as $image):?>
                                    <div class="swiper-slide overflow-hidden">
                                        <img src="<?php echo $image;?>" alt="<?php the_title();?>" class="w-100 h-auto">
                                    </div>
                                <?php endforeach;?>
                             </div>           
                        </div>                        
                    </div>
                <?php else :?>
                <?php endif;?>
            </div>
            <div class="col-12 col-lg-5"></div>
        </div>
    </div>
</section>
<?php endwhile; endif; wp_reset_query();?>
<?php get_footer();?>