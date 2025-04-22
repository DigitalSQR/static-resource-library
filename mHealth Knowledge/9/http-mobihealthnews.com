<!DOCTYPE html>
<html lang="en" dir="ltr" prefix="og: http://ogp.me/ns# article: http://ogp.me/ns/article# book: http://ogp.me/ns/book# profile: http://ogp.me/ns/profile# video: http://ogp.me/ns/video# product: http://ogp.me/ns/product# content: http://purl.org/rss/1.0/modules/content/ dc: http://purl.org/dc/terms/ foaf: http://xmlns.com/foaf/0.1/ rdfs: http://www.w3.org/2000/01/rdf-schema# sioc: http://rdfs.org/sioc/ns# sioct: http://rdfs.org/sioc/types# skos: http://www.w3.org/2004/02/skos/core# xsd: http://www.w3.org/2001/XMLSchema#">
<head>
  <link rel="profile" href="http://www.w3.org/1999/xhtml/vocab" />
  <meta charset="utf-8"><script type="text/javascript">window.NREUM||(NREUM={}),__nr_require=function(e,n,t){function r(t){if(!n[t]){var o=n[t]={exports:{}};e[t][0].call(o.exports,function(n){var o=e[t][1][n];return r(o||n)},o,o.exports)}return n[t].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<t.length;o++)r(t[o]);return r}({1:[function(e,n,t){function r(){}function o(e,n,t){return function(){return i(e,[c.now()].concat(u(arguments)),n?null:this,t),n?void 0:this}}var i=e("handle"),a=e(3),u=e(4),f=e("ee").get("tracer"),c=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],d="api-",l=d+"ixn-";a(p,function(e,n){s[n]=o(d+n,!0,"api")}),s.addPageAction=o(d+"addPageAction",!0),s.setCurrentRouteName=o(d+"routeName",!0),n.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,n){var t={},r=this,o="function"==typeof n;return i(l+"tracer",[c.now(),e,t],r),function(){if(f.emit((o?"":"no-")+"fn-start",[c.now(),r,o],t),o)try{return n.apply(this,arguments)}catch(e){throw f.emit("fn-err",[arguments,this,e],t),e}finally{f.emit("fn-end",[c.now()],t)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,n){m[n]=o(l+n)}),newrelic.noticeError=function(e,n){"string"==typeof e&&(e=new Error(e)),i("err",[e,c.now(),!1,n])}},{}],2:[function(e,n,t){function r(e,n){if(!o)return!1;if(e!==o)return!1;if(!n)return!0;if(!i)return!1;for(var t=i.split("."),r=n.split("."),a=0;a<r.length;a++)if(r[a]!==t[a])return!1;return!0}var o=null,i=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var u=navigator.userAgent,f=u.match(a);f&&u.indexOf("Chrome")===-1&&u.indexOf("Chromium")===-1&&(o="Safari",i=f[1])}n.exports={agent:o,version:i,match:r}},{}],3:[function(e,n,t){function r(e,n){var t=[],r="",i=0;for(r in e)o.call(e,r)&&(t[i]=n(r,e[r]),i+=1);return t}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],4:[function(e,n,t){function r(e,n,t){n||(n=0),"undefined"==typeof t&&(t=e?e.length:0);for(var r=-1,o=t-n||0,i=Array(o<0?0:o);++r<o;)i[r]=e[n+r];return i}n.exports=r},{}],5:[function(e,n,t){n.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,n,t){function r(){}function o(e){function n(e){return e&&e instanceof r?e:e?f(e,u,i):i()}function t(t,r,o,i){if(!d.aborted||i){e&&e(t,r,o);for(var a=n(o),u=v(t),f=u.length,c=0;c<f;c++)u[c].apply(a,r);var p=s[y[t]];return p&&p.push([b,t,r,a]),a}}function l(e,n){h[e]=v(e).concat(n)}function m(e,n){var t=h[e];if(t)for(var r=0;r<t.length;r++)t[r]===n&&t.splice(r,1)}function v(e){return h[e]||[]}function g(e){return p[e]=p[e]||o(t)}function w(e,n){c(e,function(e,t){n=n||"feature",y[t]=n,n in s||(s[n]=[])})}var h={},y={},b={on:l,addEventListener:l,removeEventListener:m,emit:t,get:g,listeners:v,context:n,buffer:w,abort:a,aborted:!1};return b}function i(){return new r}function a(){(s.api||s.feature)&&(d.aborted=!0,s=d.backlog={})}var u="nr@context",f=e("gos"),c=e(3),s={},p={},d=n.exports=o();d.backlog=s},{}],gos:[function(e,n,t){function r(e,n,t){if(o.call(e,n))return e[n];var r=t();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,n,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return e[n]=r,r}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],handle:[function(e,n,t){function r(e,n,t,r){o.buffer([e],r),o.emit(e,n,t)}var o=e("ee").get("handle");n.exports=r,r.ee=o},{}],id:[function(e,n,t){function r(e){var n=typeof e;return!e||"object"!==n&&"function"!==n?-1:e===window?0:a(e,i,function(){return o++})}var o=1,i="nr@id",a=e("gos");n.exports=r},{}],loader:[function(e,n,t){function r(){if(!E++){var e=x.info=NREUM.info,n=l.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&n))return s.abort();c(y,function(n,t){e[n]||(e[n]=t)}),f("mark",["onload",a()+x.offset],null,"api");var t=l.createElement("script");t.src="https://"+e.agent,n.parentNode.insertBefore(t,n)}}function o(){"complete"===l.readyState&&i()}function i(){f("mark",["domContent",a()+x.offset],null,"api")}function a(){return O.exists&&performance.now?Math.round(performance.now()):(u=Math.max((new Date).getTime(),u))-x.offset}var u=(new Date).getTime(),f=e("handle"),c=e(3),s=e("ee"),p=e(2),d=window,l=d.document,m="addEventListener",v="attachEvent",g=d.XMLHttpRequest,w=g&&g.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:g,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var h=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1130.min.js"},b=g&&w&&w[m]&&!/CriOS/.test(navigator.userAgent),x=n.exports={offset:u,now:a,origin:h,features:{},xhrWrappable:b,userAgent:p};e(1),l[m]?(l[m]("DOMContentLoaded",i,!1),d[m]("load",r,!1)):(l[v]("onreadystatechange",o),d[v]("onload",r)),f("mark",["firstbyte",u],null,"api");var E=0,O=e(5)},{}]},{},["loader"]);</script>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="shortcut icon" href="https://www.mobihealthnews.com/sites/all/themes/mobihealth_theme/favicon.ico" type="image/vnd.microsoft.icon" />
<!-- Centro Pixel -->
<script type="text/javascript">
var ssaUrl = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'centro.pixel.ad/iap/4ed488b0ad5a7302';
new Image().src = ssaUrl;
</script>
<!-- Centro Pixel END. --><meta name="description" content="MobiHealthNews is digital health&#039;s publication of record covering breaking news and contextualizing the trends for healthcare innovators." />
<meta name="keywords" content="digital health news, mobile health news, health apps, medical apps, fitness apps" />
<meta name="generator" content="Drupal 7 (http://drupal.org)" />
<link rel="canonical" href="https://www.mobihealthnews.com/" />
<link rel="shortlink" href="https://www.mobihealthnews.com/" />
<meta property="og:site_name" content="MobiHealthNews" />
<meta property="og:type" content="website" />
<meta property="og:url" content="https://www.mobihealthnews.com/" />
<meta property="og:title" content="MobiHealthNews" />
<meta property="og:description" content="MobiHealthNews is digital health&#039;s publication of record covering breaking news and contextualizing the trends for healthcare in" />
<meta name="twitter:card" content="summary" />
<meta name="twitter:url" content="https://www.mobihealthnews.com/" />
<meta name="twitter:title" content="MobiHealthNews" />
<meta name="twitter:description" content="MobiHealthNews is digital health&#039;s publication of record covering breaking news and contextualizing the trends for healthcare in" />
<meta name="msvalidate.01" content="E23E222F362070D7E155C1DCE851E7E9" />
<meta name="google-site-verification" content="F0c38at4EUXC1BvxWmtxK1X8nm-XFctV2t3TvhaB7L8" />
<meta name="yandex-verification" content="cbc450364ba44df8" />
  <title>MobiHealthNews | MobiHealthNews is digital health's publication of record covering breaking news and contextualizing the trends for healthcare in</title>
  <style>
@import url("https://www.mobihealthnews.com/modules/system/system.base.css?py30ld");
</style>
<style>
@import url("https://www.mobihealthnews.com/sites/all/modules/contrib/date/date_api/date.css?py30ld");
@import url("https://www.mobihealthnews.com/sites/all/modules/contrib/date/date_popup/themes/datepicker.1.7.css?py30ld");
@import url("https://www.mobihealthnews.com/modules/field/theme/field.css?py30ld");
@import url("https://www.mobihealthnews.com/sites/all/modules/custom/himss_coverage/lib/carousel/assets/owl.carousel.min.css?py30ld");
@import url("https://www.mobihealthnews.com/modules/node/node.css?py30ld");
@import url("https://www.mobihealthnews.com/sites/all/modules/contrib/views/css/views.css?py30ld");
@import url("https://www.mobihealthnews.com/sites/all/modules/contrib/ckeditor/css/ckeditor.css?py30ld");
</style>
<style>
@import url("https://www.mobihealthnews.com/sites/all/modules/contrib/colorbox/styles/default/colorbox_style.css?py30ld");
@import url("https://www.mobihealthnews.com/sites/all/modules/contrib/ctools/css/ctools.css?py30ld");
@import url("https://www.mobihealthnews.com/sites/all/modules/custom/himss_coverage/lib/himss_coverage.css?py30ld");
@import url("https://www.mobihealthnews.com/sites/all/modules/custom/himss_taxonomy_topics_icon/style.css?py30ld");
@import url("https://www.mobihealthnews.com/sites/all/themes/mobihealth_theme/ds_layouts/2_rows/2_rows.css?py30ld");
@import url("https://www.mobihealthnews.com/sites/all/themes/mobihealth_theme/ds_layouts/homepage/homepage.css?py30ld");
@import url("https://www.mobihealthnews.com/sites/all/modules/contrib/eu_cookie_compliance/css/eu_cookie_compliance.css?py30ld");
@import url("https://www.mobihealthnews.com/sites/all/modules/contrib/field_collection/field_collection.theme.css?py30ld");
@import url("https://www.mobihealthnews.com/sites/all/libraries/fontawesome/css/font-awesome.css?py30ld");
</style>
<style>#sliding-popup.sliding-popup-bottom,#sliding-popup.sliding-popup-bottom .eu-cookie-withdraw-banner,.eu-cookie-withdraw-tab{background:#0e774a;}#sliding-popup.sliding-popup-bottom.eu-cookie-withdraw-wrapper{background:transparent}#sliding-popup .popup-content #popup-text h1,#sliding-popup .popup-content #popup-text h2,#sliding-popup .popup-content #popup-text h3,#sliding-popup .popup-content #popup-text p,.eu-cookie-compliance-secondary-button,.eu-cookie-withdraw-tab{color:#ffffff !important;}.eu-cookie-withdraw-tab{border-color:#ffffff;}
</style>
<link type="text/css" rel="stylesheet" href="//cdn.jsdelivr.net/bootstrap/3.0.2/css/bootstrap.css" media="all" />
<style>
@import url("https://www.mobihealthnews.com/sites/all/themes/bootstrap/css/3.0.2/overrides.min.css?py30ld");
@import url("https://www.mobihealthnews.com/sites/all/themes/mobihealth_theme/css/style-default.css?py30ld");
</style>
  <!-- HTML5 element support for IE6-8 -->
  <!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv-printshiv.min.js"></script>
  <![endif]-->
  <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0];var j=d.createElement(s);var dl=l!='dataLayer'?'&l='+l:'';j.type='text/javascript';j.src='https://www.googletagmanager.com/gtm.js?id='+i+dl+'';j.async=true;f.parentNode.insertBefore(j,f);})(window,document,'script','dataLayer','GTM-T5XMFRJ');</script>
