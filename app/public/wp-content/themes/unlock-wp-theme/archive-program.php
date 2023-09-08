<?php
get_header();
pagebanner(array(
    'title' => 'All programs',
    'subtitle' => 'This something for everyone. have look around'
))
?>
<div class="container container--narrow page-section">
    <ul class="link-list min-list">
        <?php
        while (have_posts()) {
            the_post(); ?>
            <li><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></li>

        <?php
        }
        echo paginate_links();
        ?>
    </ul>
</div>
<?php get_footer(); ?>