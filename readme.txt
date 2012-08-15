===========================================

/// CONDITIONAL CLASSES FOR IE
		
		--------
				
		<!--[if IE 7 ]><html lang="en" class="ie7"><![endif]-->
		<!--[if IE 8 ]><html lang="en" class="ie8"><![endif]-->
		<!--[if IE 9 ]><html lang="en" class="ie9"><![endif]-->
		<!--[if (gt IE 9)|!(IE)]><!--><html lang="en"><!--<![endif]-->

		--------
		
		Conditionally adding an extra class onto the html tag.
		This allows us to keep our browser-specific css in the same file.
		--> More: paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither 
		
///

===========================================

/// IE COMPATIBILITY MODE

		--------
		
    <!--[if IE]>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <![endif]-->
		
		--------
		
    Force IE out of compatibility mode if it is turned on.
		Preferabbly this would be in the .htaccess and removed from the page.
    --> More: h5bp.com/i/378

///

===========================================

/// MOBILE VIEWPORT OPTMIZED

		--------
		    
    <meta name="viewport" content="width=device-width">
		
		--------
		
		Tells the browser to assume that the page is as wide as the device.
		--> More: h5bp.com/viewport

///

===========================================

/// MODERNIZR SCRIPT	

		--------
		    
    <!-- Build mondernizr tests here: http://modernizr.com/download/ -->
    <script type="text/javascript" src="modernizr.custom.min.js"></script>
		
		--------
		
		All JavaScript at the bottom, except this Modernizr build.
    Modernizr enables HTML5 elements & feature detects for optimal performance.
		--> More: www.modernizr.com

///

===========================================

///	INSTALL CRHOME FRAME

		--------
		
    <!--[if lt IE 7]><p class=chromeframe>Your browser is <em>ancient!</em> <a href="http://browsehappy.com/">Upgrade to a different browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to experience this site.</p><![endif]-->
	
		--------
		
		Prompt IE 6 users to install Chrome Frame. Remove this if you support IE 6.
		--> More: chromium.org/developers/how-tos/chrome-frame-getting-started
		
///

===========================================