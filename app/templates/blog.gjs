import { pageTitle } from 'ember-page-title';
import { LinkTo } from '@ember/routing';

<template>
  {{pageTitle "Blog"}}
  <h1>Blog</h1>
  <h4 class="blog-subheading">Here is where you will find my occasional reflections/notes on my engineering adventures :)</h4> 
  {{#each @model as |post|}}
    <article class="blog-post">
      <h3>{{post.title}}</h3> 
      <p class="small-size-text">   
        <time datetime="{{post.date}}">{{post.date}}</time> 
      </p> 
      <p class="blog-post-preview-text">{{post.excerpt}}</p> 

      <LinkTo @route="blog-post" @model={{post.slug}}>
        <p class="read-more-text"> Read more...</p> 
      </LinkTo> 
    </article> 
  {{/each}}
</template>