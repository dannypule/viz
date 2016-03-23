<%--documentation: http://docs.oracle.com/javaee/5/jstl/1.1/docs/tlddocs/c/tld-summary.html --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE HTML>
<html>
<head>
		<!-- admin_education.jsp -->
		<title>${strings.title}</title>
		<link rel="shortcut icon" type="image/x-icon" href="/webthemes/${config.webtheme}/favicon.ico">
		<!--<base href="/"> -->
		<meta http-equiv="content-type" content="text/html;charset=utf-8">
		<meta name="keywords" content="${config.keywords}">
		<meta name="description" content="${strings.metaDescription} ">
		<link rel="image_src" href="/webthemes/${config.webtheme}/images/logo250x250.png">

		<meta property="og:title"  content="${strings.og_title}">
		<meta property="og:image"  content="${config.url_domain}/images/appsme-fb-image.jpg">
		<meta property="og:description"  content="${strings.og_desc}">

		<meta name="msvalidate.01" content="${config.bingWebmasterId}" />

		<c:if test="${mobileDevice.isMobileDevice}">
			<meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
		</c:if>

		<script>window.graphicImagePaths = JSON.parse('${config.graphicImagePaths}');</script>

		<!-- DO NOT DELETE! PLACEHOLDER FOR RELEASE SCRIPT -->
		<!-- source styles minified --><!-- end source styles minified -->

		<!-- source styles -->

		<!-- build:css ../WebContent/css/main.min.css -->
			<link rel="stylesheet" href="/css/html5reset.css?v=${config.version}" />
			<link rel="stylesheet" href="/css/typography.css?v=${config.version}">
			<link rel="stylesheet" href="/css/jquery-ui-1.10.3.interactions-datepicker.css?v=${config.version}">
			<link rel="stylesheet" href="/css/App.css?v=${config.version}">
			<link rel="stylesheet" href="/css/App.ios.css?v=${config.version}">
			<link rel="stylesheet" href="/css/App.ffos.css?v=${config.version}">
			<link rel="stylesheet" href="/css/App.android.css?v=${config.version}">
			<link rel="stylesheet" href="/css/style.css?v=${config.version}">
			<link rel="stylesheet" href="/css/jquery.Jcrop.min.css?v=${config.version}">
			<link rel="stylesheet" href="/css/jquery.textEditor.css?v=${config.version}">
			<link rel="stylesheet" href="/css/farbtastic.css?v=${config.version}">
			<link rel="stylesheet" href="/css/emulatorpreview.css?v=${config.version}">
			<link rel="stylesheet" href="/css/main_nav.css?v=${config.version}" />
			<link rel="stylesheet" href="/css/throbber.css?v=${config.version}">
		<!-- endbuild -->

		<!-- build:css ../WebContent/webthemes/appsme/css/webtheme.min.css -->
		<link rel="stylesheet" href="/webthemes/appsme/css/webtheme.css?v=${config.version}">
		<!-- endbuild -->
		<!-- end source styles -->
		<c:if test="${config.isNamesco}">
			<style type="text/css">
			.hideNamescoBody {
				display: none;
			}
			</style>
	   </c:if>

	   <!-- build:css dist/webthemes/appsme_education/css/edu.style.only.min.css -->
	   <link rel="stylesheet" href="css/new_css/style.css">
	   <link rel="stylesheet" href="webthemes/appsme_education/common/css/edu.style.css">
	   <!-- endbuild -->

	   <!-- Material icons CDN -->
	   <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

		${additionalCSS}

		<!-- source scripts -->
		<!-- build:js ../WebContent/js/main.min.js -->

		<script type="text/javascript" src="/js/lib/jquery-1.11.3.min.js?v=${config.version}"></script>
		<script type="text/javascript" src="/js/lib/jquery-migrate-1.2.1.min.js?v=${config.version}"></script>
		<script type="text/javascript" src="/js/Facebook.js?v=${config.version}"></script>
		<script type="text/javascript" src="/js/lib/json2.js?v=${config.version}"></script>
		<script type="text/javascript" src="/js/lib/Mustache.js?v=${config.version}"></script>
		<script type="text/javascript" src="/js/lib/AjaxQueue.js?v=${config.version}"></script>
		<script type="text/javascript" src="/js/lib/jquery-ui-1.10.3.interactions-datepicker.js?v=${config.version}"></script>
		<script type="text/javascript" src="/js/lib/jquery.jcrop.js?v=${config.version}"></script>
