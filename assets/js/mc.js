jQuery(document).ready(function(){
    sliderBannerTop();
    slider2LightProduct();
});
function sliderBannerTop(){
    let swiper = new Swiper(".slider-top-cover", {
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
      });
}
function slider2LightProduct(){
    let swiper = new Swiper(".slide-product-2light", {
        slidesPerView: 1.7,
        spaceBetween: 10,
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
          },
          mousewheel: true,
          keyboard: true,
          breakpoints: {
            640: {
              slidesPerView: 2,
              spaceBetween: 20,
            },
            768: {
              slidesPerView: 3,
              spaceBetween: 20,
            },
            1200: {
              slidesPerView: 4,
              spaceBetween: 30,
            },
          }
      });
}