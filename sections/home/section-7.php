<section class="mc_project" data-aos="zoom-in" data-aos-duration="800">
    <div class="project-cover">
        <div class="mc-container">
            <div class="title-and-link-projects">
                <div class="title-projects">
                    <?php echo get_field("title_projects_sec_6"); ?>
                </div>
                <a href="<?php echo get_field("title_projects_sec_6"); ?>" class="link-projects">
                    <div class="link-project-cover">
                        <div class="txt">
                            Xem tất cả
                        </div>
                        <div class="arrow">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/arrow.png" alt="Arrow">
                        </div>
                    </div>

                </a>
            </div>
            <div class="list-cat-projects">
                <?php
                $terms = get_terms(array(
                    'taxonomy' => 'cat-projects'
                ));
                foreach ($terms as $term) {
                ?>
                    <a href="<?php echo esc_url(get_term_link($term)); ?>" class="item-cat-project"><?php echo $term->name; ?></a>
                <?php
                }
                ?>
            </div>
            <div class="list-pojects">
                <?php
                $list_projects = get_field('list_projects_sec_6');
                if ($list_projects) : ?>
                    <?php foreach ($list_projects as $post) :
                        setup_postdata($post); ?>
                        <div class="item-projects">
                            <div class="item-projects-cover">
                                <a href="<?php the_permalink(); ?>" class="thumb-projects mc-effect-hov">
                                    <img src="<?php echo get_the_post_thumbnail_url(); ?>" alt="Thumbnail">
                                </a>
                                <?php $term_obj_list = get_the_terms(get_the_ID(), 'cat-projects'); ?>
                                <a href="<?php echo esc_attr(get_term_link($term_obj_list[0]->slug, 'cat-projects')) ?>" class="term-one-project"><?php echo $term_obj_list[0]->name; ?></a>
                                <a href="<?php the_permalink(); ?>" class="title-and-arrow-one-projects">
                                    <div class="title-item">
                                        <?php the_title(); ?>
                                    </div>
                                    <div class="arrow-white">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/arrow-white.png" alt="Arrow">
                                    </div>
                                </a>
                                <div class="desc-item-project">
                                    <?php echo wp_trim_words(get_the_excerpt(), 40, '...'); ?>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?>
                    <?php
                    wp_reset_postdata(); ?>
                <?php endif; ?>
            </div>
        </div>
    </div>
</section>