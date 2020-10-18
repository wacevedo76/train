function smoothScroll(target, duration) {
  target = document.querySelector(target);
  const targetPosition = target.getBoundingClientRect().top - 30;
  const startPosition = window.pageYOffset;
  const distance = targetPosition - startPosition;
  let startTime = null;

  function animation(currentTime) {
    if(startTime === null ) startTime = currentTime;
    var timeElapsed = currentTime - startTime;
    var run = ease(timeElapsed, startPosition, distance, duration);
    window.scrollTo(0, run);
    if(timeElapsed < duration) requestAnimationFrame(animation);
  }
  
  function ease(t, b, c, d) {
    t /= d / 2;
    if (t < 1) return c / 2 * t * t + b;
    t--;
    return -c / 2 * (t * (t - 2) - 1) + b;
  }
  
  requestAnimationFrame(animation);
}
const aboutLink = document.querySelector('.aboutLink');
const blogLink  = document.querySelector('.blogLink');

aboutLink.addEventListener('click', () => {smoothScroll('#about', 1000)});
blogLink.addEventListener('click', () => {smoothScroll('#blog', 1000)});
