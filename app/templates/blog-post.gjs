import { LinkTo } from '@ember/routing';

<template>
    {{#if @model}}
        <article class="blog-post">
            <h1>{{@model.title}}</h1> 
            <p class="author-date-text"> 
                 
                Seraphine Almeida ✿
                <time datetime="{{@model.date}}">{{@model.date}}</time>
                <hr>
            </p>

            <div class="post-content">{{@model.content}}</div>

            <LinkTo @route="blog">➥ Return to main blog</LinkTo>
        </article>
    {{else}}
        <h1>o_0 Cannot find post</h1> 
        <LinkTo @route="blog">➥ Return to main blog</LinkTo>
    {{/if}}
</template>            