if(document.getElementById('demo')) {
  new Swiper ('.swiper-container', {
    direction: 'horizontal',
    slidesPerView: 'auto',
    scrollbar: '.swiper-scrollbar',
    scrollbarHide: false
  });

  var articleElement = document.getElementById('demo');

  function demoSelected(item) {
    var title = item.getAttribute('data-title');
    var demo = item.getAttribute('data-demo');
    var url = item.getAttribute('data-url');
    loadDemo(title, demo, url);
  }

  function loadDemo(title, demo, url) {
    articleElement.innerHTML = '<a href="{{ site.baseurl }}' + url + '">' +
                                 '<h1>' + title + '</h1>' +
                               '</a>' +
                               '<iframe src="' + demo + '" />';
  }

  {% assign first = site.posts.first %}
  loadDemo('{{ first.title }}', '{{ first.demo }}', '{{ first.url }}');
}