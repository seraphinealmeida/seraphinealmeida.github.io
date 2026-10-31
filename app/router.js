import EmberRouter from '@embroider/router';
import config from 'seraphinealmeida/config/environment';

export default class Router extends EmberRouter {
  location = config.locationType;
  rootURL = config.rootURL;
}

Router.map(function () {
  this.route('about');
  this.route('my-projects');
  this.route('blog');
  this.route('blog-post', { path: '/blog/:new-post' });
  this.route('style-guide');
});