<!--		<script type="text/javascript" src="/js/lib/jquery.uploadFile.js?v=${config.version}"></script>-->
		<script type="text/javascript" src="/js/lib/jquery.fileupload-5.42.3.js?v=${config.version}"></script>
		<script type="text/javascript" src="/js/lib/jquery.hashchange.js?v=${config.version}"></script>
		<script type="text/javascript" src="/js/lib/jquery.textEditor.js?v=${config.version}"></script>
		<script type="text/javascript" src="/js/cropper.js?v=${config.version}"></script>
		<script type="text/javascript" src="/js/lib/farbtastic.js?v=${config.version}"></script>
		<script type="text/javascript" src="/js/lib/sanitize.js?v=${config.version}"></script>
		<script type="text/javascript" src="/js/lib/he.min.js?v=${config.version}"></script>
		<script type="text/javascript" src="/js/sanitizeConfig.js?v=${config.version}"></script>
		<script type="text/javascript" src="/js/lib/modernizr.custom.94784.js?v=${config.version}"></script>
		<script type="text/javascript" src="/js/lib/ObjPath.js?v=${config.version}"></script>

		<c:choose>
			<c:when test="${config.useEmulatorV2}">
				<script type="text/javascript" src="/js/ionic-emulator.js?v=${config.version}"></script>
				<script type="text/javascript" src="/js/ionic-emulatorLoader.js?v=${config.version}"></script>
			</c:when>
			<c:otherwise>
				<script type="text/javascript" src="/js/lib/iscroll-lite-custom-5.1.1.js?v=${config.version}"></script>
				<script type="text/javascript" src="/js/App.js?v=${config.version}"></script>
				<script type="text/javascript" src="/js/Emulator.js?v=${config.version}"></script>
				<script type="text/javascript" src="/js/EmulatorLoader.js?v=${config.version}"></script>
			</c:otherwise>
		</c:choose>

		<script type="text/javascript" src="/webthemes/appsme/js/BuilderConfig.js?v=${config.version}"></script>
		<script type="text/javascript" src="/js/Builder.js?v=${config.version}"></script>
		<script type="text/javascript" src="/js/featureui.js?v=${config.version}"></script>
		${additionalJavascript}
		<script type="text/javascript" src="/js/tinyui.js?v=${config.version}"></script>
		<script type="text/javascript" src="/js/analytics.js?v=${config.version}"></script>
		<script type="text/javascript" src="/js/pageNavigation.js?v=${config.version}"></script>
		<!-- endbuild -->
		<!-- end source scripts -->


		<!--[if lt IE 8]>
			<link rel="stylesheet" type="text/css" href="/css/style_lt_ie8.css?v=${config.version}" />
		<![endif]-->

		<link href='//fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
		<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700' rel='stylesheet' type='text/css'>

		<c:if test="${config.isNamesco}">
			<script type="text/javascript">
				$(document).ready(function(){
					function getCookie(cname) {
					    var name = cname + "=";
					    var ca = document.cookie.split(';');
					    for(var i=0; i<ca.length; i++) {
					        var c = ca[i];
					        while (c.charAt(0)==' ') c = c.substring(1);
					        if (c.indexOf(name) == 0) return c.substring(name.length,c.length);
					    }
					    return "";
					}

					if(getCookie('JSESSIONID') === "") {
						parent.postMessage(JSON.stringify({action:"no-cookie"}), '*');
					}else{
						$('body').removeClass('hideNamescoBody');
					}
				});
			</script>
	   </c:if>

