-- ZERO BRANE STUDIO DEBUGGE
-- require("mobdebug").start()

-- WORONA MOBILE APP VERSION: 0.7.3

-- WORONA INITIALIZATION
local worona = require "worona"
require "worona-config.about"
worona:initializeWoronaExtensions()

-- START THE LOG
worona.log:start( { level = "WARNING", reset_log = true, console = true, file = "log", previous_file = "previous_log" } )

-- WORONA APP CONFIGURATION
worona.current_style       = "default"				-- Choose your theme.
worona.wp_url              = "http://www.troubonline.com"  -- Enter the url from which the app will read the data.
worona.app_title           = "TroubOnline"			-- Enter the main title of your app.
worona.app_number_of_posts = 20			-- Choose the max number of posts to be shown in your app. Worona will always retrieve the latest posts.
worona.content_type        = "post"
worona.display_ad		   = true -- true = display an ad in list of articles. false = no advertisements.
worona.ad_image_url		   = "http://www.troubonline.com/wp-content/uploads/2015/10/Photo-Oct-06-8-04-58-PM-e1444176569312.jpg" -- Link to ad image
worona.ad_website_url	   = "http://www.zeatery.com" -- Link to ad vendor's website

-- ABOUT PAGE
-- Configure About page options in: worona-mobile-app/worona-config/about.lua


-- MISCELLANEUS CONFIGURATION
worona.stats = true  -- Stats about worona usage.

-- START THE APPLICATION
worona:do_action( "load_style" )
worona:do_action( "init" )
worona:do_action( "go_to_scene", { scene_type = "scene-list", effect = "fade", time = 500, params = { show_posts = "all" } } )
