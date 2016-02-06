Template.main.helpers
  Swiper: -> Swiper
  
Swiper = new Swipe(['home', 'posts','upload','favorite', 'settings'])

Template.main.rendered = ->

  # initial page
  Swiper.setInitialPage('home')

  # the first page home
  Tracker.autorun ->
    if Swiper.pageIs('home')
      Swiper.leftRight(null, 'posts')
      
 # the posts page
  Tracker.autorun ->
    if Swiper.pageIs('posts')
      Swiper.leftRight('home', 'upload')

 # the upload page
  Tracker.autorun ->
    if Swiper.pageIs('upload')
      Swiper.leftRight('posts', 'favorite')

# the favorite page
  Tracker.autorun ->
    if Swiper.pageIs('favorite')
      Swiper.leftRight('upload', 'settings')


  Tracker.autorun ->
    if Swiper.pageIs('settings')
        Swiper.leftRight('favorite', null)

#   Tracker.autorun ->
#     if Swiper.pageIs('page5')
#       Swiper.leftRight('page4', null)

