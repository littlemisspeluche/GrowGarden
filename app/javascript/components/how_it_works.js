const animation = document.querySelector('.animated');

const fadeInUp = function() {
    const slideInAt = (window.scrollY + window.innerHeight) - panel.offsetHeight / 4;
    const panelMidpoint = panel.offsetTop + panel.offsetHeight / 4;
    if (slideInAt > panelMidpoint) {
      panel.classList.add('panel-fade-in');
    }
}

window.addEventListener('scroll', debounce(function() {
  fadeInUp();

}));
