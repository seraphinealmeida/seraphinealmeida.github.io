import { LinkTo } from '@ember/routing';

<template>
  <div class="site-layout">
    <details class="sidebar-menu">
      <summary aria-label="Toggle navigation menu">
        <span class="menu-icon" aria-hidden="true">
          <span></span>
          <span></span>
          <span></span>
        </span>
        <span>Menu</span>
      </summary>

      <aside class="sidebar">
        

        <nav aria-label="Main navigation">
          <LinkTo @route="index">Home</LinkTo>
          <LinkTo @route="my-projects">Projects</LinkTo>
        </nav>
      </aside>
    </details>

    <main class="main-content">

      <nav class="social-links" aria-label="Social links">
        <a
          href="https://www.linkedin.com/in/sarah-gooneratne-ab71a02b8/"
          target="_blank"
          rel="noopener noreferrer"
        >
          LinkedIn
        </a>
        <a
          href="https://github.com/seraphinealmeida"
          target="_blank"
          rel="noopener noreferrer"
        >
          GitHub
        </a>
      </nav>

      <h1>Seraphine Almeida</h1>
      <hr>

      <p><br>Welcome to my personal website! <br> <br>
        Here you can find my research, passion projects, and the things I like to do in my free time.<br>
      </p>
    </main>
  </div>

  
</template>