<script src="https://www.mobihealthnews.com/sites/default/files/js/js_EebRuRXFlkaf356V0T2K_8cnUVfCKesNTxdvvPSEhCM.js"></script>
<script src="https://www.mobihealthnews.com/sites/default/files/js/js_TVTqjz8JHRb2KK9hlzuk0YsjzD013dKyYX_OTz-2VXU.js"></script>
<script src="//cdn.jsdelivr.net/bootstrap/3.0.2/js/bootstrap.min.js"></script>
<script src="https://www.mobihealthnews.com/sites/default/files/js/js_7xpKQLdt_NxIxTwHbqPV1N9vy93Idvb3WS5Wozl2dGI.js"></script>
<script src="https://www.mobihealthnews.com/sites/default/files/js/js_KIGEGyTP6El__rMMoeDhxwfUAv36O7P0oo2zB-Wbx4M.js"></script>
<script>setTimeout(function(){var a=document.createElement("script");
var b=document.getElementsByTagName("script")[0];
a.src=document.location.protocol+"//script.crazyegg.com/pages/scripts/0030/3128.js?"+Math.floor(new Date().getTime()/3600000);
a.async=true;a.type="text/javascript";b.parentNode.insertBefore(a,b)}, 1);</script>
<script>var _vwo_code=(function(){
var account_id=131086,
settings_tolerance=2000,
library_tolerance=2500,
use_existing_jquery=false,
// DO NOT EDIT BELOW THIS LINE
f=false,d=document;return{use_existing_jquery:function(){return use_existing_jquery;},library_tolerance:function(){return library_tolerance;},finish:function(){if(!f){f=true;var a=d.getElementById('_vis_opt_path_hides');if(a)a.parentNode.removeChild(a);}},finished:function(){return f;},load:function(a){var b=d.createElement('script');b.src=a;b.type='text/javascript';b.innerText;b.onerror=function(){_vwo_code.finish();};d.getElementsByTagName('head')[0].appendChild(b);},init:function(){settings_timer=setTimeout('_vwo_code.finish()',settings_tolerance);var a=d.createElement('style'),b='body{opacity:0 !important;filter:alpha(opacity=0) !important;background:none !important;}',h=d.getElementsByTagName('head')[0];a.setAttribute('id','_vis_opt_path_hides');a.setAttribute('type','text/css');if(a.styleSheet)a.styleSheet.cssText=b;else a.appendChild(d.createTextNode(b));h.appendChild(a);this.load('//dev.visualwebsiteoptimizer.com/j.php?a='+account_id+'&u='+encodeURIComponent(d.URL)+'&r='+Math.random());return settings_timer;}};}());_vwo_settings_timer=_vwo_code.init();</script>
<script src="https://www.mobihealthnews.com/sites/default/files/js/js_zsU7pE_En9PuEzx00IjN_iCxIwgABAiEwJNkh1iTG9k.js"></script>
<script src="https://use.typekit.net/foq7kex.js"></script>
<script>try{Typekit.load({ async: true });}catch(e){}</script>
<script src="https://www.mobihealthnews.com/sites/default/files/js/js_G4ktX1AVAKC9rlVK4tyuuyYJG4i4Pq-OFUqRTUp0oDs.js"></script>
<script>jQuery.extend(Drupal.settings, {"basePath":"\/","pathPrefix":"","ajaxPageState":{"theme":"mobihealth_theme","theme_token":"EvXgZpYHE2nQXIoVoutOdoDNLaoRu8i4fnC1zutn-u4","js":{"sites\/all\/modules\/custom\/oas_blocks\/pushdown_script.js":1,"0":1,"1":1,"sites\/all\/themes\/bootstrap\/js\/bootstrap.js":1,"sites\/all\/modules\/contrib\/eu_cookie_compliance\/js\/eu_cookie_compliance.js":1,"2":1,"sites\/all\/modules\/contrib\/jquery_update\/replace\/jquery\/1.10\/jquery.min.js":1,"misc\/jquery-extend-3.4.0.js":1,"misc\/jquery.once.js":1,"misc\/drupal.js":1,"sites\/all\/modules\/contrib\/eu_cookie_compliance\/js\/jquery.cookie-1.4.1.min.js":1,"\/\/cdn.jsdelivr.net\/bootstrap\/3.0.2\/js\/bootstrap.min.js":1,"sites\/all\/modules\/custom\/himss_coverage\/lib\/carousel\/owl.carousel.min.js":1,"sites\/all\/modules\/custom\/himss_coverage\/lib\/himss_coverage.js":1,"sites\/all\/modules\/custom\/himss_taxonomy\/js\/metadata.js":1,"sites\/all\/modules\/custom\/himss_taxonomy\/js\/oas.js":1,"sites\/all\/modules\/contrib\/colorbox\/js\/colorbox.js":1,"sites\/all\/modules\/contrib\/colorbox\/styles\/default\/colorbox_style.js":1,"sites\/all\/modules\/custom\/mobihealth_display\/subscription.js":1,"sites\/all\/modules\/custom\/mobihealth_display\/frontpage_theming.js":1,"sites\/all\/modules\/custom\/mobihealth_display\/mobihealth_display_sitewide.js":1,"3":1,"4":1,"sites\/all\/modules\/contrib\/field_group\/field_group.js":1,"https:\/\/use.typekit.net\/foq7kex.js":1,"5":1,"sites\/all\/themes\/mobihealth_theme\/js\/main_menu.js":1},"css":{"modules\/system\/system.base.css":1,"sites\/all\/modules\/contrib\/date\/date_api\/date.css":1,"sites\/all\/modules\/contrib\/date\/date_popup\/themes\/datepicker.1.7.css":1,"modules\/field\/theme\/field.css":1,"sites\/all\/modules\/custom\/himss_coverage\/lib\/carousel\/assets\/owl.carousel.min.css":1,"modules\/node\/node.css":1,"sites\/all\/modules\/contrib\/views\/css\/views.css":1,"sites\/all\/modules\/contrib\/ckeditor\/css\/ckeditor.css":1,"sites\/all\/modules\/contrib\/colorbox\/styles\/default\/colorbox_style.css":1,"sites\/all\/modules\/contrib\/ctools\/css\/ctools.css":1,"sites\/all\/modules\/custom\/himss_coverage\/lib\/himss_coverage.css":1,"sites\/all\/modules\/custom\/himss_taxonomy_topics_icon\/style.css":1,"sites\/all\/themes\/mobihealth_theme\/ds_layouts\/2_rows\/2_rows.css":1,"sites\/all\/themes\/mobihealth_theme\/ds_layouts\/homepage\/homepage.css":1,"sites\/all\/modules\/contrib\/eu_cookie_compliance\/css\/eu_cookie_compliance.css":1,"sites\/all\/modules\/contrib\/field_collection\/field_collection.theme.css":1,"sites\/all\/libraries\/fontawesome\/css\/font-awesome.css":1,"0":1,"\/\/cdn.jsdelivr.net\/bootstrap\/3.0.2\/css\/bootstrap.css":1,"sites\/all\/themes\/bootstrap\/css\/3.0.2\/overrides.min.css":1,"sites\/all\/themes\/mobihealth_theme\/css\/style-default.css":1}},"colorbox":{"opacity":"0.85","current":"{current} of {total}","previous":"\u00ab Prev","next":"Next \u00bb","close":"Close","maxWidth":"98%","maxHeight":"98%","fixed":true,"mobiledetect":true,"mobiledevicewidth":"480px"},"better_exposed_filters":{"views":{"top_3_news":{"displays":{"block_7":{"filters":[]},"block_6":{"filters":[]},"block_5":{"filters":[]},"page":{"filters":[]},"block_4":{"filters":[]},"block_3":{"filters":[]}}},"events":{"displays":{"block":{"filters":[]}}},"mobihealthnews2016":{"displays":{"block":{"filters":[]}}},"most_read_news":{"displays":{"block_3":{"filters":[]}}},"projects":{"displays":{"block_1":{"filters":[]}}},"video":{"displays":{"block_1":{"filters":[]}}},"white_papers":{"displays":{"block_2":{"filters":[]}}}}},"eu_cookie_compliance":{"popup_enabled":1,"popup_agreed_enabled":0,"popup_hide_agreed":0,"popup_clicking_confirmation":0,"popup_scrolling_confirmation":false,"popup_html_info":"\u003Cdiv\u003E\n  \u003Cdiv class =\u0022popup-content info\u0022\u003E\n    \u003Cdiv id=\u0022popup-text\u0022\u003E\n      \u003C!--smart_paging_filter--\u003E\u003Ch2\u003EWelcome to HIMSS\u003C\/h2\u003E\n\u003Cp\u003EThis site uses technologies such as cookies to provide a better user experience by personalising content and ads, analysing web traffic and trends, and improving site operations. We may share information about your use of the site with third parties in accordance with our \u003Cu\u003E\u003Ca href=\u0022http:\/\/www.himss.eu\/privacy-policy\u0022\u003EPrivacy Policy\u003C\/a\u003E\u003C\/u\u003E. By continuing to use this site you agree that we can save cookies on your device, unless you have disabled them. You can change your cookie settings at any time by visiting our \u003Cu\u003E\u003Ca href=\u0022http:\/\/www.himss.eu\/privacy-policy#cookies\u0022\u003ECookie Policy\u003C\/a\u003E\u003C\/u\u003E, but parts of our site may not function correctly without them.\u003C\/p\u003E\n    \u003C\/div\u003E\n    \u003Cdiv id=\u0022popup-buttons\u0022\u003E\n      \u003Cbutton type=\u0022button\u0022 class=\u0022agree-button eu-cookie-compliance-default-button\u0022\u003EContinue\u003C\/button\u003E\n              \u003Cbutton type=\u0022button\u0022 class=\u0022find-more-button eu-cookie-compliance-more-button agree-button eu-cookie-compliance-default-button\u0022\u003EMore information\u003C\/button\u003E\n                \u003C\/div\u003E\n  \u003C\/div\u003E\n\u003C\/div\u003E","use_mobile_message":false,"mobile_popup_html_info":"\u003Cdiv\u003E\n  \u003Cdiv class =\u0022popup-content info\u0022\u003E\n    \u003Cdiv id=\u0022popup-text\u0022\u003E\n      \u003C!--smart_paging_filter--\u003E    \u003C\/div\u003E\n    \u003Cdiv id=\u0022popup-buttons\u0022\u003E\n      \u003Cbutton type=\u0022button\u0022 class=\u0022agree-button eu-cookie-compliance-default-button\u0022\u003EContinue\u003C\/button\u003E\n              \u003Cbutton type=\u0022button\u0022 class=\u0022find-more-button eu-cookie-compliance-more-button agree-button eu-cookie-compliance-default-button\u0022\u003EMore information\u003C\/button\u003E\n                \u003C\/div\u003E\n  \u003C\/div\u003E\n\u003C\/div\u003E\n","mobile_breakpoint":"768","popup_html_agreed":"\u003Cdiv\u003E\n  \u003Cdiv class=\u0022popup-content agreed\u0022\u003E\n    \u003Cdiv id=\u0022popup-text\u0022\u003E\n      \u003C!--smart_paging_filter--\u003E\u003Ch2\u003EThank you for accepting cookies\u003C\/h2\u003E\n\u003Cp\u003EYou can now hide this message or find out more about cookies.\u003C\/p\u003E\n    \u003C\/div\u003E\n    \u003Cdiv id=\u0022popup-buttons\u0022\u003E\n      \u003Cbutton type=\u0022button\u0022 class=\u0022hide-popup-button eu-cookie-compliance-hide-button\u0022\u003EHide\u003C\/button\u003E\n              \u003Cbutton type=\u0022button\u0022 class=\u0022find-more-button eu-cookie-compliance-more-button-thank-you\u0022 \u003EMore info\u003C\/button\u003E\n          \u003C\/div\u003E\n  \u003C\/div\u003E\n\u003C\/div\u003E","popup_use_bare_css":false,"popup_height":"auto","popup_width":"100%","popup_delay":1000,"popup_link":"\/privacy-policy","popup_link_new_window":0,"popup_position":null,"popup_language":"en","store_consent":false,"better_support_for_screen_readers":0,"reload_page":0,"domain":"","popup_eu_only_js":0,"cookie_lifetime":100,"cookie_session":false,"disagree_do_not_show_popup":0,"method":"default","whitelisted_cookies":"","withdraw_markup":"\u003Cbutton type=\u0022button\u0022 class=\u0022eu-cookie-withdraw-tab\u0022\u003EPrivacy settings\u003C\/button\u003E\n\u003Cdiv class=\u0022eu-cookie-withdraw-banner\u0022\u003E\n  \u003Cdiv class=\u0022popup-content info\u0022\u003E\n    \u003Cdiv id=\u0022popup-text\u0022\u003E\n      \u003C!--smart_paging_filter--\u003E\u003Ch2\u003EWe use cookies on this site to enhance your user experience\u003C\/h2\u003E\n\u003Cp\u003EYou have given your consent for us to set cookies.\u003C\/p\u003E\n    \u003C\/div\u003E\n    \u003Cdiv id=\u0022popup-buttons\u0022\u003E\n      \u003Cbutton type=\u0022button\u0022 class=\u0022eu-cookie-withdraw-button\u0022\u003EWithdraw consent\u003C\/button\u003E\n    \u003C\/div\u003E\n  \u003C\/div\u003E\n\u003C\/div\u003E\n","withdraw_enabled":false},"urlIsAjaxTrusted":{"\/":true},"field_group":{"div":"default"},"bootstrap":{"anchorsFix":1,"anchorsSmoothScrolling":1,"formHasError":1,"popoverEnabled":1,"popoverOptions":{"animation":1,"html":0,"placement":"right","selector":"","trigger":"click","triggerAutoclose":1,"title":"","content":"","delay":0,"container":"body"},"tooltipEnabled":1,"tooltipOptions":{"animation":1,"html":0,"placement":"auto left","selector":"","trigger":"hover focus","delay":0,"container":"body"}}});</script>
  <!-- Begin Data Layer -->
  <script type="text/javascript">
    window.Et = window.Et || {};
    window.Et.metadata = {"type":"landing_page","marketo_params":"type=landing_page","oas_hostname":"oasc17.247realmedia.com","oas_sitepage":"mobihealthnews.com\/home","oas_listpos":"Top,Right1,Right2,Position3,Position4,Bottom1","oas_query":""};
    window.Et.metadata.himss_region = typeof users_region === "string" ? users_region : "global";    window.dataLayer = window.dataLayer || []; window.dataLayer.push(window.Et.metadata);
  </script>
  <!-- End Data Layer -->
      <!-- OAS Rich Media -->
    <script type="text/javascript">
      <!--//--><![CDATA[//><!--
      (function() {
        var url = document.location.protocol + '//oasc17.247realmedia.com/RealMedia/ads/adstream_mjx.ads/',
          sitepage = 'mobihealthnews.com/home',
          listpos = 'Top,Right1,Right2,Position3,Position4,Bottom1',
          query = '',
          rns = (Math.random() + "").substring(2, 11);
          document.write('<script src="' + url + sitepage + '/1' + rns + '@' + listpos +  '?' + query + '"><\/script>');
      })();
      //--><!]]>
    </script>
  <!-- End OAS Rich Media -->
