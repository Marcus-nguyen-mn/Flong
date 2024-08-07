<section class="mc_question abu_solution">
    <div class="mc-container">
        <div class="title_question" data-aos="fade-down" data-aos-duration="900">
            <?php echo get_field("title_abu_solutions"); ?>
        </div>
        <div class="mc_question_cover">
            <div class="left_question" data-aos="fade-right" data-aos-duration="800">
                <div class="left_quest_cover">
                    <?php $count_ques=1;while( have_rows('abu_list_solutions') ) : the_row(); ?>
                    <div class="item_quest item_quest_dom <?php if($count_ques == 1){echo "active";} ?>" data-quest="<?php echo '.answer_show'.$count_ques; ?>">
                        <?php echo get_sub_field("abu_solution_name"); ?>
                    </div>
                    <?php 
                        $count_ques++;endwhile;
                    ?>
                </div>
            </div>
            <div class="right_question" data-aos="fade-left" data-aos-duration="800">
                <div class="right_question_cover">
                    <div class="banner_mh_quest">
                        <div class="ig">
                            <img src="<?php echo get_field("image_abu_solutions"); ?>" alt="Giải pháp">
                        </div>
                    </div>
                    <div class="cover-answer">
                        <?php $count_answer=1;while( have_rows('abu_list_solutions') ) : the_row(); ?>
                        <div class="answer answer_dom <?php echo 'answer_show'.$count_answer; ?> <?php if($count_answer == 1){echo "active";} ?>">
                            <?php echo get_sub_field("abu_item_solutions_content"); ?>
                        </div>
                        <?php 
                            $count_answer++;endwhile;
                        ?>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</section>