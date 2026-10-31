import Route from '@ember/routing/route';
import posts from '../data/blog-posts';

export default class BlogRoute extends Route {
    model() {
        return posts;
    }
}