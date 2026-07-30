---
horizontal: true
lang: en
layout: default
nav: false
permalink: /en/
---

<div class="landing">
  <div class="toe-hero-center">
    <div class="toe-eyebrow">The Method System for Projects</div>
    <h1>Find your way through<br>the method jungle</h1>
    <p class="toe-lead">We turn the periodic table of project management methods into orientation: 132 proven tools, models, and frameworks – organized, rated, and instantly findable.</p>
    <div class="toe-btnrow">
      <a class="btn btn-primary" href="{{ '/en/methods/' | relative_url }}">View all methods</a>
      <a class="btn btn-outline-primary" href="{{ '/en/book-app/' | relative_url }}">Book &amp; App</a>
    </div>
    <div class="toe-pstrip">
      {% assign toe_home_codes = "MTA,OB,DSM,BBP,BP,DC,AOH,CF" | split: ',' %}
      {% for c in toe_home_codes %}
        {% assign toe_he = site.data.elements | where: "code", c | first %}
        {% if toe_he %}
          {% assign toe_he_img = "assets/img/elements/en/" | append: toe_he.code | append: ".card.png" %}
          <a class="toe-phototile" href="{{ '/en/elements/' | append: toe_he.code | append: '/' | relative_url }}" aria-label="{{ toe_he.title_en }}">
            {% include figure.liquid loading="eager" path=toe_he_img class="img-fluid" width="220" height="220" alt=toe_he.title_en %}
          </a>
        {% endif %}
      {% endfor %}
    </div>
  </div>

  <h2 class="mt-5">How it works</h2>
  <div class="row row-cols-1 row-cols-md-3 mt-3">
    <div class="col mb-4">
      <div class="card h-100 hoverable">
        <div class="card-body">
          <div class="toe-step-num">1</div>
          <h3 class="card-title">Find your situation</h3>
          <p class="card-text">Whether planning, steering, risk, or team &amp; environment – find a quick entry point into the 132 elements of the table.</p>
        </div>
      </div>
    </div>
    <div class="col mb-4">
      <div class="card h-100 hoverable">
        <div class="card-body">
          <div class="toe-step-num">2</div>
          <h3 class="card-title">Filter or search</h3>
          <p class="card-text">Filter by category – or search directly.</p>
        </div>
      </div>
    </div>
    <div class="col mb-4">
      <div class="card h-100 hoverable">
        <div class="card-body">
          <div class="toe-step-num">3</div>
          <h3 class="card-title">Apply it</h3>
          <p class="card-text">Full step-by-step instructions in the book &amp; app.</p>
        </div>
      </div>
    </div>
  </div>
  <div class="text-center mt-3">
    <a class="btn btn-primary" href="{{ '/en/methods/' | relative_url }}">View all 132 methods</a>
  </div>

  <h2 class="mt-5">Free: the methods poster</h2>
  <div class="card hoverable mt-3">
    <div class="card-body d-flex flex-wrap align-items-center toe-gap-24">
      {% include figure.liquid loading="eager" path="assets/img/toe/poster-preview.png" class="img-fluid toe-poster-preview" width="680" height="481" alt="Preview: methods poster" %}
      <div class="toe-flex-1">
        <h3 class="mt-0">All 132 methods as a poster</h3>
        <p>Previously in our shop – now free to download, in German &amp; English.</p>
        <a class="btn btn-primary" href="{{ '/en/downloads/' | relative_url }}">Go to downloads</a>
      </div>
    </div>
  </div>

  <h2 class="mt-5" id="fundament">The foundation: book &amp; app</h2>
  <div class="row row-cols-1 row-cols-md-2 mt-3">
    <div class="col mb-4">
      <div class="card h-100 hoverable text-center">
        <div class="card-body d-flex flex-column justify-content-center h-100">
          {% include figure.liquid loading="eager" path="assets/img/toe/buchcover.jpg" class="img-fluid rounded toe-book-cover" width="180" height="255" alt="Book cover: Das Methodensystem für Projekte" %}
          <h3 class="mt-3">Das Methodensystem für Projekte</h3>
          <p class="card-text">Bernhard Schloß &amp; Christian Botta · Hanser Verlag <span class="badge bg-secondary">English edition coming soon</span></p>
          <a class="btn btn-outline-primary" href="https://www.hanser-fachbuch.de/Das-Methodensystem-fuer-Projekte/978-3-446-48367-5" target="_blank" rel="noopener">View the book</a>
        </div>
      </div>
    </div>
    <div class="col mb-4">
      <div class="card h-100 hoverable text-center">
        <div class="card-body d-flex flex-column justify-content-center h-100">
          {% include figure.liquid loading="eager" path="assets/img/toe/app-icon.png" class="rounded toe-app-icon" width="64" height="64" alt="PM Elements App icon" %}
          <h3 class="mt-3">PM Elements App</h3>
          {% include figure.liquid loading="eager" path="assets/img/toe/app-screenshots.png" class="img-fluid rounded mt-2" width="1200" height="800" alt="PM Elements App – iPhone &amp; iPad screenshots" %}
          <p class="card-text mt-2">All methods, interactive, filterable, on the go.</p>
          <a class="btn btn-outline-primary" href="https://apps.apple.com/at/app/pm-elements/id6738084498" target="_blank" rel="noopener">On the App Store</a>
        </div>
      </div>
    </div>
  </div>

  <h2 class="mt-5">Follow us</h2>
  <div class="row row-cols-1 row-cols-md-2 mt-3">
    <div class="col mb-4">
      <a class="card h-100 hoverable toe-follow-card" href="https://www.linkedin.com/company/88909321/" target="_blank" rel="noopener">
        <div class="card-body d-flex align-items-center toe-gap-14">
          <svg width="36" height="36" viewBox="0 0 24 24" aria-hidden="true"><rect width="24" height="24" rx="5" fill="#0A66C2"/><path fill="#fff" d="M7.12 9.4H4.56V19h2.56V9.4ZM5.84 5.1a1.49 1.49 0 1 0 0 2.98 1.49 1.49 0 0 0 0-2.98ZM19.44 19h-2.55v-5.02c0-1.2-.02-2.74-1.67-2.74-1.67 0-1.93 1.3-1.93 2.65V19H10.7V9.4h2.45v1.31h.03c.34-.64 1.18-1.32 2.42-1.32 2.59 0 3.07 1.7 3.07 3.92V19Z"/></svg>
          <div>
            <h3 class="card-title mb-1">LinkedIn</h3>
            <p class="card-text">"Element of the week" &amp; updates – 1,146+ followers.</p>
          </div>
        </div>
      </a>
    </div>
    <div class="col mb-4">
      <a class="card h-100 hoverable toe-follow-card" href="https://www.youtube.com/@Table-of-Elements_io" target="_blank" rel="noopener">
        <div class="card-body d-flex align-items-center toe-gap-14">
          <svg width="36" height="36" viewBox="0 0 24 24" aria-hidden="true"><rect width="24" height="24" rx="5" fill="#FF0000"/><path fill="#fff" d="M17.8 8.2c-.16-.63-.65-1.12-1.28-1.28C15.4 6.6 12 6.6 12 6.6s-3.4 0-4.52.32c-.63.16-1.12.65-1.28 1.28C6 9.32 6 12 6 12s0 2.68.2 3.8c.16.63.65 1.12 1.28 1.28 1.12.32 4.52.32 4.52.32s3.4 0 4.52-.32c.63-.16 1.12-.65 1.28-1.28.2-1.12.2-3.8.2-3.8s0-2.68-.2-3.8Z"/><path fill="#FF0000" d="M10.4 14.2 14.2 12l-3.8-2.2v4.4Z"/></svg>
          <div>
            <h3 class="card-title mb-1">YouTube</h3>
            <p class="card-text">Methods explained on video. Short, hands-on clips covering individual elements of the method system.</p>
          </div>
        </div>
      </a>
    </div>
  </div>

  <h2 class="mt-4">Recommended by</h2>
  <div class="mt-4">
    <div class="row row-cols-1 row-cols-md-2">
      <div class="col">
        <a href="https://www.guidobosbach.com">
          <div class="card h-100 hoverable">
            {% include figure.liquid loading="eager" path="assets/img/guido_bosbach.jpg" class="img-fluid rounded mt-4" width="90" height="120" alt="Guido Bosbach" %}
            <div class="card-body">
              <h3 class="card-title">Guido Bosbach</h3>
              <p class="card-text">The Table of PM Elements is a compact yet comprehensive overview of methods, concepts, tools, and inspiration. Simply structured, easy to use, as an overview or as guidance when working with (still unfamiliar) tools.</p>
              <div class="row ml-1 mr-1 p-0"></div>
            </div>
          </div>
        </a>
      </div>
      <div class="col">
        <a href="https://www.pentaeder.de/projekte/2025/01/28/table-of-elements/">
          <div class="card h-100 hoverable">
            {% include figure.liquid loading="eager" path="assets/img/eberhard_huber.jpg" class="img-fluid rounded mt-4" width="90" height="120" alt="Eberhard Huber" %}
            <div class="card-body">
              <h3 class="card-title">Eberhard Huber</h3>
              <p class="card-text">I recommend the app because "Table of Elements" made it onto the recommendation list I share with my students. What I particularly liked is that it also states well-founded difficulty levels.</p>
              <div class="row ml-1 mr-1 p-0"></div>
            </div>
          </div>
        </a>
      </div>
    </div>
  </div>
</div>