</head>
<body class="html front not-logged-in no-sidebars page-homepage">
  <div id="skip-link">
    <a href="#main-content" class="element-invisible element-focusable">Skip to main content</a>
  </div>
  <noscript aria-hidden="true"><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-T5XMFRJ" height="0" width="0" style="display:none;visibility:hidden" title="Google Tag Manager">Google Tag Manager</iframe></noscript>    <div class="region region-scripts-ini">
    <section id="block-block-2" class="block block-block clearfix">

      
  <!--smart_paging_filter--><style type="text/css">
<!--/*--><![CDATA[/* ><!--*/
@media only screen and (max-width: 991px) and (min-width: 768px){
header.navbar>.container ul.dropdown-menu {
    position:absolute;
}
}
@media only screen and (min-width: 768px) {
header.navbar>.container .navigation-right.navbar-collapse {
    float: right;
padding-left: 0;
}
}
.ds-bottom {
    margin-top: 30px;
}

/*--><!]]>*/
</style><script src="/sites/all/modules/contrib/jquery_update/replace/ui/external/jquery.cookie.js"></script>
</section>
  </div>
<header id="navbar" role="banner" class="navbar navbar-default">

  <div class="supernav_signup">
    <div class="container">
          </div>
  </div>

  <div class="container">
    <div class="navbar-header">
              <a class="logo navbar-btn pull-left" href="/" title="Home">
          <img src="https://www.mobihealthnews.com/sites/all/themes/mobihealth_theme/logo.png" alt="Home" />
        </a>
      
      
      <!-- .btn-navbar is used as the toggle for collapsed navbar content -->
<!--      <button type="button" class="menu-toggle">-->
<!--        <span class="sr-only">Toggle navigation</span>-->
<!--        <span class="icon-bar"></span>-->
<!--        <span class="icon-bar"></span>-->
<!--        <span class="icon-bar"></span>-->
<!--      </button>-->

      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>

    <div class="navigation-right navbar-collapse row">
        <div class="regions-menu-wrapper">
          <div class="regions-menu">
                          <section id="block-himss-region-switcher-regions-dropdown" class="block block-himss-region-switcher clearfix">

      
  <div class="dropdown region-select ">
  <div class="dropdown-toggle dropdown-title"
          id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
          aria-expanded="false">
          Global Edition      </div>
  <div class="dropdown" aria-labelledby="dropdownMenuButton">
    <ul class="dropdown-menu">
                        <li data-region-alias="asia-pacific">
            <a href="/asia-pacific">
              Asia Pacific            </a>
          </li>
                                              <li data-region-alias="europe">
            <a href="/europe">
              Europe/UK            </a>
          </li>
                                <li data-region-alias="global">
            <a href="/">
              Global Edition            </a>
          </li>
                                </ul>
  </div>
</div>
</section>
                      </div>
      </div>

      <div class="rmain-menu-wrapper">
                  <div class="main-navigation">
            <nav role="navigation">
                              <ul class="menu nav navbar-nav"><li class="first last expanded active dropdown active"><a href="/" data-target="#" class="dropdown-toggle active" data-toggle="dropdown">Topics <span class="caret"></span></a><ul class="dropdown-menu"><li class="first leaf"><a href="/video" title="">Video</a></li>
<li class="leaf"><a href="/categories/provider" title="">Provider</a></li>
<li class="leaf"><a href="/categories/payer" title="">Payer</a></li>
<li class="leaf"><a href="/categories/pharma" title="">Pharma</a></li>
<li class="leaf"><a href="/categories/consumer" title="">Consumer</a></li>
<li class="last leaf"><a href="/categories/investors" title="">Investor</a></li>
</ul></li>
</ul>                                                            <div class="region region-navigation">
    <section id="block-search-form" class="block block-search clearfix">

      
  <form class="form-search content-search" action="/" method="post" id="search-block-form" accept-charset="UTF-8"><div><div>
      <h2 class="element-invisible">Search form</h2>
    <div class="input-group"><input title="Enter the terms you wish to search for." placeholder="Search" class="form-control form-text" type="text" id="edit-search-block-form--2" name="search_block_form" value="" size="15" maxlength="128" /><span class="input-group-btn"><button type="submit" class="btn btn-primary"><span class="icon glyphicon glyphicon-search" aria-hidden="true"></span></button></span></div><div class="form-actions form-wrapper form-group" id="edit-actions"><button class="element-invisible btn btn-primary form-submit" type="submit" id="edit-submit" name="op" value="Search">Search</button>
