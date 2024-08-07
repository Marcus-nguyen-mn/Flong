<section class="mc_question">
    <div class="mc-container">
        <div class="title_question" data-aos="fade-down" data-aos-duration="900">
            <?php echo get_field("title_section_9"); ?>
        </div>
        <div class="mc_question_cover">
            <div class="left_question" data-aos="fade-right" data-aos-duration="800">
                <div class="left_quest_cover">
                    <?php $count_ques=1;while( have_rows('list_question_sec_9') ) : the_row(); ?>
                    <div class="item_quest item_quest_dom <?php if($count_ques == 1){echo "active";} ?>" data-quest="<?php echo '.answer_show'.$count_ques; ?>">
                        <?php echo get_sub_field("item_question_sec_9"); ?>
                    </div>
                    <?php 
                        $count_ques++;endwhile;
                    ?>
                </div>
            </div>
            <div class="right_question" data-aos="fade-left" data-aos-duration="800">
                <div class="right_question_cover">
                    <div class="banner_mh_quest">
                        <div class="txt">
                            <?php echo "Giải đáp"; ?>
                        </div>
                        <div class="ig">
                            <img src="<?php echo get_field("image_mh_sec_9"); ?>" alt="Questions">
                        </div>
                    </div>
                    <div class="cover-answer">
                        <?php $count_answer=1;while( have_rows('list_question_sec_9') ) : the_row(); ?>
                        <div class="answer answer_dom <?php echo 'answer_show'.$count_answer; ?> <?php if($count_answer == 1){echo "active";} ?>">
                            <?php echo get_sub_field("anser_sec_9"); ?>
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