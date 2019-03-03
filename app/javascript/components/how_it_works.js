const animation = document.querySelector('.animated');

const getOffsetTop = function(elem) {

  // Set our distance placeholder
  let distance = 0;

  // Loop up the DOM
  if (elem.offsetParent) {
    do {
      distance += elem.offsetTop;
      elem = elem.offsetParent;
    } while (elem);
  }

  // Return our distance
  return distance < 0 ? 0 : distance;
};


export const debounce = function(func, wait = 10, immediate = true) {
  let timeout = null;
  return function() {
    var context = this, args = arguments;
    var later = function() {
      timeout = null;
      if (!immediate) func.apply(context, args);
    };
    var callNow = immediate && !timeout;
    clearTimeout(timeout);
    timeout = setTimeout(later, wait);
    if (callNow) func.apply(context, args);
  };
};


export const fadeInUp = function() {
    const slideInAt = (window.scrollY + window.innerHeight) - animation.offsetHeight / 4;
    if (slideInAt > getOffsetTop(animation)) {
      animation.classList.add('animation-fade-in');
    }
}