</div><input type="hidden" name="form_build_id" value="form-XSYXSw-54a4DeeYH8_c0wUZTSeYxJzXqp8X8sCKEzrY" />
<input type="hidden" name="form_id" value="search_block_form" />
</div>
</div></form>
</section>
  </div>
                          </nav>
          </div>
              </div>
    </div>
  </div>
</header>

<div class="main-container">

  <header role="banner" id="page-header" class="white-row">
              </header> <!-- /#page-header -->


    <section class="col-md-12">
      <a id="main-content"></a>
                                              <div class="region region-content">
    <div  class="view view-top-3-news view-id-top_3_news view-display-id-page row view-dom-id-df805bfe26a9e78b8ec193d53953c4ef view-mode-default clearfix row">

  <!-- Needed to activate contextual links -->
      <div class="main-content">
      <div class="container">
        <div class="ds-header">
          <div class="oas-ad-Position3-wrapper">
  <script type="text/javascript">OAS_RICH('Position3');</script>
</div><div class="oas-ad-Position4-wrapper">
  <script type="text/javascript">OAS_RICH('Position4');</script>
</div><section id="block-oas-blocks-oas-ad-block-top" class="block block-oas-blocks clearfix">

      
  <div class="oas-ad-Top-wrapper">
  <script type="text/javascript">OAS_RICH('Top');</script>
</div>
</section>
        </div>

        <div class="ds-left">
            <div class="views-row views-row-1 views-row-odd views-row-first views-row-last">
      
  <div class="views-field views-field-field-thumbnail">        <div class="field-content"> <div class="thumbnail-wrapper">
<a href="/news/north-america/health-20-new-technologies-new-ideas-storming-battlements"><img typeof="foaf:Image" class="img-responsive" src="https://www.mobihealthnews.com/sites/default/files/styles/712_400/public/Health%202.0-Mobi.png?itok=L1HJmPxE" width="712" height="400" alt="" /></a>
<div class='top-story-label'>Top Story</div> </div></div>  </div>  
  <div class="views-field views-field-field-short-headline views-field-title">        <div class="field-content"><a href="/news/north-america/health-20-new-technologies-new-ideas-storming-battlements">At Health 2.0, new technologies, new ideas &#039;storming the battlements&#039;</a></div>  </div>  
  <div class="views-field views-field-body">        <div class="field-content">The conversation isn't just about apps anymore — it's about robust, patient-centered platforms that are changing the calculus for care delivery in a consumer-centered age.
</div>  </div>  
  <div class="views-field views-field-field-author views-field views-field-sponsored-author-create">        <div class="field-content"><ul class="sponsored-author-create top-story">
    <li class="author-sponsor">By <span><a href="/author/mike-miliard">Mike Miliard</a></span></li>
    <li class="last">September 17, 2019</li>
</ul></div>  </div>  </div>
<div class="view view-top-3-news view-id-top_3_news view-display-id-block_5 view-dom-id-3f15e73c21133f603e9cf324f5ef987b">
        
  
  
      <div class="view-content">
        <div class="views-row views-row-1 views-row-odd views-row-first views-row-last">
      
  <div class="views-field views-field-field-thumbnail">        <div class="field-content"> <div class="thumbnail-wrapper">
<a href="/news/north-america/investing-your-own-disruptor-opportunities-and-challenges-strategic-investing"><img typeof="foaf:Image" class="img-responsive" src="https://www.mobihealthnews.com/sites/default/files/styles/712_400/public/strategic%20investing%20panel.jpg?itok=gOmEBTLH" width="712" height="400" alt="" /></a><div class="image-field-caption">
  <!--smart_paging_filter--><p>(L to R) Michael Brown, Dan Galles, Stacy Feld, and Indu Subaiya chat on stage at Health 2.0 VentureConnect. (Photo by Jonah Comstock).</p>
</div>
 </div></div>  </div>  
  <div class="views-field views-field-field-sponsor-label">        <div class="field-content"></div>  </div>  
  <div class="views-field views-field-himss-taxonomy-primary">        <div class="field-content"></div>  </div>  
  <div class="views-field views-field-field-short-headline views-field-title">        <div class="field-content"><a href="/news/north-america/investing-your-own-disruptor-opportunities-and-challenges-strategic-investing">Investing in your own disruptor: The opportunities and challenges of strategic investing</a></div>  </div>  
  <div class="views-field views-field-field-author views-field-sponsored-author-create">        <div class="field-content"><ul class="sponsored-author-create second-story">
    <li class="author-sponsor">By <span><a href="/content/jonah-comstock">Jonah Comstock</a></span></li>
    <li class="last">September 16, 2019</li>
</ul></div>  </div>  </div>
    </div>
  
  
  
  
      <div class="view-footer">
      <div class="view view-top-3-news view-id-top_3_news view-display-id-block_6 view-dom-id-21369e373472030a2937df12aabb426d">
        
  
  
      <div class="view-empty">
      <div class="view view-top-3-news view-id-top_3_news view-display-id-block_7 view-dom-id-09783936b86e530c57783a7159a4440f">
        
  
  
      <div class="view-content">
        <div class="views-row views-row-1 views-row-odd views-row-first views-row-last">
      
  <div class="views-field views-field-field-thumbnail">        <div class="field-content"> <div class="thumbnail-wrapper">
<a href="/news/meru-health-launches-wearable-companion-track-biofeedback"><img typeof="foaf:Image" class="img-responsive" src="https://www.mobihealthnews.com/sites/default/files/styles/712_400/public/Meru.png?itok=LjMV8m6_" width="712" height="400" alt="" /></a><div class="News-thumbnail"><span class="News video-large"><i class="icon"></i></span></div> </div></div>  </div>  
  <div class="views-field views-field-field-sponsor-label">        <div class="field-content"></div>  </div>  
  <div class="views-field views-field-himss-taxonomy-primary">        <div class="field-content"></div>  </div>  
  <div class="views-field views-field-field-short-headline views-field-title">        <div class="field-content"><a href="/news/meru-health-launches-wearable-companion-track-biofeedback">Meru Health launches wearable companion to track biofeedback</a></div>  </div>  
  <div class="views-field views-field-field-author views-field-sponsored-author-create">        <div class="field-content"><ul class="sponsored-author-create third-story">
    <li class="author-sponsor">By <span><a href="/content/laura-lovett">Laura Lovett</a></span></li>
    <li class="last">September 17, 2019</li>
</ul></div>  </div>  </div>
    </div>
  
  
  
  
  
  
</div>    </div>
  
  
  
  
  
  
</div>    </div>
  
  
</div>        </div>

        <div class="ds-right">
          <section id="block-views-top-3-news-block-4" class="block block-views clearfix">

        <h2 class="simple-black-border">Latest News</h2>
    
  <div class="view view-top-3-news view-id-top_3_news view-display-id-block_4 view-dom-id-e7ecd16f3746177f87a96ce7f4b1f229">
        
  
  
      <div class="view-content">
        <div class="views-row views-row-1 views-row-odd views-row-first">
      
  <div class="views-field views-field-himss-taxonomy-primary">        <div class="field-content"></div>  </div>  
  <div class="views-field views-field-field-short-headline views-field-title">        <div class="field-content"><a href="/news/north-america/bayer-leads-onedrops-40m-series-b-companies-ink-commercial-licensing-agreement">Bayer leads OneDrop&#039;s $40M Series B, companies ink commercial licensing agreement </a></div>  </div>  
  <div class="views-field views-field-created-1">        <span class="field-content">September 18, 2019</span>  </div>  </div>
  <div class="views-row views-row-2 views-row-even">
      
  <div class="views-field views-field-himss-taxonomy-primary">        <div class="field-content"></div>  </div>  
  <div class="views-field views-field-field-short-headline views-field-title">        <div class="field-content"><a href="/news/karuna-labs-3m-seed-round-will-support-clinical-validation-its-vr-chronic-pain-programs">Karuna Labs&#039; $3M seed round will support clinical validation of its VR chronic pain programs</a></div>  </div>  
  <div class="views-field views-field-created-1">        <span class="field-content">September 18, 2019</span>  </div>  </div>
  <div class="views-row views-row-3 views-row-odd">
      
  <div class="views-field views-field-himss-taxonomy-primary">        <div class="field-content"></div>  </div>  
  <div class="views-field views-field-field-short-headline views-field-title">        <div class="field-content"><a href="/news/europe/german-health-insurance-group-launches-startup-fund-digital-health-innovation">German health insurance group launches startup fund for digital health innovation</a></div>  </div>  
  <div class="views-field views-field-created-1">        <span class="field-content">September 18, 2019</span>  </div>  </div>
  <div class="views-row views-row-4 views-row-even">
      
  <div class="views-field views-field-himss-taxonomy-primary">        <div class="field-content"></div>  </div>  
  <div class="views-field views-field-field-short-headline views-field-title">        <div class="field-content"><a href="/news/north-america/embracing-biomarkers-empathetic-technology-can-address-health-issues-unbeknownst">By embracing biomarkers, &#039;empathetic technology&#039; can address health issues unbeknownst to its users</a></div>  </div>  
  <div class="views-field views-field-created-1">        <span class="field-content">September 18, 2019</span>  </div>  </div>
  <div class="views-row views-row-5 views-row-odd">
      
  <div class="views-field views-field-himss-taxonomy-primary">        <div class="field-content"></div>  </div>  
  <div class="views-field views-field-field-short-headline views-field-title">        <div class="field-content"><a href="/news/asia-pacific/ping-good-doctor-partners-guangxi-government-build-internet-healthcare-platform">Ping An Good Doctor partners with Guangxi government to build Internet Healthcare platform</a></div>  </div>  
  <div class="views-field views-field-created-1">        <span class="field-content">September 18, 2019</span>  </div>  </div>
  <div class="views-row views-row-6 views-row-even">
      
  <div class="views-field views-field-himss-taxonomy-primary">        <div class="field-content"></div>  </div>  
  <div class="views-field views-field-field-short-headline views-field-title">        <div class="field-content"><a href="/news/north-america/online-prehabilitation-service-nlp-case-data-summarization-tool-named-rwjf-pitch">Online prehabilitation service, NLP case data summarization tool named as RWJF pitch contest champions</a></div>  </div>  
  <div class="views-field views-field-created-1">        <span class="field-content">September 17, 2019</span>  </div>  </div>
  <div class="views-row views-row-7 views-row-odd">
      
  <div class="views-field views-field-himss-taxonomy-primary">        <div class="field-content"></div>  </div>  
  <div class="views-field views-field-field-short-headline views-field-title">        <div class="field-content"><a href="/news/north-america/kaia-health-lands-8m-focus-treating-musculoskeletal-disorders">Kaia Health lands $8M to focus on treating musculoskeletal disorders </a></div>  </div>  
  <div class="views-field views-field-created-1">        <span class="field-content">September 17, 2019</span>  </div>  </div>
  <div class="views-row views-row-8 views-row-even views-row-last">
      
  <div class="views-field views-field-himss-taxonomy-primary">        <div class="field-content"></div>  </div>  
  <div class="views-field views-field-field-short-headline views-field-title">        <div class="field-content"><a href="/news/asia-pacific/aia-launches-initiative-promote-sleep-sufficiency-apac-region">AIA launches initiative to promote sleep sufficiency in the APAC region</a></div>  </div>  
  <div class="views-field views-field-created-1">        <span class="field-content">September 17, 2019</span>  </div>  </div>
    </div>
  
  
  
  
      <div class="view-footer">
      <p><a class="more-link" href="/news">More News</a></p>
    </div>
  
  
