import Route from '@ember/routing/route';
import posts from '../data/blog-posts';

export default class BlogPostRoute extends Route {
    model({ post }) {
        return posts.find((p) => p.slug === post) ?? null;
    }
}