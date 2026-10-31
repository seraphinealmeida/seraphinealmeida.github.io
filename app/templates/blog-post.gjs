import { LinkTo } from '@ember/routing';

<template>
    {{#if @model}}
        <article class="blog-post">
            <h1>{{@model}}</h1> 
            <p> 
                <time datetime="{{@model.date}}">{{@model.date}}</time>
            </p>

            {{#each @model.sections as |section|}}
                <section> 
                    <h2>{{section.heading}}</h2> 
                    {{#each section.paragraphs as |paragraph|}}
                        <p>{{paragraph}}</p> 
                    {{/each}}
                </section>
            {{/each}}

            <LinkTo @route="blog">Return to main blog</LinkTo>
        </article>
    {{else}}
        <h1>o_0 Cannot find post</h1> 
        <LinkTo @route="blog">Return to main blog</LinkTo>
    {{/if}}
</template>            