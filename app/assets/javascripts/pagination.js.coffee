$("document").ready ->
  if $('#infinite-scrolling').size() > 0
    $(window).on 'scroll', ->
      more_posts_url = $('.pagination .next_page a').attr('href')
      scroll = $(window).scrollTop() + window.innerHeight
      height = $(document).height() - 50
      if more_posts_url && ( scroll > height)
        $('.pagination').html('<img src="/assets/ajax-loader.gif" alt="Loading..." title="Loading..." />')
        $.getScript more_posts_url
      return
    return