</div>
</section>
        </div>

        <div class="ds-bottom">
                  </div>
      </div>
      <div class="clearfix"></div>
      <div class="middle_classes">
        <div class="container">
        <div class="ds-middle">
          <h2 class="block-title">Special Projects</h2><div class="view view-projects view-id-projects view-display-id-block_1 view-dom-id-43c75498872b7176aa86645f9c73b02e">
        
  
  
      <div class="view-content">
        <div class="views-row views-row-1 views-row-odd views-row-first col col-xs-12">
      
  <div class="views-field views-field-field-short-headline">        <div class="field-content views-field-title"><a href="/projects/chronicling-and-predicting-pharmas-moves-digital">Focus on: The Future of Pharma</a></div>  </div>  
  <div class="views-field views-field-field-thumbnail">        <div class="field-content"> <div class="thumbnail-wrapper">
<img typeof="foaf:Image" class="img-responsive" src="https://www.mobihealthnews.com/sites/default/files/styles/collection_thumbnail/public/PharmaHero.jpg?itok=by3BEBH7" width="712" height="400" alt="" /> </div></div>  </div>  </div>
  <div class="views-row views-row-2 views-row-even col col-xs-12">
      
  <div class="views-field views-field-field-short-headline">        <div class="field-content views-field-title"><a href="/projects/health-it-innovation-you-need-strategy">Focus on: Planning for Innovation</a></div>  </div>  
  <div class="views-field views-field-field-thumbnail">        <div class="field-content"> <div class="thumbnail-wrapper">
<img typeof="foaf:Image" class="img-responsive" src="https://www.mobihealthnews.com/sites/default/files/styles/collection_thumbnail/public/InnovationPrepHero.jpg?itok=y0X88600" width="712" height="400" alt="" /> </div></div>  </div>  </div>
  <div class="views-row views-row-3 views-row-odd col col-xs-12">
      
  <div class="views-field views-field-field-short-headline">        <div class="field-content views-field-title"><a href="/projects/focus-patient-experience">Focus on Patient Experience</a></div>  </div>  
  <div class="views-field views-field-field-thumbnail">        <div class="field-content"> <div class="thumbnail-wrapper">
<img typeof="foaf:Image" class="img-responsive" src="https://www.mobihealthnews.com/sites/default/files/styles/collection_thumbnail/public/PatientExperienceHeader.jpg?itok=xLv086Pb" width="712" height="400" alt="" /> </div></div>  </div>  </div>
  <div class="views-row views-row-4 views-row-even col col-xs-12">
      
  <div class="views-field views-field-field-short-headline">        <div class="field-content views-field-title"><a href="/content/interoperability-health-its-hardest-problem-finally-inflection-point">Interoperability: Health IT&#039;s hardest problem is (finally) at an inflection point</a></div>  </div>  
  <div class="views-field views-field-field-thumbnail">        <div class="field-content"> <div class="thumbnail-wrapper">
<img typeof="foaf:Image" class="img-responsive" src="https://www.mobihealthnews.com/sites/default/files/styles/collection_thumbnail/public/InteroperabilityHero.jpg?itok=fyt1wabf" width="712" height="400" alt="" /> </div></div>  </div>  </div>
  <div class="views-row views-row-5 views-row-odd col col-xs-12">
      
  <div class="views-field views-field-field-short-headline">        <div class="field-content views-field-title"><a href="/projects/how-consumerization-healthcare-changing-industry">How the consumerization of healthcare is changing the industry</a></div>  </div>  
  <div class="views-field views-field-field-thumbnail">        <div class="field-content"> <div class="thumbnail-wrapper">
<img typeof="foaf:Image" class="img-responsive" src="https://www.mobihealthnews.com/sites/default/files/styles/collection_thumbnail/public/consumerization.jpg?itok=KohDGOFy" width="712" height="400" alt="" /> </div></div>  </div>  </div>
  <div class="views-row views-row-6 views-row-even views-row-last col col-xs-12">
      
  <div class="views-field views-field-field-short-headline">        <div class="field-content views-field-title"><a href="/content/focus-aging-and-silver-tsunami">Focus on: Aging and the Silver Tsunami</a></div>  </div>  
  <div class="views-field views-field-field-thumbnail">        <div class="field-content"> <div class="thumbnail-wrapper">
<img typeof="foaf:Image" class="img-responsive" src="https://www.mobihealthnews.com/sites/default/files/styles/collection_thumbnail/public/SliverTsunamiHeroImage.jpg?itok=MA7zcWx6" width="712" height="400" alt="Senior citizens talking." /> </div></div>  </div>  </div>
    </div>
  
  
  
  
  
  
</div>        </div>
        </div>
      </div>
    </div>
<div id="home-subscription-row" class="ds-footer1 row">
    <div class="ds-footer1 container">
    <div class="subscription-close">
      <a id="subscription-close-button" href="#">X</a>
    </div>
      <h3>Connect With MobiHealthNews</h3><section id="block-boxes-subsctiption-block-with-options" class="block block-boxes block-boxes-simple col-md-6 clearfix">

  <span class="green-prefix">Email</span>    
  <div id='boxes-box-subsctiption_block_with_options' class='boxes-box'><div class="boxes-box-content"><script src="//app-ab05.marketo.com/js/forms2/js/forms2.min.js"></script><form id="mktoForm_3203">&nbsp;</form>
<script>MktoForms2.loadForm("//app-ab05.marketo.com", "922-ZLW-292", 3203, function(form) {
jQuery('#mktoForm_3203 div').removeAttr('style');
jQuery('#mktoForm_3203 input').removeAttr('style');
jQuery('#mktoForm_3203 label').removeAttr('style');
jQuery('#mktoForm_3203 span').removeAttr('style');
jQuery('#mktoForm_3203 button').removeAttr('style');

//Add an onSuccess handler
        form.onSuccess(function(values, followUpUrl) {         
jQuery('#mktoForm_3203').html('<div style="color: #fff;font-size: 17px;font-family: \'calluna-sans\', sans-serif;">THANK YOU FOR SUBSCRIBING</div>');
return false; 
        });

});</script>
<style type="text/css">form.mktoForm #Email { text-align: left !important; }
#mktoForm_8688 > .mktoFormRow {
    float: left !important;
    width: auto !important;
    text-align: left !important;
    margin-right: 10px;
}
#mktoForm_8688 > .mktoButtonRow {
    float: left !important;
    width: auto !important;
    margin-right: 10px;
}
</style>
</div></div>
</section>
<section id="block-bean-social-links-mid-block" class="block block-bean col-md-6 clearfix">

  <span class="green-prefix">Network</span>    
  <div class="entity entity-bean bean-social-links clearfix" about="/block/social-links-mid-block" typeof="">

  <div class="content">
    <div class="field field-name-field-additional-info field-type-text field-label-hidden"><div class="field-items"><div class="field-item even">Add MobiHealthNews to your network.</div></div></div><div class="field-collection-container clearfix"><div class="field field-name-field-image-linked field-type-field-collection field-label-hidden"><div class="field-items"><div class="field-item even"><div class="field-collection-view clearfix view-mode-full"><div class="entity entity-field-collection-item field-collection-item-field-image-linked clearfix" about="/field-collection/field-image-linked/21" typeof="">
  <div class="content">
    <div class="field field-name-field-social-icon field-type-image field-label-hidden"><div class="field-items"><div class="field-item even"><a href="https://www.facebook.com/MobiHealthNews/" target="_blank"><img typeof="foaf:Image" class="img-responsive" src="https://www.mobihealthnews.com/sites/default/files/styles/thumbnail/public/soc1_0.png?itok=EaTRq-kk" width="100" height="98" alt="" /></a></div></div></div>  </div>
</div>
</div></div><div class="field-item odd"><div class="field-collection-view clearfix view-mode-full"><div class="entity entity-field-collection-item field-collection-item-field-image-linked clearfix" about="/field-collection/field-image-linked/26" typeof="">
  <div class="content">
    <div class="field field-name-field-social-icon field-type-image field-label-hidden"><div class="field-items"><div class="field-item even"><a href="https://www.linkedin.com/company/10327817" target="_blank"><img typeof="foaf:Image" class="img-responsive" src="https://www.mobihealthnews.com/sites/default/files/styles/thumbnail/public/soc2.png?itok=FAZxLGX3" width="100" height="98" alt="" /></a></div></div></div>  </div>
</div>
</div></div><div class="field-item even"><div class="field-collection-view clearfix view-mode-full field-collection-view-final"><div class="entity entity-field-collection-item field-collection-item-field-image-linked clearfix" about="/field-collection/field-image-linked/31" typeof="">
  <div class="content">
    <div class="field field-name-field-social-icon field-type-image field-label-hidden"><div class="field-items"><div class="field-item even"><a href="https://twitter.com/MobiHealthNews" target="_blank"><img typeof="foaf:Image" class="img-responsive" src="https://www.mobihealthnews.com/sites/default/files/styles/thumbnail/public/soc3.png?itok=HqOp719Y" width="100" height="98" alt="" /></a></div></div></div>  </div>
</div>
</div></div></div></div></div>  </div>
</div>

</section>
    </div>
