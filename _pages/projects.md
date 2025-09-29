---
title: "Projects"
layout: default
permalink: /projects/
classes: wide
#: grid      # list 로 바꿔도 됨
# sort_by: date           # (선택) 정렬 기준
# sort_order: reverse     # (선택) 최신순
---


# Projects

## Graphics
<div class="proj-grid">
{% assign items = site.projects | where_exp:"p","p.tags contains 'Graphics'" | sort: 'date' | reverse %}
{% for post in items %}
  {% assign teaser = post.header.teaser | default: site.teaser %}
  <a class="proj-card" href="{{ post.url | relative_url }}">
    <div class="proj-card__thumb">
      {% if teaser %}<img src="{{ teaser | relative_url }}" alt="{{ post.title | escape }}">{% endif %}
    </div>
    <div class="proj-card__body">
      <div class="proj-card__title">{{ post.title }}</div>
      {% if post.excerpt %}<p class="proj-card__excerpt">{{ post.excerpt }}</p>{% endif %}
    </div>
  </a>
{% endfor %}
</div>

## Unreal
<div class="proj-grid">
{% assign items = site.projects | where_exp:"p","p.tags contains 'Unreal' or p.tags contains 'UE5'" | sort: 'date' | reverse %}
{% for post in items %}
  {% assign teaser = post.header.teaser | default: site.teaser %}
  <a class="proj-card" href="{{ post.url | relative_url }}">
    <div class="proj-card__thumb">{% if teaser %}<img src="{{ teaser | relative_url }}" alt="{{ post.title | escape }}">{% endif %}</div>
    <div class="proj-card__body">
      <div class="proj-card__title">{{ post.title }}</div>
      {% if post.excerpt %}<p class="proj-card__excerpt">{{ post.excerpt }}</p>{% endif %}
    </div>
  </a>
{% endfor %}
</div>

## Unity
<div class="proj-grid">
{% assign items = site.projects | where_exp:"p","p.tags contains 'Unity'" | sort: 'date' | reverse %}
{% for post in items %}
  {% assign teaser = post.header.teaser | default: site.teaser %}
  <a class="proj-card" href="{{ post.url | relative_url }}">
    <div class="proj-card__thumb">{% if teaser %}<img src="{{ teaser | relative_url }}" alt="{{ post.title | escape }}">{% endif %}</div>
    <div class="proj-card__body">
      <div class="proj-card__title">{{ post.title }}</div>
      {% if post.excerpt %}<p class="proj-card__excerpt">{{ post.excerpt }}</p>{% endif %}
    </div>
  </a>
{% endfor %}
</div>