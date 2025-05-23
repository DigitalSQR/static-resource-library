
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US">
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="https://cdn.optimizely.com/js/7475192058.js"></script>
    <meta charset="utf-8" />
    <title>Ushahidi</title>
    <link rel="home" href="/" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta property="og:site_name" content="Ushahidi" />
    <meta property="og:url" content="https://www.ushahidi.com/" />
    <meta property="og:title" content="Ushahidi" />

        
        

            <link rel="icon" type="image/png" sizes="16x16" href="/uploads/about-images/ushahidi-stamp.png">
        <link rel="shortcut icon" type="image/png" href="/uploads/about-images/ushahidi-stamp.png">
    
    <link href='//fonts.googleapis.com/css?family=Lato:400,400italic,300,300italic,900,900italic' rel='stylesheet' type='text/css'>

        <link href="https://4f103e355fd70dee701f-b33c860044c19cda3e23f2a03168f599.ssl.cf2.rackcdn.com/assets/css/style.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript">window.liveSettings={api_key:"cbf6bdbeb8a3418c9cd561d5c362d411"};</script>
    <script type="text/javascript" src="//cdn.transifex.com/live.js"></script>

    <!-- Scripts for Coil-integration begins -->
    <script src="https://polyfill.webmonetization.org/polyfill.js"></script>
    <script src="https://cdn.coil.com/donate.js"></script>
    <script>
    window.WebMonetizationScripts.donate({
     paymentPointer: '$twitter.xrptipbot.com/ushahidi'
    })
    </script>
    <!-- Scripts for Coil-integration ends -->
    
</head>

<body class="layout-a">

            <div class="banner">
            <div class="banner-logo">
                <a href="http://tenfour.org" class="logo">TenFour</a>
            </div>

            <div class="banner-cta">
                <h2 class="banner-heading">Is your team safe?</h2>
                <p>Check in with them in an emergency on any device with TenFour by Ushahidi.</p>
                <a href="https://www.tenfour.org" class="button">Learn More</a>
            </div>
        </div>
    
    <!-- <div class="banner banner-alt">
        <div class="banner-logo">
            <a href="http://tenfour.org" class="logo">TenFour</a>
        </div>

        <div class="banner-cta">
            <h2 class="banner-heading">Is your team safe?</h2>
            <p>Check in with them in an emergency on any device with TenFour by Ushahidi.</p>
            <button type="button" name="button">Learn More</button>
        </div>
    </div> -->

    <header class="masthead">
        <h1 class="masthead-flag">
            <a href="//www.ushahidi.com/" class="logo">Ushahidi</a>
        </h1>

        <nav class="menu">
            
<ul id="mainNav" class="nav">
<li class="first"><a href="/features" title="Features">Features</a></li>
<li><a href="/pricing" title="Pricing">Pricing</a></li>
<li><a href="/enterprise-partnerships" title="Enterprise Partnerships">Enterprise Partnerships</a></li>
<li><a href="/donate" title="Why donate?">Why donate?</a></li>
<li><a href="/impact-report" title="Impact">Impact</a></li>
</ul>

            <span class="menu-dropdown">
                <span class="button button-flat" data-toggle="masthead-menu">
                    <svg class="iconic">
                        <use xlink:href="/iconic/iconic-sprite.svg#ellipses"></use>
                    </svg>
                    <span class="button-label">More</span>
                </span>

                
                
                <ul class="menu-secondary" data-toggle-target="masthead-menu">
                                            <li>
                        <a href="/support" title="Support">Support</a>
                    </li>
                
                                            <li>
                        <a href="/discover" title="Discover deployments">Discover deployments</a>
                    </li>
                
                                            <li>
                        <a href="/about" title="About">About</a>
                    </li>
                
                                            <li>
                        <a href="/other-products" title="Other Products">Other Products</a>
                    </li>
                
                                            <li>
                        <a href="/blog" title="Blog">Blog</a>
                    </li>
                
                                    </ul>

            </span>

            <ul class="menu-actions" data-toggle-target="masthead-menu">
                <li><a href="/contact"><span class="button">Contact</span></a></li>
                <li><a href="https://ushahidi.io/login"><span class="button button-beta">Log in</span></a></li>
            </ul>
        </nav>
    </header>

    
