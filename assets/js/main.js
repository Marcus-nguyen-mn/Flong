jQuery(document).ready(function(){
    var swiper = new Swiper(".product-gallery-thumb", {
        loop: true,
        spaceBetween: 0,
        slidesPerView: 3,
        freeMode: false,
        watchSlidesProgress: true,
    });
    var swiper2 = new Swiper(".product-gallery-slider", {
        loop: true,
        spaceBetween: 0,
        thumbs: {
        swiper: swiper,
        },
    });
});