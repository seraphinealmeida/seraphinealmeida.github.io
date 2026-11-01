import { LinkTo } from '@ember/routing';

function closeMenu(event) {
  const menu = event.currentTarget.closest('.sidebar-menu');

  if (menu) {
    menu.open = false;
  }
}

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

      <button
        class="sidebar-backdrop"
        type="button"
        aria-label="Close navigation menu"
        {{on "click" closeMenu}}
      ></button>

      <aside class="sidebar">
        

        <nav aria-label="Main navigation">
          <LinkTo @route="index" {{on "click" closeMenu}}>Home</LinkTo>
          <LinkTo @route="about" {{on "click" closeMenu}}>About Me</LinkTo>
          <LinkTo @route="blog" {{on "click" closeMenu}}>Blog</LinkTo>
          <LinkTo @route="my-projects" {{on "click" closeMenu}}>Projects</LinkTo>

        </nav>
      </aside>
    </details>

    <nav class="social-links" aria-label="Social links">
      <a
        href="https://www.linkedin.com/in/sarah-gooneratne-ab71a02b8/"
        target="_blank"
        rel="noopener noreferrer"
      >LinkedIn</a>
      <span class="separator" aria-hidden="true"></span>
      <a
        href="https://github.com/seraphinealmeida"
        target="_blank"
        rel="noopener noreferrer"
      >
        GitHub
      </a>
    </nav>

    <main class="main-content">
      {{outlet}}
    </main>
  </div>

  
</template>