</div>
<div class="footer2_classes">
    <div class="ds-footer2 container">
      <section id="block-oas-blocks-oas-ad-block-right1" class="block block-oas-blocks clearfix">

      
  <div class="oas-ad-Right1-wrapper">
  <script type="text/javascript">OAS_RICH('Right1');</script>
</div>
</section>
<section id="block-views-most-read-news-block-3" class="block block-views clearfix">

        <h2 class="simple-black-border">Editor's Pick</h2>
    
  <div class="view view-most-read-news view-id-most_read_news view-display-id-block_3 view-dom-id-93dba235dd7562d5b2d851a17fe93dd1">
        
  
  
      <div class="view-content">
        <div class="views-row views-row-1 views-row-odd views-row-first">
      
  <div class="views-field views-field-title">        <span class="field-content"><a href="/news/north-america/fitbit-unveils-data-driven-personal-health-subscription-fitbit-premium">Fitbit unveils data-driven personal health subscription, Fitbit Premium</a></span>  </div>  </div>
  <div class="views-row views-row-2 views-row-even">
      
  <div class="views-field views-field-title">        <span class="field-content"><a href="/news/north-america/uc-irvine-medical-school-gifts-butterfly-handheld-ultrasounds-its-whole-class">UC Irvine Medical School gifts Butterfly handheld ultrasounds to its whole class of 2023</a></span>  </div>  </div>
  <div class="views-row views-row-3 views-row-odd">
      
  <div class="views-field views-field-title">        <span class="field-content"><a href="/news/north-america/privacy-beyond-hipaa-voice-technology">Privacy beyond HIPAA in voice technology </a></span>  </div>  </div>
  <div class="views-row views-row-4 views-row-even">
      
  <div class="views-field views-field-title">        <span class="field-content"><a href="/news/north-america/health-20-fall-conference-look-back-breakout-year-digital-health-ahead-its">Health 2.0 Fall Conference to look back at a breakout year for digital health, ahead to its exciting future</a></span>  </div>  </div>
  <div class="views-row views-row-5 views-row-odd">
      
  <div class="views-field views-field-title">        <span class="field-content"><a href="/news/north-america/carrots-smoking-cessation-program-helped-32-study-participants-quit-reduced">Carrot&#039;s smoking cessation program helped 32% of study participants quit, reduced others&#039; daily use</a></span>  </div>  </div>
  <div class="views-row views-row-6 views-row-even views-row-last">
      
  <div class="views-field views-field-title">        <span class="field-content"><a href="/news/north-america/apple-health-records-comes-certain-allscripts-ehr-suites">Apple Health Records comes to certain Allscripts EHR suites</a></span>  </div>  </div>
    </div>
  
  
  
  
  
  
</div>
</section>
    </div>
</div>
<div class="footer3_classes row">
    <div class="ds-footer3 container">
          </div>
</div>
<div class="footer4_classes row">
    <div class="ds-footer4 container">
      <section id="block-views-video-block-1" class="block block-views clearfix">

        <h2 class="simple-black-border">Video</h2>
    
  <div  class="ds-1col view view-video view-id-video view-display-id-block_1 view-dom-id-15a2ddf906947d28419757557fab6a47 view-mode-default  clearfix">

  
  <div class="row">
    <p><a class="more-link" href="/video">More Video</a></p>
  <div class="views-row views-row-1 views-row-odd views-row-first col-md-6">
      
  <div class="views-field views-field-field-thumbnail">        <div class="field-content"> <div class="thumbnail-wrapper">
<a href="/video/facilitating-care-technology-can-decrease-maternal-mortality"><div class="play-icon"></div>
<a href="/video/facilitating-care-technology-can-decrease-maternal-mortality"><img typeof="foaf:Image" class="img-responsive" src="https://www.mobihealthnews.com/sites/default/files/styles/712_400/public/Perry.jpg?itok=I-U88uqL" width="712" height="400" alt="" /></a></a> </div></div>  </div>  
  <div class="views-field views-field-field-short-headline views-field-title">        <div class="field-content"><a href="/video/facilitating-care-technology-can-decrease-maternal-mortality">By facilitating care, technology can decrease maternal mortality </a></div>  </div>  </div>
  <div class="views-row views-row-2 views-row-even views-row-last col-md-6">
      
  <div class="views-field views-field-field-thumbnail">        <div class="field-content"> <div class="thumbnail-wrapper">
<a href="/video/infermedica-wins-ventureconnect-prize-interoperable-triage-tech"><div class="play-icon"></div>
<a href="/video/infermedica-wins-ventureconnect-prize-interoperable-triage-tech"><img typeof="foaf:Image" class="img-responsive" src="https://www.mobihealthnews.com/sites/default/files/styles/712_400/public/Wickinski.jpg?itok=Q_VNqS_Q" width="712" height="400" alt="" /></a></a> </div></div>  </div>  
  <div class="views-field views-field-field-short-headline views-field-title">        <div class="field-content"><a href="/video/infermedica-wins-ventureconnect-prize-interoperable-triage-tech">Infermedica wins VentureConnect prize for interoperable triage tech</a></div>  </div>  </div>
  </div>

</div>


</section>
<section id="block-oas-blocks-oas-ad-block-right2" class="block block-oas-blocks clearfix">

      
  <div class="oas-ad-Right2-wrapper">
  <script type="text/javascript">OAS_RICH('Right2');</script>
</div>
</section>
    </div>
</div>
<div class="footer5_classes row">
    <div class="ds-footer5 container">
      <h2 class="title-background-blue title-sticked">Educational Resources</h2><div  class="view view-white-papers view-id-white_papers view-display-id-block_2 view-dom-id-2d14a90ca8d257cc6ed29ee16423f36d view-mode-default  clearfix">

<div class="ds-row-1">
    <div class="ds-row_1">
      <!--smart_paging_filter--><h2>White Papers</h2>
<p><a class="more-link" href="/educational-resources">More Resources</a></p>
    </div>
</div>
<div class="ds-row-2">
    <div class="ds-row_2">
        <div class="views-row views-row-1 views-row-odd views-row-first col-md-3">
      
  <div class="views-field views-field-nothing">        <span class="field-content"><div class='category'>mobile</div>
<div class='title'><a href="/content/single-use-mobile-devices-healthcare">Single Use Mobile Devices In Healthcare</a></div></span>  </div>  </div>
  <div class="views-row views-row-2 views-row-even col-md-3">
      
  <div class="views-field views-field-nothing">        <span class="field-content"><div class='category'>EHR, electronic health records, patient engagement</div>
<div class='title'><a href="/content/two-reasons-right-patient-engagement-platform-critical">Two Reasons the Right Patient Engagement Platform Is Critical</a></div></span>  </div>  </div>
  <div class="views-row views-row-3 views-row-odd col-md-3">
      
  <div class="views-field views-field-nothing">        <span class="field-content"><div class='category'>Innovation</div>
<div class='title'><a href="/content/healthcares-new-innovation-agenda">Healthcare&#039;s New Innovation Agenda</a></div></span>  </div>  </div>
  <div class="views-row views-row-4 views-row-even views-row-last col-md-3">
      
  <div class="views-field views-field-nothing">        <span class="field-content"><div class='category'>Innovation</div>
<div class='title'><a href="/content/global-lessons-how-foster-culture-innovation">Global lessons on how to foster a culture of innovation</a></div></span>  </div>  </div>
    </div>
</div>

</div>

<!-- Needed to activate display suite support on forms -->
    </div>
</div>
<div class="footer6_classes">
    <div class="ds-footer6 container">
      <section id="block-views-top-3-news-block-3" class="block block-views clearfix">

        <h2 class="simple-black-border">More Stories</h2>
    
  <div  class="ds-1col view view-top-3-news view-id-top_3_news view-display-id-block_3 view-dom-id-d6b0d748565b30f89377e011cd0075ef view-mode-default  clearfix">

  
  <div class="row">
      <div class="views-row views-row-1 views-row-odd views-row-first col-md-3">
      
  <div class="views-field views-field-field-thumbnail">        <div class="field-content"> <div class="thumbnail-wrapper">
<a href="/news/europe/twelve-innovators-showcase-solutions-app-zone-hosted-orcha-hett"><img typeof="foaf:Image" class="img-responsive" src="https://www.mobihealthnews.com/sites/default/files/styles/256x145/public/health%20apps%20%282%29.jpg?itok=7KaSj3d0" width="256" height="145" alt="" /></a> </div></div>  </div>  
  <div class="views-field views-field-field-short-headline views-field-title">        <div class="field-content"><a href="/news/europe/twelve-innovators-showcase-solutions-app-zone-hosted-orcha-hett">Twelve innovators to showcase solutions in app zone hosted by ORCHA at HETT</a></div>  </div>  </div>
  <div class="views-row views-row-2 views-row-even col-md-3">
      
  <div class="views-field views-field-field-thumbnail">        <div class="field-content"> <div class="thumbnail-wrapper">
<a href="/news/north-america/bayer-leads-onedrops-40m-series-b-companies-ink-commercial-licensing-agreement"><img typeof="foaf:Image" class="img-responsive" src="https://www.mobihealthnews.com/sites/default/files/styles/256x145/public/onedrop.png?itok=tUjLGsXz" width="256" height="145" alt="" /></a> </div></div>  </div>  
  <div class="views-field views-field-field-short-headline views-field-title">        <div class="field-content"><a href="/news/north-america/bayer-leads-onedrops-40m-series-b-companies-ink-commercial-licensing-agreement">Bayer leads OneDrop&#039;s $40M Series B, companies ink commercial licensing agreement </a></div>  </div>  </div>
  <div class="views-row views-row-3 views-row-odd col-md-3">
      
  <div class="views-field views-field-field-thumbnail">        <div class="field-content"> <div class="thumbnail-wrapper">
<a href="/news/karuna-labs-3m-seed-round-will-support-clinical-validation-its-vr-chronic-pain-programs"><img typeof="foaf:Image" class="img-responsive" src="https://www.mobihealthnews.com/sites/default/files/styles/256x145/public/vr%20stock_1.jpg?itok=cSUGUkBs" width="256" height="145" alt="" /></a> </div></div>  </div>  
  <div class="views-field views-field-field-short-headline views-field-title">        <div class="field-content"><a href="/news/karuna-labs-3m-seed-round-will-support-clinical-validation-its-vr-chronic-pain-programs">Karuna Labs&#039; $3M seed round will support clinical validation of its VR chronic pain programs</a></div>  </div>  </div>
  <div class="views-row views-row-4 views-row-even col-md-3">
      
  <div class="views-field views-field-field-thumbnail">        <div class="field-content"> <div class="thumbnail-wrapper">
