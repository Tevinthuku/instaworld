// the layout
Router.configure({
    layoutTemplate: 'layout'
});



// the main router
Router.route('/', {
    name: 'main',
    template: 'main'
});

// the home route

Router.route('/home');

// the posts routes
Router.route('/posts');

// the favorite route

Router.route('/favorite');

// the router for the settings
Router.route('/settings');

// the upload router

Router.route('/upload');