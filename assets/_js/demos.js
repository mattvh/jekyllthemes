var articleElement = document.getElementById('demo');

if(articleElement) {
  {% assign first = site.posts.first %}
  loadDemo('{{ first.title }}');
}

function loadDemo(title) {
  for(var i = 0; i < themes.length; i++) {
    if(themes[i].title === title) {
      articleElement.innerHTML = '<a href="{{ site.baseurl }}' + themes[i].url + '">' +
                                   '<h1>' + title + '</h1>' +
                                 '</a>' +
                                 '<iframe src="' + themes[i].demo + '" />';
      return;
    }
  }
}