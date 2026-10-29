import { pageTitle } from 'ember-page-title';

<template>
  {{pageTitle "Blog"}}

  <h1>Blog</h1>

  <article class="blog-post">
    <header>
      <h2>Post title goes here</h2>
      <p>
        <time datetime="2026-10-29">October 29, 2026</time>
        <span> · </span>
        <span>By Seraphine Almeida</span>
      </p>
    </header>

    <p>Write a short introduction to the post here.</p>

    <h3>A section heading</h3>
    <p>Write the main content here. Add more paragraphs and headings as needed.</p>
  </article>
</template>