</head>
<c:set var="bodyClass" value="${bodyClass} ${mobileDevice.isMobileDevice ? 'mobiledevice':''} appsme"/>
<c:choose>
	<c:when test="${config.isNamesco}">
		<body class="${fn:trim(bodyClass)} hideNamescoBody edu">
	</c:when>
	<c:otherwise>
		<body class="${fn:trim(bodyClass)}">
	</c:otherwise>
</c:choose>

	${views.mainNav}

	<form method="POST" action="${config.postAction}">
		<div id="main_container">
			<article id="main_content">
				<div class="container">
					${views.mainContent}
				</div>
			</article>

	</form>

	${views.footer}

		<!-- DO NOT DELETE! PLACEHOLDER FOR RELEASE SCRIPT -->
		<!-- source scripts minified --><!-- end source scripts minified -->

		<!-- build:js dist/webthemes/appsme_education/js/admin-lib.js -->
			<script src="webthemes/appsme_education/lib/angular/angular.js"></script>
			<script src="webthemes/appsme_education/lib/angular/angular-animate.js"></script>
			<script src="webthemes/appsme_education/lib/angular/angular-sanitize.js"></script>
			<script src="webthemes/appsme_education/lib/angular/angular-touch.js"></script>
			<script src="webthemes/appsme_education/lib/angular/angular-ui-router.js"></script>
		<!-- endbuild -->

		<!-- build:js dist/webthemes/appsme_education/js/lib.js -->
			<script src="webthemes/appsme_education/lib/big-slide/big-slide.js"></script>
		<!-- endbuild -->

		<!-- build:js dist/webthemes/appsme_education/js/main.js -->
			<script src="webthemes/appsme_education/features/nav/nav.js"></script>
			<script src="webthemes/appsme_education/features/home/home_education.js"></script>
			<script src="webthemes/appsme_education/features/signin/signin.js"></script>
		<!-- endbuild -->

		<!-- build:js dist/webthemes/appsme_education/js/admin.js -->
			<script src="webthemes/appsme_education/features/admin/app.module.js"></script>
			<script src="webthemes/appsme_education/features/admin/students/students.module.js"></script>
			<script src="webthemes/appsme_education/features/admin/students/students.controller.js"></script>
			<script src="webthemes/appsme_education/features/admin/main/main.module.js"></script>
			<script src="webthemes/appsme_education/features/admin/main/main.controller.js"></script>
			<script src="webthemes/appsme_education/features/admin/classes/classes.module.js"></script>
			<script src="webthemes/appsme_education/features/admin/classes/classes.controller.js"></script>
		<!-- endbuild -->

		<script>

		$('html').addClass('js');
		if(window.Facebook){
			Facebook.appId = '${config.facebookID}';
		}

		var WebConfig = function(){

		    var webtheme = "${config.webtheme}",
		        userSignedIn = "${config.signedIn}";

		    return {
		        getWebTheme: function() {
		          return webtheme;
		        },
		        isUserSignedIn : function() {
		           return userSignedIn  === 'true';
		        }
		    }
		}();

		$.urlParam = function(name){
		    var results = new RegExp('[\\?&]' + name + '=([^&#]*)').exec(window.location.href);
		    if(results!=null){
		    	return results[1] || 0;
		    }else return null;
		}

		</script>

		<script>
		  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

		  ga('create', '${config.googleAnalyticsId}', 'auto', {'allowLinker': true});
		  ga('set', 'forceSSL', true); // Send all data using SSL, even from insecure (HTTP) pages.
		  ga('require', 'linker'); 	  // Load the plugin.
		  ga('linker:autoLink', ['fastspring.com']); // Define which domains to autoLink.
		  if('${config.gaUID}'){
			  ga('set', '&uid', '${config.gaUID}');
		  }

		  if(location.pathname.indexOf("/edit/step") === -1){
			  ga('send', 'pageview');
		  }

		</script>

	<script src="/js/analytics.js?v=${config.version}"></script>
</body>
</html>