<div class="page-context">
    <div class="wrapper">
        <div class="page-context-illustration">
            <div class="page-context-body">
                <h1 class="page-title">Read the crowd</h1>
                <p class="page-heading">Don't just get the data. Get the whole story.</p>

                <div class="device">
                    <img src="../../img/ipad.svg" class="device-bg">
                    <div class="device-viewport">
                        <div class="device-screen" data-img="../../img/device-screen-1.png">
                            <img src="../../img/device-screen-1.png">
                        </div>
                        <div class="device-screen" data-img="../../img/device-screen-2.png"></div>
                        <div class="device-screen" data-img="../../img/device-screen-3.png"></div>
                    </div>
                </div>

                <form action="https://ushahidi.io/create" method="get" class="dark-bg" onSubmit="ga('send','event','forms','submit','deployment signup - home page (header)',1);">
                    <p class="form-heading">Create your first deployment for free</p>

                    <div class="form-field input-and-button">
                        <label for="fieldEmail" class="hidden">Email</label>
                        <input id="fieldEmail" name="email" type="email" placeholder="Your email address" required />
                        <button type="submit" class="button-alpha">Get started</button>
                    </div>
                    <p class="small">or <a href="/enterprise">contact sales</a></p>
                    <p class="small">or <a href="https://ushah.wufoo.com/forms/make-ushahidi-even-better/">download open source code from GitHub now</a></p>
                </form>
            </div>
        </div>
    </div>

    <div class="beacons">
        <i></i>
        <i></i>
        <i></i>
        <i></i>
        <i></i>
        <i></i>
        <i></i>
        <i></i>
        <i></i>
        <i></i>
        <i></i>
        <i></i>
    </div>
</div>

<main role="main">
    
    <section class="benefits">
        <div class="wrapper">
            <div class="benefits-item">
                <div class="benefits-item-illustration">
                    <img src="../../img/benefits/benefit-1.png" />
                </div>
                <div class="benefits-item-body">
                    <h3 class="section-heading">Collect meaningful data</h3>
                    <p>Gather data from any device with custom surveys and crowdsourcing tools</p>
                </div>
            </div>

            <div class="benefits-item">
                <div class="benefits-item-illustration">
                    <img src="../../img/benefits/benefit-2.png" />
                </div>
                <div class="benefits-item-body">
                    <h3 class="section-heading">Get the real-time pulse</h3>
                    <p>Know what’s happening on the ground with a real-time feed of incoming posts</p>
                </div>
            </div>

            <div class="benefits-item">
                <div class="benefits-item-illustration">
                    <img src="../../img/benefits/benefit-3.png" />
                </div>
                <div class="benefits-item-body">
                    <h3 class="section-heading">Respond to issues</h3>
                    <p>Easily manage incoming posts as a team to survey, triage, and respond to the situation</p>
                </div>
            </div>

            <div class="benefits-item">
                <div class="benefits-item-illustration">
                    <img src="../../img/benefits/benefit-4.png" />
                </div>
                <div class="benefits-item-body">
                    <h3 class="section-heading">Tell your story</h3>
                    <p>Visualize an event as it unfolds with maps and interactive charts to make smart decisions</p>
                </div>
            </div>

            <div class="form-field centered">
                <a class="button" href="features.html">View all features</a>
                <p>such as Custom Forms, Data Tools, and Workflows</p>
            </div>
        </div>
    </section><!-- end benefits -->

    <section style="padding: 0;">
                    