<a href="/news/europe/german-health-insurance-group-launches-startup-fund-digital-health-innovation"><img typeof="foaf:Image" class="img-responsive" src="https://www.mobihealthnews.com/sites/default/files/styles/256x145/public/funding.jpg?itok=SHnggXAN" width="256" height="145" alt="" /></a> </div></div>  </div>  
  <div class="views-field views-field-field-short-headline views-field-title">        <div class="field-content"><a href="/news/europe/german-health-insurance-group-launches-startup-fund-digital-health-innovation">German health insurance group launches startup fund for digital health innovation</a></div>  </div>  </div>
  <div class="views-row views-row-5 views-row-odd col-md-3">
      
  <div class="views-field views-field-field-thumbnail">        <div class="field-content"> <div class="thumbnail-wrapper">
<a href="/news/north-america/embracing-biomarkers-empathetic-technology-can-address-health-issues-unbeknownst"><img typeof="foaf:Image" class="img-responsive" src="https://www.mobihealthnews.com/sites/default/files/styles/256x145/public/poppycrum.jpg?itok=W6jHXu2N" width="256" height="145" alt="" /></a> </div></div>  </div>  
  <div class="views-field views-field-field-short-headline views-field-title">        <div class="field-content"><a href="/news/north-america/embracing-biomarkers-empathetic-technology-can-address-health-issues-unbeknownst">By embracing biomarkers, &#039;empathetic technology&#039; can address health issues unbeknownst to its users</a></div>  </div>  </div>
  <div class="views-row views-row-6 views-row-even col-md-3">
      
  <div class="views-field views-field-field-thumbnail">        <div class="field-content"> <div class="thumbnail-wrapper">
<a href="/news/asia-pacific/ping-good-doctor-partners-guangxi-government-build-internet-healthcare-platform"><img typeof="foaf:Image" class="img-responsive" src="https://www.mobihealthnews.com/sites/default/files/styles/256x145/public/PAGD%20Guangxi%20Govt%20cooperation_Mobi.jpg?itok=jxjtDFDA" width="256" height="145" alt="" /></a><div class="image-field-caption">
  <!--smart_paging_filter--><p>Above photo: (L to R) Deng Shijun, Secretary General of China Council for the Promotion of International Trade Guangxi Committee, and Wu Peng, General Manager of Ping An Good Doctor at the signing ceremony. Credit: Ping An Good Doctor</p>
</div>
 </div></div>  </div>  
  <div class="views-field views-field-field-short-headline views-field-title">        <div class="field-content"><a href="/news/asia-pacific/ping-good-doctor-partners-guangxi-government-build-internet-healthcare-platform">Ping An Good Doctor partners with Guangxi government to build Internet Healthcare platform</a></div>  </div>  </div>
  <div class="views-row views-row-7 views-row-odd col-md-3">
      
  <div class="views-field views-field-field-thumbnail">        <div class="field-content"> <div class="thumbnail-wrapper">
<a href="/news/philips-unveils-connected-sleep-apnea-wearable-nightbalance"><img typeof="foaf:Image" class="img-responsive" src="https://www.mobihealthnews.com/sites/default/files/styles/256x145/public/NightBalance.png?itok=bv0rxviU" width="256" height="145" alt="" /></a> </div></div>  </div>  
  <div class="views-field views-field-field-short-headline views-field-title">        <div class="field-content"><a href="/news/philips-unveils-connected-sleep-apnea-wearable-nightbalance">Philips unveils connected sleep apnea wearable NightBalance </a></div>  </div>  </div>
  <div class="views-row views-row-8 views-row-even views-row-last col-md-3">
      
  <div class="views-field views-field-field-thumbnail">        <div class="field-content"> <div class="thumbnail-wrapper">
<a href="/news/meru-health-launches-wearable-companion-track-biofeedback"><img typeof="foaf:Image" class="img-responsive" src="https://www.mobihealthnews.com/sites/default/files/styles/256x145/public/Meru.png?itok=xDfFqPGH" width="256" height="145" alt="" /></a> </div></div>  </div>  
  <div class="views-field views-field-field-short-headline views-field-title">        <div class="field-content"><a href="/news/meru-health-launches-wearable-companion-track-biofeedback">Meru Health launches wearable companion to track biofeedback</a></div>  </div>  </div>
  </div>

</div>


</section>
<section id="block-oas-blocks-oas-ad-block-bottom1" class="block block-oas-blocks clearfix">

      
  <div class="oas-ad-Bottom1-wrapper">
  <script type="text/javascript">OAS_RICH('Bottom1');</script>
</div>
</section>
    </div>
</div>

</div>

<!-- Needed to activate display suite support on forms -->
  </div>
    </section>
</div>
<footer class="footer">
  <div class="container">
          <a class="logo" href="/" title="Home">
        <img src="/sites/all/themes/mobihealth_theme/images/logo-white.png" alt="Home" />
      </a>
          <div class="region region-footer-external">
    <section id="block-menu-menu-more-news" class="block block-menu col-md-4 clearfix">

        <h2 class="block-title">More News</h2>
    
  <ul class="menu nav"><li class="first leaf"><a href="http://www.healthcareit.com.au/">Healthcare IT News Australia</a></li>
<li class="leaf"><a href="http://www.mobihealthnews.com/">MobiHealthNews</a></li>
<li class="last leaf"><a href="http://www.healthcarefinancenews.com/">Healthcare Finance News</a></li>
</ul>
</section>
<section id="block-mobihealth-display-footer-subscription" class="block block-mobihealth-display col-md-4 clearfix">

        <h2 class="block-title">MobiHealthNews</h2>
    
  <script src="//app-ab05.marketo.com/js/forms2/js/forms2.min.js"></script>

    <div class="field field-name-field-additional-info field-type-text field-label-hidden">
      The latest news in digital health delivered daily to your inbox.
    </div>
  <form id="mktoForm_3204"></form>
<script>MktoForms2.loadForm("//app-ab05.marketo.com", "922-ZLW-292", 3204, function(form) {
    jQuery('#mktoForm_3204 div').removeAttr('style');
    jQuery('#mktoForm_3204 input').removeAttr('style');
    jQuery('#mktoForm_3204 label').removeAttr('style');
    jQuery('#mktoForm_3204 span').removeAttr('style');
    jQuery('#mktoForm_3204 button').removeAttr('style');

    //Add an onSuccess handler
    form.onSuccess(function(values, followUpUrl) {
      jQuery('#mktoForm_3204').html('<div style="color: #fff;font-size: 17px;font-family: \'calluna-sans\', sans-serif;">THANK YOU FOR SUBSCRIBING</div>');
      return false;
    });

  });</script>
<style>
  form.mktoForm #Email { text-align: left !important; }
</style>
</section>
<section id="block-bean-social-links-footer-block" class="block block-bean col-md-4 clearfix">

        <h2 class="block-title">Connect</h2>
    
  <div class="entity entity-bean bean-social-links clearfix" about="/block/social-links-footer-block" typeof="">

  <div class="content">
    <div class="field field-name-field-additional-info field-type-text field-label-hidden"><div class="field-items"><div class="field-item even">Add MobiHealthNews to your network.</div></div></div><div class="field-collection-container clearfix"><div class="field field-name-field-image-linked field-type-field-collection field-label-hidden"><div class="field-items"><div class="field-item even"><div class="field-collection-view clearfix view-mode-full"><div class="entity entity-field-collection-item field-collection-item-field-image-linked clearfix" about="/field-collection/field-image-linked/36" typeof="">
  <div class="content">
    <div class="field field-name-field-social-icon field-type-image field-label-hidden"><div class="field-items"><div class="field-item even"><a href="https://www.facebook.com/MobiHealthNews/" target="_blank"><img typeof="foaf:Image" class="img-responsive" src="https://www.mobihealthnews.com/sites/default/files/styles/thumbnail/public/soc1_1.png?itok=VkzZdsFz" width="100" height="98" alt="" /></a></div></div></div>  </div>
</div>
</div></div><div class="field-item odd"><div class="field-collection-view clearfix view-mode-full"><div class="entity entity-field-collection-item field-collection-item-field-image-linked clearfix" about="/field-collection/field-image-linked/41" typeof="">
  <div class="content">
    <div class="field field-name-field-social-icon field-type-image field-label-hidden"><div class="field-items"><div class="field-item even"><a href="https://www.linkedin.com/company/10327817" target="_blank"><img typeof="foaf:Image" class="img-responsive" src="https://www.mobihealthnews.com/sites/default/files/styles/thumbnail/public/soc2_0.png?itok=87pOwzGv" width="100" height="98" alt="" /></a></div></div></div>  </div>
</div>
</div></div><div class="field-item even"><div class="field-collection-view clearfix view-mode-full field-collection-view-final"><div class="entity entity-field-collection-item field-collection-item-field-image-linked clearfix" about="/field-collection/field-image-linked/46" typeof="">
  <div class="content">
    <div class="field field-name-field-social-icon field-type-image field-label-hidden"><div class="field-items"><div class="field-item even"><a href="https://twitter.com/MobiHealthNews" target="_blank"><img typeof="foaf:Image" class="img-responsive" src="https://www.mobihealthnews.com/sites/default/files/styles/thumbnail/public/soc3_0.png?itok=F6CQwCFa" width="100" height="98" alt="" /></a></div></div></div>  </div>
</div>
</div></div></div></div></div>  </div>
</div>

</section>
  </div>
          <div class="region region-footer-menu">
    <section id="block-menu-menu-footer-menu" class="block block-menu clearfix">

        <h2 class="block-title">Footer Menu</h2>
    
  <ul class="menu nav"><li class="first leaf"><a href="/about" title="">About</a></li>
<li class="leaf"><a href="/advertise" title="">Advertise</a></li>
<li class="leaf"><a href="/contact" title="">Contact</a></li>
<li class="last leaf"><a href="/privacy-policy" title="">Privacy Policy</a></li>
</ul>
</section>
<section id="block-boxes-copyright" class="block block-boxes block-boxes-simple clearfix">

      
  <div id='boxes-box-copyright' class='boxes-box'><div class="boxes-box-content"><!--smart_paging_filter--><p>© 2019 MobiHealthNews is a publication of HIMSS Media</p>
<style type="text/css">
<!--/*--><![CDATA[/* ><!--*/
#himss_coverage_hothimss .left-siderbar header,
#himss_coverage_hothimss .left-siderbar .view-himss-coverage1 { display: none; }
.ds-footer4 { display: block !important; }

