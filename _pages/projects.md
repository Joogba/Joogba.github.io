---
title: "Projects"
layout: archive
collection: projects
permalink: /projects/
entries_layout: grid      # list 로 바꿔도 됨
# sort_by: date           # (선택) 정렬 기준
# sort_order: reverse     # (선택) 최신순
classes: wide
---

{% assign items = site.projects | sort: "date" | reverse %}
{% for post in items %}
  {% include archive-single.html %}
{% endfor %}