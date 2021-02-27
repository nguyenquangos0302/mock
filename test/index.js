$('.slick-slider-1').slick({
  centerMode: true,
  slidesToShow: 3,
  //dots: true,
  arrows: true,
  swipe: true,
  swipeToSlide: true,
  //adaptiveHeight: true,
  infinite: true,
  autoplay: true,
  autoplaySpeed: 5000,
  pauseOnFocus: true,
  pauseOnHover: true,
  cssEase: 'linear'
});

const slick_prev = document.querySelector(".slick-prev");
slick_prev.innerHTML = "";

const slick_next = document.querySelector(".slick-next");
slick_next.innerHTML = "";