# The following code scrapes all the posts from Stan Discourse
################################################################################

require(httr)
require(jsonlite)
require(stringr)
################################################################################

# Demo

id <- 30696 # The post id

res     <- GET(paste0(
               'https://discourse.mc-stan.org/t/',
               id,
               '/2.json?track_visit=true&forceLoad=true'))

out <- fromJSON(rawToChar(res$content))

out$post_stream$posts$id
out$post_stream$posts$name
out$post_stream$posts$username
out$post_stream$posts$created_at
out$post_stream$posts$cooked
out$post_stream$posts$post_number
out$post_stream$posts$post_type
out$post_stream$posts$updated_at
out$post_stream$posts$reply_count
out$post_stream$posts$reply_to_post_number
out$post_stream$posts$quote_count
out$post_stream$posts$incoming_link_count
out$post_stream$posts$reads
out$post_stream$posts$readers_count
out$post_stream$posts$score
out$post_stream$posts$yours
out$post_stream$posts$topic_id
out$post_stream$posts$topic_slug
out$post_stream$posts$display_username
out$post_stream$posts$primary_group_name
out$post_stream$posts$flair_name
out$post_stream$posts$flair_url
out$post_stream$posts$flair_bg_color
out$post_stream$posts$flair_color
out$post_stream$posts$version
out$post_stream$posts$can_edit
out$post_stream$posts$can_delete
out$post_stream$posts$can_recover
out$post_stream$posts$can_wiki
out$post_stream$posts$link_counts
out$post_stream$posts$read
out$post_stream$posts$user_title
out$post_stream$posts$bookmarked
out$post_stream$posts$actions_summary
out$post_stream$posts$moderator
out$post_stream$posts$admin
out$post_stream$posts$staff
out$post_stream$posts$user_id
out$post_stream$posts$hidden
out$post_stream$posts$trust_level
out$post_stream$posts$deleted_at
out$post_stream$posts$user_deleted
out$post_stream$posts$edit_reason
out$post_stream$posts$can_view_edit_history
out$post_stream$posts$wiki
out$post_stream$posts$can_accept_answer
out$post_stream$posts$can_unaccept_answer
out$post_stream$posts$accepted_answer
out$post_stream$posts$reply_to_user
################################################################################

# Need to Figure out how to compile the post ids?

# Worst case scenario, loop from 1 to 100000 and check if there is a valid post
# Then pull the information




