<div class="industry" style="background: url('/uploads/industries/background/bg-election-monitoring.png') center center no-repeat; background-size: cover;">
    <div class="wrapper">
        <div class="info">
            <h4 class="subtitle">Ushahidi for</h4>
            <h1 class="title">Election Monitoring</h1>
            <ul class="bullets">
                                    <li>
                        <svg class="iconic">
                          <use xlink:href="../../iconic/iconic-sprite.svg#circle-check"></use>
                        </svg>
                        Easily gather reports from thousands of volunteers on the ground across the country
                    </li>
                                    <li>
                        <svg class="iconic">
                          <use xlink:href="../../iconic/iconic-sprite.svg#circle-check"></use>
                        </svg>
                        Manage thousands of staff triaging and verifying reports with in-built tasks and permissions
                    </li>
                                    <li>
                        <svg class="iconic">
                          <use xlink:href="../../iconic/iconic-sprite.svg#circle-check"></use>
                        </svg>
                        Monitor incident spikes on dashboards in real-time
                    </li>
                            </ul>
            <a href="https://ushahidi.io/create" class="button button-beta">Get Started</a>

                                                <a href="//www.ushahidi.com/blog/2016/05/06/how-ushahidi-helped-thousands-of-peoples-votes-count-in-the-2012-usa-election" class="story">Or see how the <strong>Obama 2012 campaign</strong> used Ushahidi</a>
                                    </div>

        <div class="device">
                        <img src="/uploads/industries/device-screenshot/screen-obama.png" alt="" />
        </div>
    </div>
</div>
                    
<div class="industry" style="background: url('/uploads/industries/background/bg-crisis-response.png') center center no-repeat; background-size: cover;">
    <div class="wrapper">
        <div class="info">
            <h4 class="subtitle">Ushahidi for</h4>
            <h1 class="title">Crisis Response</h1>
            <ul class="bullets">
                                    <li>
                        <svg class="iconic">
                          <use xlink:href="../../iconic/iconic-sprite.svg#circle-check"></use>
                        </svg>
                        Collect reports from victims on the ground and your field staff via SMS, email, web app, and Twitter
                    </li>
                                    <li>
                        <svg class="iconic">
                          <use xlink:href="../../iconic/iconic-sprite.svg#circle-check"></use>
                        </svg>
                        Quickly triage reports and organize rapid response across numerous agencies
                    </li>
                                    <li>
                        <svg class="iconic">
                          <use xlink:href="../../iconic/iconic-sprite.svg#circle-check"></use>
                        </svg>
                        Document ongoing changes in the field with real time mapping and visualization tools
                    </li>
                            </ul>
            <a href="https://ushahidi.io/create" class="button button-beta">Get Started</a>

                                                <a href="//www.ushahidi.com/case-studies/quakemap" class="story">Or see how <strong>Quakemap</strong> uses Ushahidi</a>
                                    </div>

        <div class="device">
                        <img src="/uploads/industries/device-screenshot/screen-quakemap.png" alt="" />
        </div>
    </div>
</div>
                    
<div class="industry" style="background: url('/uploads/industries/background/bg-advocacy.png') center center no-repeat; background-size: cover;">
    <div class="wrapper">
        <div class="info">
            <h4 class="subtitle">Ushahidi for</h4>
            <h1 class="title">Advocacy &amp; Human Rights</h1>
            <ul class="bullets">
                                    <li>
                        <svg class="iconic">
                          <use xlink:href="../../iconic/iconic-sprite.svg#circle-check"></use>
                        </svg>
                        Collects sensitive reports anonymously
                    </li>
                                    <li>
                        <svg class="iconic">
                          <use xlink:href="../../iconic/iconic-sprite.svg#circle-check"></use>
                        </svg>
                        Citizens sign-up for SMS and email Alerts to get immediate news about their area
                    </li>
                                    <li>
                        <svg class="iconic">
                          <use xlink:href="../../iconic/iconic-sprite.svg#circle-check"></use>
                        </svg>
                        Export via CSV with geolocation for data and trend analysis
                    </li>
                            </ul>
            <a href="https://ushahidi.io/create" class="button button-beta">Get Started</a>

                                                <a href="//www.ushahidi.com/case-studies/syria-tracker" class="story">Or see how <strong>Syria Tracker</strong> uses Ushahidi</a>
                                    </div>

        <div class="device">
                        <img src="/uploads/industries/device-screenshot/screen-syriatracker.png" alt="" />
        </div>
    </div>
