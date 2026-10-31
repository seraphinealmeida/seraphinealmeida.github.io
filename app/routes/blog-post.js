import Route from '@ember/routing/route';
import posts from '../data/blog-posts';

export default class BlogPostRoute extends Route {
    model({ slug }) {
        return posts.find((post) => post.slug === slug) ?? null;
    }
}