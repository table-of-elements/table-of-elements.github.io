---
horizontal: true
lang: de
layout: default
permalink: /de/methoden/
title: Alle 132 Methoden
---

# Alle 132 Methoden

<p class="lead">Filtere nach Kategorie oder klicke direkt auf eine Methode, um mehr zu erfahren.</p>

<div class="mb-4">
  <label for="toe-filter" class="form-label">Kategorie</label>
  <select id="toe-filter" class="form-select" style="max-width:320px" onchange="toeFilterMethods(this.value)">
    <option value="">Alle</option>
    {% assign classes = site.data.elements | map: "class_id" | uniq %}
    {% for cid in classes %}
      {% assign entry = site.data.elements | where: "class_id", cid | first %}
      <option value="{{ cid }}">{{ entry.class_de }}</option>
    {% endfor %}
  </select>
</div>

<div class="toe-legend mb-4">
  {% for cid in classes %}
    {% assign entry = site.data.elements | where: "class_id", cid | first %}
    <span class="toe-legend-item"><i style="background:{{ entry.class_bg }}"></i>{{ entry.class_de }}</span>
  {% endfor %}
</div>

{% assign phases = site.data.elements | map: "phase_id" | uniq %}
{% for pid in phases %}
  {% assign phase_items = site.data.elements | where: "phase_id", pid %}
  {% assign phase_entry = phase_items | first %}
  <h2 class="toe-phase-title mt-5">{{ phase_entry.phase_de }}</h2>
  <div class="toe-tilegrid" data-phase="{{ pid }}">
    {% for e in phase_items %}
      <a href="{{ '/de/elements/' | append: e.code | append: '/' | relative_url }}"
         class="toe-tile"
         data-class="{{ e.class_id }}"
         style="background:{{ e.class_bg }};color:{{ e.class_fg }}">
        <span class="toe-tile-code">{{ e.code }}</span>
        <span class="toe-tile-title">{{ e.title_de }}</span>
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
      grid.closest ? null : null;
      var heading = grid.previousElementSibling;
      var show = anyVisible ? '' : 'none';
      grid.style.display = show;
      if (heading && heading.classList.contains('toe-phase-title')) {
        heading.style.display = show;
      }
    });
  }
</script>