</div>
            </section>

    <section>
        <section class="audience">
    <header class="centered ten-col-wrapper">
        <h2 class="alpha">Case Studies</h2>
    </header>
    <div class="wrapper">
        <div class="flex-container logo-list-12">
                            <div class="client-logo">
                                            <a href="//www.ushahidi.com/case-studies/world-vision-speed-evidence">
                                                                                                        <img src="/uploads/partners/wv.png" class="multiply">
                                                                            </a>
                </div>
                            <div class="client-logo">
                                                                                                        <img src="/uploads/partners/world_bank.png" class="multiply" style="filter: grayscale(100%); opacity: .5;">
                                                                            </a>
                </div>
                            <div class="client-logo">
                                                                                                        <img src="/uploads/partners/united_nations.png" class="multiply" style="filter: grayscale(100%); opacity: .5;">
                                                                            </a>
                </div>
                            <div class="client-logo">
                                            <a href="//www.ushahidi.com/case-studies/remembering-the-ones-we-lost">
                                                                                                        <img src="/uploads/partners/tufts.png" class="multiply">
                                                                            </a>
                </div>
                            <div class="client-logo">
                                                                                                        <img src="/uploads/partners/state-department.png" class="multiply" style="filter: grayscale(100%); opacity: .5;">
                                                                            </a>
                </div>
                            <div class="client-logo">
                                                                                                        <img src="/uploads/partners/red-cross-logo.png" class="multiply" style="filter: grayscale(100%); opacity: .5;">
                                                                            </a>
                </div>
                            <div class="client-logo">
                                                                                                        <img src="/uploads/partners/paul-allen-foundation.png" class="multiply" style="filter: grayscale(100%); opacity: .5;">
                                                                            </a>
                </div>
                            <div class="client-logo">
                                            <a href="//www.ushahidi.com/case-studies/openexplorer">
                                                                                                        <img src="/uploads/partners/openrov.png" class="multiply">
                                                                            </a>
                </div>
                            <div class="client-logo">
                                            <a href="//www.ushahidi.com/blog/2016/05/06/how-ushahidi-helped-thousands-of-peoples-votes-count-in-the-2012-usa-election">
                                                                                                        <img src="/uploads/partners/obama-2012.png" class="multiply">
                                                                            </a>
                </div>
                            <div class="client-logo">
                                            <a href="//www.ushahidi.com/case-studies/index-on-censorship-eu-project">
                                                                                                        <img src="/uploads/partners/index.png" class="multiply">
                                                                            </a>
                </div>
                            <div class="client-logo">
                                            <a href="//www.ushahidi.com/case-studies/huffington-post-first-hand">
                                                                                                        <img src="/uploads/partners/huffington-post.png" class="multiply">
                                                                            </a>
                </div>
                            <div class="client-logo">
                                                                                                        <img src="/uploads/partners/devex.png" class="multiply" style="filter: grayscale(100%); opacity: .5;">
                                                                            </a>
                </div>
                            <div class="client-logo">
                                            <a href="//www.ushahidi.com/case-studies/crisis-preparedness-platform">
                                                                                                        <img src="/uploads/partners/crisis-preparedness.png" class="multiply">
                                                                            </a>
                </div>
                            <div class="client-logo">
                                            <a href="//www.ushahidi.com/case-studies/vital-signs">
                                                                                                        <img src="/uploads/partners/conservation-intl.png" class="multiply">
                                                                            </a>
                </div>
                            <div class="client-logo">
                                                                                                        <img src="/uploads/partners/bbc.png" class="multiply" style="filter: grayscale(100%); opacity: .5;">
                                                                            </a>
                </div>
                            <div class="client-logo">
                                            <a href="//www.ushahidi.com/case-studies/appi-a-grant-giving-organization">
                                                                                                        <img src="/uploads/partners/azim-premji-foundation.jpg" class="multiply">
                                                                            </a>
                </div>
                            <div class="client-logo">
                                                                                                        <img src="/uploads/partners/aljazeera.png" class="multiply" style="filter: grayscale(100%); opacity: .5;">
                                                                            </a>
                </div>
                            <div class="client-logo">
                                            <a href="//www.ushahidi.com/case-studies/uchaguzi">
                                                                                                        <img src="/uploads/partners/uchaguzi.png" class="multiply">
                                                                            </a>
                </div>
                    </div>
    </div>
