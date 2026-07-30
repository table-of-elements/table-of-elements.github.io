---
horizontal: true
lang: en
layout: default
permalink: /en/methods/
title: All 132 Methods
---

# All 132 Methods

<p class="lead">Filter by category or click directly on a method to learn more.</p>

<div class="mb-4">
  <label for="toe-filter" class="form-label">Category</label>
  <select id="toe-filter" class="form-select" style="max-width:320px" onchange="toeFilterMethods(this.value)">
    <option value="">All</option>
    {% assign classes = site.data.elements | map: "class_id" | uniq %}
    {% for cid in classes %}
      {% assign entry = site.data.elements | where: "class_id", cid | first %}
      <option value="{{ cid }}">{{ entry.class_en }}</option>
    {% endfor %}
  </select>
</div>

<div class="toe-legend mb-4">
  {% for cid in classes %}
    {% assign entry = site.data.elements | where: "class_id", cid | first %}
    <span class="toe-legend-item"><i style="background:{{ entry.class_bg }}"></i>{{ entry.class_en }}</span>
  {% endfor %}
</div>

{% assign phases = site.data.elements | map: "phase_id" | uniq %}
{% for pid in phases %}
  {% assign phase_items = site.data.elements | where: "phase_id", pid %}
  {% assign phase_entry = phase_items | first %}
  <h2 class="toe-phase-title mt-5">{{ phase_entry.phase_en }}</h2>
  <div class="toe-tilegrid" data-phase="{{ pid }}">
    {% for e in phase_items %}
      <a href="{{ '/en/elements/' | append: e.code | append: '/' | relative_url }}"
         class="toe-tile"
         data-class="{{ e.class_id }}"
         style="background:{{ e.class_bg }};color:{{ e.class_fg }}">
        <span class="toe-tile-code">{{ e.code }}</span>
        <span class="toe-tile-title">{{ e.title_en }}</span>
      </a>
    {% endfor %}
  </div>
{% endfor %}

<script>
  function toeFilterMethods(cls) {
    document.querySelectorAll('.toe-tile').forEach(function (tile) {
      tile.style.display = (!cls || tile.dataset.class === cls) ? '' : 'none';
    });
    document.querySelectorAll('.toe-tilegrid').forEach(function (grid) {
      var anyVisible = Array.prototype.some.call(
        grid.querySelectorAll('.toe-tile'),
        function (t) { return t.style.display !== 'none'; }
      );
      var heading = grid.previousElementSibling;
      var show = anyVisible ? '' : 'none';
      grid.style.display = show;
      if (heading && heading.classList.contains('toe-phase-title')) {
        heading.style.display = show;
      }
    });
  }
</script>
