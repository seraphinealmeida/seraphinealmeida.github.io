import { marked } from 'marked';
import { parse } from 'yaml';
import { htmlSafe } from '@ember/template';

const mdFiles = import.meta.glob('./posts/*.md', {
    eager: true, 
    query: '?raw',
    import: 'default',
});

function loadPost([path, source]) {
    const match = source.match(/^---\s*\r?\n([\s\S]*?)\r?\n---\s*(?:\r?\n|$)([\s\S]*)$/);

    if (!match) {
        throw new Error(`Missing YAML front matter in ${path}`);
    }

    const metadata = parse(match[1]);
    const body = match[2].trim();
    const bodyHtml = marked.parse(body);

    const excerptSource = bodyHtml.replace(/<\/(?:p|h[1-6]|li)>/gi, '$& ');
    const plainText =
    new DOMParser()
    .parseFromString(excerptSource, 'text/html')
    .body.textContent?.replace(/\s+/g, ' ')
    .trim() ?? '';

    const maxExcerptLength = 200;
    const excerptText = Array.from(plainText)
    .slice(0, maxExcerptLength)
    .join('')
    .trimEnd();

    return {
    ...metadata,
    slug: metadata.slug ?? path.split('/').pop().replace(/\.md$/, ''),
    excerpt:
        plainText.length > maxExcerptLength ? `${excerptText}...` : excerptText,
    content: htmlSafe(bodyHtml),
    };
}


export default Object.entries(mdFiles).map(loadPost);