</section>
    </section>

    <section>
        <div class="wrapper">
            <div class="video-player">

                <div class="video-container">
            <iframe src="https://player.vimeo.com/video/255812747?app_id=122963" width="560" height="315" frameborder="0" allow="autoplay; fullscreen" allowfullscreen title="Cisco Systems, Inc. - Ushahidi"></iframe>
        </div>
    
    <div class="video-list-container">
        <div class="video-list">

                                                                <div class="video-item" onClick="document.getElementsByTagName( 'iframe' )[0].src='https://player.vimeo.com/video/255812747'">
                        <img src="https://i.vimeocdn.com/video/683318449_640.jpg">
                    </div>
                                                                                <div class="video-item" onClick="document.getElementsByTagName( 'iframe' )[0].src='https://player.vimeo.com/video/97475479'">
                        <img src="https://i.vimeocdn.com/video/479089750_295x166.jpg">
                    </div>
                                                                                <div class="video-item" onClick="document.getElementsByTagName( 'iframe' )[0].src='https://player.vimeo.com/video/95243693'">
                        <img src="https://i.vimeocdn.com/video/477687581_295x166.jpg">
                    </div>
                                                                                <div class="video-item" onClick="document.getElementsByTagName( 'iframe' )[0].src='https://player.vimeo.com/video/129603769'">
                        <img src="https://i.vimeocdn.com/video/521155728_295x166.jpg">
                    </div>
                                                                                <div class="video-item" onClick="document.getElementsByTagName( 'iframe' )[0].src='https://player.vimeo.com/video/172975370'">
                        <img src="https://i.vimeocdn.com/video/579001923_640.jpg">
                    </div>
                                                                                <div class="video-item" onClick="document.getElementsByTagName( 'iframe' )[0].src='https://www.youtube.com/embed/KAwxFZ0yhQ'">
                                                <img src="https://i.ytimg.com/vi/bKAwxFZ0yhQ/mqdefault.jpg">
                    </div>
                                                                                <div class="video-item" onClick="document.getElementsByTagName( 'iframe' )[0].src='https://player.vimeo.com/video/209485585'">
                        <img src="https://i.vimeocdn.com/video/625203850_640.jpg">
                    </div>
                            
        </div>
    </div>

</div>
        </div>
    </section>

    <aside class="break">
        <div class="wrapper">
            <form action="https://ushahidi.io/create" method="get" class="full-width dark-bg" onSubmit="ga('send','event','forms','submit','deployment signup - home page (below the fold)',1);">
                <h3 class="form-heading">Explore Ushahidi</h3>
                <div class="form-field input-and-button">
                    <input type="email" name="email" class="form-control" placeholder="Your email address">
                    <button type="submit" class="button-alpha">Create Deployment</button>
                </div>
            </form>
        </div>
    </aside>

    <section>
        <div class="wrapper">
            <div class="form-field centered">
                <p>We offer hands on services to help you deploy Ushahidi, train your staff, and build custom plugins or integrations</p>
                <a class="button" href="contact.html">Contact Us</a>
            </div>
        </div>
    </section>

</main> <!--end main-->


    <footer class="page-footer">
        <div class="wrapper">
            <a href="/" class="logo">Ushahidi</a>

            <nav class="menu">
                
