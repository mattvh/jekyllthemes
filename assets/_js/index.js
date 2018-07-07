
window.addEventListener('load', function() {
  echo.init({ offsetVertical: 10000 });
})

var themes = [
  {% for theme in site.posts %}
  {
    "title": "{{ theme.title }}",
    "date": "{{ theme.date }}",
    "thumbnail": "{{ site.cdn }}/thumbnails/{{ theme.thumbnail }}",
    "author": "{{ theme.author }}",
    "url": "{{ site.baseurl }}{{ theme.url }}",
    "stars": "{{ theme.stars }}",
    "demo": "{{ theme.demo }}"
  }{% unless forloop.last %},{% endunless %}
  {% endfor %}
];
