import { pageTitle } from 'ember-page-title';
import { LinkTo } from '@ember/routing';

<template>
  {{pageTitle "Blog"}}
  <h1>Blog</h1>
  {{#each @model as |post|}}
    <article class="blog-post">
      <h3>{{post.title}}</h3> 
      <p class="small-size-text">   
        <time datetime="{{post.date}}">{{post.date}}</time> 
      </p> 
      <p>{{post.excerpt}}</p> 

      <LinkTo @route="blog-post" @model={{post.slug}}>
        Read more...
      </LinkTo> 
    </article> 
  {{/each}}
</template>