<ul id="footerNav" class="nav">
<li class="first"><a href="/features" title="Features">Features</a></li>
<li><a href="/pricing" title="Pricing">Pricing</a></li>
<li><a href="/enterprise-partnerships" title="Enterprise Partnerships">Enterprise Partnerships</a></li>
<li><a href="/support" title="Support">Support</a></li>
<li><a href="/blog" title="Blog">Blog</a></li>
<li><a href="/about" title="About">About</a></li>
<li><a href="/other-products" title="Other Products">Other Products</a></li>
<li><a href="/donate" title="Donate">Donate</a></li>
<li><a href="http://ushahidi.com/jobs" title="Jobs" target="_blank">Jobs</a></li>
<li><a href="/security" title="Security">Security</a></li>
</ul>

                <ul class="menu-actions">
                    <li><a href="/contact"><span class="button">Contact</span></a></li>
                    <li><a href="https://ushahidi.io/login"><span class="button button-beta">Log in</span></a></li>
                </ul>
            </nav>

            <p class="privacy">
                <a href="/privacy-policy">Privacy Policy</a>
                <a href="/terms-of-service">Terms of Service</a>
                <a href="/copyright">Copyright</a>
                <a href="mailto:security@ushahidi.com">Security&nbsp;Questions?</a>
            </p>

                        
    
    <ul class="social-links white">
            <li>
            <a href="https://www.facebook.com/ushahidi">
                <img class="svg" src="/img/social/fb.svg" alt="Facebook"/>
                <span class="hidden">Facebook</span>
            </a>
        </li>
            <li>
            <a href="https://twitter.com/ushahidi">
                <img class="svg" src="/img/social/twitter.svg" alt="Twitter"/>
                <span class="hidden">Twitter</span>
            </a>
        </li>
            <li>
            <a href="https://plus.google.com/105364701372360854381/about">
                <img class="svg" src="/img/social/google.svg" alt="Google"/>
                <span class="hidden">Google</span>
            </a>
        </li>
            <li>
            <a href="http://www.meetup.com/ushahidi-community">
                <img class="svg" src="/img/social/meetup.svg" alt="Meetup"/>
                <span class="hidden">Meetup</span>
            </a>
        </li>
        </ul>


            <p>© 2008-2019</p>

        </div>
    </footer>

    <script src="/js/app.js"></script>
    <script src="https://4f103e355fd70dee701f-b33c860044c19cda3e23f2a03168f599.ssl.cf2.rackcdn.com/assets/js/vendor/jquery.fitvids.js">
    </script>

    <script>
      $(document).ready(function(){
        $(".video-wrapper").fitVids();
      });
    </script>

    <script>
$('a.device-trigger').on('click', function(e){
    var trigger = $(this),
        triggerIndex = trigger.index(),
        targetWindow = $('.device-screen:eq('+triggerIndex+')');

    // Change 'active' status for links
    $('a.device-trigger.active').removeClass('active');
    trigger.addClass('active');

    // Load missing images
    $('.device-screen').each(function(){
        if ($(this).is(':empty')) {
            $(this).append('<img src="'+$(this).attr('data-img')+'" />');
        }
    });

    // Fade out current image, fade in active image
    $('.device-screen').not(targetWindow).fadeOut(function(){
        $(targetWindow).fadeIn();
    });

    e.preventDefault();
});
</script>

    <script>
        window.intercomSettings = {
            app_id: "hl5rfiga"
        };

        (function(){var w=window;var ic=w.Intercom;if(typeof ic==="function"){ic('reattach_activator');ic('update',intercomSettings);}else{var d=document;var i=function(){i.c(arguments)};i.q=[];i.c=function(args){i.q.push(args)};w.Intercom=i;function l(){var s=d.createElement('script');s.type='text/javascript';s.async=true;s.src='https://widget.intercom.io/widget/hl5rfiga';var x=d.getElementsByTagName('script')[0];x.parentNode.insertBefore(s,x);}if(w.attachEvent){w.attachEvent('onload',l);}else{w.addEventListener('load',l,false);}}})()
    </script>

    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-12063676-1', 'auto');
      ga('send', 'pageview');
    </script>

</body>
</html>
