<div class="news_home">
    <div class="container">
        <div class="title-and-read-more">
            <div class="title-page">
                <?php echo get_field("title_news_home"); ?>
            </div>
            <div class="readmore">
                <a href="#" class="readmore-cover">
                    <div class="txt">Xem tất cả</div>
                    <div class="icon">
                        <i class="mc-chevron-right"></i>
                    </div>
                </a>
            </div>
        </div>
        <div class="list-news-home">
            <?php 
                $args = array( 
                    'post_type' => 'post',
                    'post_status' => 'publish',
                    'posts_per_page' => 4,
                );
                $the_query = new WP_Query( $args );
                if ( $the_query->have_posts() ) :
                    $count = 1;
                while ( $the_query->have_posts() ) : $the_query->the_post();
            ?>
            <a href="<?php echo get_permalink(); ?>" class="item-chu <?php if($count == 2 || $count == 3){ echo "item-big"; }else{ echo "item"; } ?>">
                <div class="thumb">
                    <img src="<?php echo get_the_post_thumbnail_url() ?>" alt="<?php echo get_the_title(); ?>">
                </div>
                <div class="cover-info-news">
                    <div class="title-news">
                        <?php echo get_the_title(); ?>
                    </div>
                    <div class="desc">
                        <?php
                        echo wp_trim_words( get_the_excerpt(), 21, '...' );
                        ?>
                    </div>
                </div>
                <div class="arrow-news">
                    &#8594;
                </div>
            </a>
            <?php 
                $count++;endwhile;
                endif;
                wp_reset_postdata();
            ?>
        </div>
    </div>
</div>