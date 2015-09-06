if(document.getElementById('demo')) {
  new Swiper ('.swiper-container', {
    direction: 'horizontal',
    slidesPerView: 'auto',
    loop: true,
    scrollbar: '.swiper-scrollbar',
    scrollbarHide: false
  });

  var articleElement = document.getElementById('demo');

  function demoSelected(item) {
    var title = item.getAttribute('data-title');
    var demo = item.getAttribute('data-demo');
    loadDemo(title, demo);
  }

  function loadDemo(title, demo) {
    articleElement.innerHTML = '<h1>' + title + '</h1><iframe src="' + demo + '" />';
  }

  loadDemo('{{ site.posts.first.title }}', '{{ site.posts.first.demo }}');
}