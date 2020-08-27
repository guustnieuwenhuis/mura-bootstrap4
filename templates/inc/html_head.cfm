<cfoutput>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="#esapiEncode('html_attr', Mura.content('metaDesc'))#">
	<meta name="keywords" content="#esapiEncode('html_attr', Mura.content('metaKeywords'))#">
	<cfif len(Mura.content('credits'))><meta name="author" content="#esapiEncode('html_attr', Mura.content('credits'))#"></cfif>
	<cfif YesNoFormat(Mura.content('searchExclude'))><meta name="robots" content="noindex"></cfif>
	<meta name="generator" content="Mura #Mura.globalConfig('version')#">

	<title>#esapiEncode('html', Mura.content('HTMLTitle'))# - #esapiEncode('html', Mura.siteConfig('site'))#</title>

	<!---Canonical URL--->
	<cfset canonicalURL = len(Mura.content('canonicalURL')) ? Mura.content('canonicalURL') : Mura.getURL(complete='true')>
	<link rel="canonical" href="#canonicalURL#"/>

	<!--- Mura Base Styles--->
	<!--- Optional: Mura Skin Styles. Duplicate to your theme to customize, changing 'assetPath' to 'themeAssetPath' below. Don't forget to move, remove or replace sprite.png. --->
	#Mura.outputMuraCSS(version="10", includeskin=true)#

	<!--- Bootstrap core CSS --->
<!--- 	<link rel="stylesheet" href="#Mura.siteConfig('themeAssetPath')#/css/bootstrap.css"> --->

	<!--- Font Awesome --->
	<link rel="stylesheet" href="#Mura.siteConfig('themeAssetPath')#/assets/font-awesome/css/fontawesome.min.css">
	<link rel="stylesheet" href="#Mura.siteConfig('themeAssetPath')#/assets/font-awesome/css/brands.min.css">
	<link rel="stylesheet" href="#Mura.siteConfig('themeAssetPath')#/assets/font-awesome/css/solid.min.css">

	<!-- Nucleo Icons -->
	<link rel="stylesheet" href="#Mura.siteConfig('themeAssetPath')#/assets/nucleo/css/style.css">

	<!--- Theme CSS --->
	<link rel="stylesheet" href="#Mura.siteConfig('themeAssetPath')#/css/site.css">

	<!--- jQuery --->
	<script src="#Mura.siteConfig('themeAssetPath')#/js/libraries/jquery-3.5.1.min.js"></script>

	<!--- FAV AND TOUCH ICONS --->
	<link rel="shortcut icon" href="#Mura.globalConfig('corePath')#/modules/v1/core_assets/images/favicon.ico">
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="#Mura.siteConfig('themeAssetPath')#/images/ico/ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="#Mura.siteConfig('themeAssetPath')#/images/ico/ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="#Mura.siteConfig('themeAssetPath')#/images/ico/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="#Mura.siteConfig('themeAssetPath')#/images/ico/ico/apple-touch-icon-57-precomposed.png">

	<!--- MURA FEEDS --->
	<cfset rs=Mura.getBean('feedManager').getFeeds(Mura.event('siteID'),'Local',true,true) />
	<cfset apiEndpoint=Mura.siteConfig().getApi('feed','v1').getEndpoint() />
	<cfloop query="rs"><link rel="alternate" type="application/rss+xml" title="#esapiEncode('html_attr', Mura.siteConfig('site'))# - #esapiEncode('html_attr', rs.name)#" href="#XMLFormat('#apiEndpoint#/?feedID=#rs.feedID#')#"></cfloop>

	<meta property="og:url" content="#esapiEncode('html_attr', Mura.content().getURL(complete=true))#" />
    <meta property="og:site_name" content="#esapiEncode('html_attr', Mura.siteConfig('site'))#" />
    <meta property="og:title" content="#esapiEncode('html_attr', Mura.content('HTMLTitle'))#" />
    <meta property="og:description" content="#esapiEncode('html_attr', Mura.content('metaDesc'))#" />
	<meta property="og:image" content="#esapiEncode('html_attr', Mura.content().getImageUrl(size='hero',complete='true'))#" />
	<meta property="og:image:width" content="1600" />
	<meta property="og:image:height" content="900" />
	<meta property="og:type" content="website" />

</head>
</cfoutput>
<cfinclude template="preloader.cfm">