/*--><!]]>*/
</style></div></div>
</section>
  </div>
  </div>
</footer>

<div id="main_menu_overlay" class="menu_overlay" style="display: none;">
  <div class="container">
            <div class="region region-menu-overlay">
    
<section id="block-bean-block-menu" class="block block-bean clearfix">

  <div class="block-menu-close">
    <a id="block-menu-close-button" href="#">X</a>
  </div>

      
  <div  about="/block/block-menu" typeof="" class="ds-1col entity entity-bean bean-block-menu view-mode-default  clearfix">

  
  <div class="group-mb-row1 field-group-div"><div class="field field-name-field-home-logo-image field-type-image field-label-hidden"><div class="field-items"><div class="field-item even"><a href="https://www.mobihealthnews.com/" title="Home"><img typeof="foaf:Image" class="img-responsive" src="https://www.mobihealthnews.com/sites/default/files/styles/245x77/public/logo-white.png?itok=83hPdxXJ" width="245" height="77" alt="" /></a></div></div></div></div><div class="group-mb-row2 field-group-div"><div class="field-collection-container clearfix"><div class="field field-name-field-image-linked field-type-field-collection field-label-hidden"><div class="field-items"><div class="field-item even"><div class="field-collection-view clearfix view-mode-full"><div class="entity entity-field-collection-item field-collection-item-field-image-linked clearfix" about="/field-collection/field-image-linked/1" typeof="">
  <div class="content">
    <div class="field field-name-field-social-icon field-type-image field-label-hidden"><div class="field-items"><div class="field-item even"><a href="https://www.mobihealthnews.com/" target="_blank"><img typeof="foaf:Image" class="img-responsive" src="https://www.mobihealthnews.com/sites/default/files/styles/thumbnail/public/1_4.png?itok=FYXUTyoD" width="100" height="100" alt="" /></a></div></div></div>  </div>
</div>
</div></div><div class="field-item odd"><div class="field-collection-view clearfix view-mode-full"><div class="entity entity-field-collection-item field-collection-item-field-image-linked clearfix" about="/field-collection/field-image-linked/6" typeof="">
  <div class="content">
    <div class="field field-name-field-social-icon field-type-image field-label-hidden"><div class="field-items"><div class="field-item even"><a href="http://facebook.com" target="_blank"><img typeof="foaf:Image" class="img-responsive" src="https://www.mobihealthnews.com/sites/default/files/styles/thumbnail/public/2_3.png?itok=myKVW-hD" width="98" height="100" alt="" /></a></div></div></div>  </div>
</div>
</div></div><div class="field-item even"><div class="field-collection-view clearfix view-mode-full"><div class="entity entity-field-collection-item field-collection-item-field-image-linked clearfix" about="/field-collection/field-image-linked/11" typeof="">
  <div class="content">
    <div class="field field-name-field-social-icon field-type-image field-label-hidden"><div class="field-items"><div class="field-item even"><a href="http://twitter.com" target="_blank"><img typeof="foaf:Image" class="img-responsive" src="https://www.mobihealthnews.com/sites/default/files/styles/thumbnail/public/3_2.png?itok=q671Bddb" width="99" height="100" alt="" /></a></div></div></div>  </div>
</div>
</div></div><div class="field-item odd"><div class="field-collection-view clearfix view-mode-full field-collection-view-final"><div class="entity entity-field-collection-item field-collection-item-field-image-linked clearfix" about="/field-collection/field-image-linked/16" typeof="">
  <div class="content">
    <div class="field field-name-field-social-icon field-type-image field-label-hidden"><div class="field-items"><div class="field-item even"><img typeof="foaf:Image" class="img-responsive" src="https://www.mobihealthnews.com/sites/default/files/styles/thumbnail/public/4_2.png?itok=Lp1kEW2w" width="99" height="100" alt="" /></div></div></div>  </div>
</div>
</div></div></div></div></div><div class="main-menu-links-wrapper"><div class="field field-name-more-menu field-type-ds field-label-hidden"><div class="field-items"><div class="field-item even"><section id="block-menu-menu-more" class="block block-menu clearfix">

        <h2 class="block-title">More</h2>
    
  <ul class="menu nav"><li class="first leaf"><a href="/" title="">About</a></li>
<li class="leaf"><a href="/" title="">Advertise</a></li>
<li class="last leaf"><a href="/" title="">Contact</a></li>
</ul>
</section>
</div></div></div></div><div class="field field-name-main-menu-subscription field-type-ds field-label-hidden"><div class="field-items"><div class="field-item even"><section id="block-boxes-main-menu-subscription" class="block block-boxes block-boxes-simple clearfix">

      
  <div id='boxes-box-main_menu_subscription' class='boxes-box'><div class="boxes-box-content"><script src="//app-ab05.marketo.com/js/forms2/js/forms2.min.js"></script>
<form id="mktoForm_3155"></form>
<script>MktoForms2.loadForm("//app-ab05.marketo.com", "922-ZLW-292", 3155, function(form) {
jQuery('#mktoForm_3155 div').removeAttr('style');
jQuery('#mktoForm_3155 input').removeAttr('style');
jQuery('#mktoForm_3155 label').removeAttr('style');
jQuery('#mktoForm_3155 span').removeAttr('style');
jQuery('#mktoForm_3155 button').removeAttr('style');
});</script></div></div>
</section>
</div></div></div></div><div class="group-mb-row3 field-group-div"><div class="field field-name-search-form field-type-ds field-label-hidden"><div class="field-items"><div class="field-item even"><section id="block-search-form" class="block block-search clearfix">

      
  <form class="form-search content-search" action="/content/23andme-michael-j-fox-foundation-team-platform-parkinsons-research" method="post" id="search-block-form--2" accept-charset="UTF-8"><div><div>
      <h2 class="element-invisible">Search form</h2>
    <div class="input-group"><input title="Enter the terms you wish to search for." placeholder="Search" class="form-control form-text" type="text" id="edit-search-block-form--4" name="search_block_form" value="" size="15" maxlength="128" /><span class="input-group-btn"><button type="submit" class="btn btn-primary"><span class="icon glyphicon glyphicon-search" aria-hidden="true"></span></button></span></div><div class="form-actions form-wrapper form-group" id="edit-actions--2"><button class="element-invisible btn btn-primary form-submit" type="submit" id="edit-submit--2" name="op" value="Search">Search</button>
</div><input type="hidden" name="form_build_id" value="form-gQ48AeTeIDLfJtqzxlTpfB0LRw5zn2ULSFWz0VeHhro" />
<input type="hidden" name="form_id" value="search_block_form" />
</div>
</div></form>
</section>
</div></div></div><div class="field field-name-top-stories field-type-ds field-label-hidden"><div class="field-items"><div class="field-item even"><h2 class="block-title">Top Stories</h2><div class="view view-top-3-news view-id-top_3_news view-display-id-menu_top_3 view-dom-id-789c15f1801d71b92403262ecd0c8078">
        
  
  
      <div class="view-content">
        <div class="views-row views-row-1 views-row-odd views-row-first">
      
  <div class="views-field views-field-field-thumbnail">        <div class="field-content"> <div class="thumbnail-wrapper">
<a href="/node/146940"><img typeof="foaf:Image" class="img-responsive" src="https://www.mobihealthnews.com/sites/default/files/styles/348x196/public/AI_0.jpg?itok=LKCrFWDl" width="348" height="196" alt="" /></a> </div></div>  </div>  
  <div class="views-field views-field-field-short-headline views-field-title">        <div class="field-content"><a href="/node/146940">DeepMind&#039;s Health team jumps over to Google Health </a></div>  </div>  </div>
  <div class="views-row views-row-2 views-row-even">
      
  <div class="views-field views-field-field-thumbnail">        <div class="field-content"> <div class="thumbnail-wrapper">
<a href="/news/north-america/health-20-new-technologies-new-ideas-storming-battlements"><img typeof="foaf:Image" class="img-responsive" src="https://www.mobihealthnews.com/sites/default/files/styles/348x196/public/Health%202.0-Mobi.png?itok=9T2BFeNN" width="348" height="196" alt="" /></a> </div></div>  </div>  
  <div class="views-field views-field-field-short-headline views-field-title">        <div class="field-content"><a href="/news/north-america/health-20-new-technologies-new-ideas-storming-battlements">At Health 2.0, new technologies, new ideas &#039;storming the battlements&#039;</a></div>  </div>  </div>
  <div class="views-row views-row-3 views-row-odd views-row-last">
      
  <div class="views-field views-field-field-thumbnail">        <div class="field-content"> <div class="thumbnail-wrapper">
<a href="/news/asia-pacific/singapore-third-most-sleep-deprived-after-japan-and-india-fitbit-s-data-indicates"><img typeof="foaf:Image" class="img-responsive" src="https://www.mobihealthnews.com/sites/default/files/styles/348x196/public/Louis%20Lye%2C%20Regional%20Director-SEA%2C%20Fitbit_Mobi.jpg?itok=Ao_tvrQ2" width="348" height="196" alt="" /></a><div class="image-field-caption">
  <!--smart_paging_filter--><p>Above photo: Louis Lye, Regional Director, Southeast Asia, Fitbit. Credit: Fitbit</p>
</div>
 </div></div>  </div>  
  <div class="views-field views-field-field-short-headline views-field-title">        <div class="field-content"><a href="/news/asia-pacific/singapore-third-most-sleep-deprived-after-japan-and-india-fitbit-s-data-indicates">Singapore is the third most sleep deprived after Japan and India, Fitbit’s data indicates</a></div>  </div>  </div>
    </div>
  
  
  
  
  
  
</div></div></div></div></div></div>


</section> <!-- /.block -->
  </div>
      </div>
</div>  <script src="https://www.mobihealthnews.com/sites/default/files/js/js_8XTPOK007TWmDI1xLnzffHb4dbAH-lF8bWRQLXkyYfM.js"></script>
<script>function euCookieComplianceLoadScripts() {}</script>
<script>var eu_cookie_compliance_cookie_name = "";</script>
<script src="https://www.mobihealthnews.com/sites/default/files/js/js_PDx8zeYAai3lgge8bxp0-GLktYRGzSkw3O9E76s1x0g.js"></script>
<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"bf70f03321","applicationID":"75195662","transactionName":"NVBSZ0AFXERUVxJQWQwacVBGDV1ZGkIPXEERakBSVQE=","queueTime":0,"applicationTime":1957,"atts":"GRdREQgfT0o=","errorBeacon":"bam.nr-data.net","agent":""}</script></body>
</html>
