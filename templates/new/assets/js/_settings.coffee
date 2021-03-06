# BASIC SITE SETTINGS

window.k$ =

	# Apps
	# Local apps to be loaded on every page.
	apps: [
		'ks:sample-app'
		'ks:tinygrowl'
		'ks:ang-app'
		'ks:kickstrap-logo'
	]

	# Angular components
	angular:
		controllers: [
			'messages'
			'products'
			'docs'
			'home'
			'login'
		]
		directives: [
			'enter'
			'visible'
			'repeat'
		]
		filters: [
			'startFrom'
		]
		pages: [
			'first-steps'
			'apps'
			'api'
			'coffeescript'
			'jade'
			'pages'
			'partials'
			'roots'
			'stylus'
			'templates'
			'acknowledgments'
			'optimizations'
			'social-login'
			'growls'
		]

	# JSPM Caching mode (choose dev or prod)
	# mode: 'dev'

	# Firebase URI
	# firebaseName: 'kickstrap-demo'

	# Versioning for your Firebase (e.g. https://myfb.firebaseio.com/v1-0/products)
	firebaseNameVersion: 'v2-0'

	# Only edit if you know what you're doing.
	core: [
		'jquery'
		'bootstrap'
		'angular'
	]

jspm.config
	endpoints:
		ks: 
			location: 	'./apps'
			main: 		'main'
			format: 	'auto'

	# map basically allows easy "shortcut" names for packages
	map:
		'jquery': 				'github:components/jquery@2.0'
		'bootstrap': 			'github:twbs/bootstrap@3.0/js/bootstrap'
		'angular': 				'cdnjs:angular.js/1.2.1'
		'angularFire': 			'github:firebase/angularFire@0.5'
		'ang-app': 				'ks:ang-app'
		'angular-route':		'ks:ang-app/resources/angular-route'
		'gatedScope':			'ks:ang-app/resources/gatedScope'
		'fontawesome': 			'cdnjs:font-awesome/4.0.3/css/font-awesome.min.css!'
		'ngProgress':			'ks:ang-app/resources/ngprogress'
		'firebaseSimpleLogin':	'ks:ang-app/resources/firebaseSimpleLogin'
		'css': 					'github:jspm/plugin-css/css'

	# packages are the primary unit of configuration
	packages:

		'cdnjs:angular.js/1.2.1':
			main: 'angular.min'
			shim:
				'angular.min':
					exports: 'angular'

		'ks:ang-app':
			shim:
				'resources/angular-route': 				['angular']
				'resources/ngprogress': 				['angular']
				'resources/gatedScope': 				['angular']