<?php
function university_post_types()
{
    register_post_type('event', array(
        'public' => true,
        'labels' => array(
            'name' => 'Events',
            'add_new_item' => 'Add New Item',
            'edit_item' => 'Edit Item',
            'all_items' => "All Events",
            'silgular_name' => 'Event'
        ),
        'menu_icon' => 'dashicons-calendar'
    ));
}

add_action('init', 'university_post_types');