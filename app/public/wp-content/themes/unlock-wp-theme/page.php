<?php
while (have_posts()){
    the_post(); ?>
<h1>Ez az oldal nem egy poszt</h1>
<h2> <?php the_title() ?></h2>
<?php the_content();  }
?>