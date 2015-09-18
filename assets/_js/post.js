var post = document.getElementsByClassName('post')[0];
if(post) { loadOrder(); }

function previous(title) {
  var i = findThemeIndex(title);
  var previous = (i + themes.length - 1) % themes.length;
  window.location.href = themes[previous].url;
}

function next(title) {
  var i = findThemeIndex(title);
  var next = (i + 1) % themes.length;
  window.location.href = themes[next].url;
}

function findThemeIndex(title) {
  for(var i = 0; i < themes.length; i++) {
    if(themes[i].title === title) {
      return i;
    }
  }
}