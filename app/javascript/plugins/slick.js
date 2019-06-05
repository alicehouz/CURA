$('.slick-form').slick({
  centerPadding: '60px',
  arrow: false,
  dots: true,
  draggable: false,
  swipeToSlide: false,
  swipe: false,
  touchMove: false,
  verticalSwiping: false,
  infinite: false,
  mobileFirst: true
});

const btns = document.querySelectorAll(".btn-next");

btns.forEach((btn) => {
 btn.addEventListener('click', () => {
   $('.slick-form').slick('slickNext');
 })
})

const btnsprev = document.querySelectorAll(".btn-previous");

btnsprev.forEach((btn) => {
 btn.addEventListener('click', () => {
   $('.slick-form').slick('slickPrev');
 })
})
