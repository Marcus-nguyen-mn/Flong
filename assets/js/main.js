jQuery(document).ready(function(){
    var productGallery = new Swiper(".product-gallery-thumb", {
        loop: true,
        spaceBetween: 0,
        slidesPerView: 3,
        freeMode: false,
        watchSlidesProgress: true,
    });
    var productGalleryThumbs = new Swiper(".product-gallery-slider", {
        loop: true,
        spaceBetween: 0,
        thumbs: {
        swiper: productGallery,
        },
    });
    var relatedProducts = new Swiper(".related-products", {
        loop: true,
        spaceBetween: 10,
        slidesPerView: 2,
        freeMode: false,
        breakpoints: {
            640: {
              slidesPerView: 2,
              spaceBetween: 20,
            },
            768: {
              slidesPerView: 3,
              spaceBetween: 20,
            },
            1024: {
              slidesPerView: 3,
              spaceBetween: 20,
            },
            1280: {
                slidesPerView: 4,
                spaceBetween: 20,
              },
          },
    });
    var relatedPost = new Swiper('.related-posts', {
      loop: true,
        spaceBetween: 10,
        slidesPerView: 1,
        freeMode: false,
        breakpoints: {
            640: {
              slidesPerView: 2,
              spaceBetween: 16,
            },
            768: {
              slidesPerView: 3,
              spaceBetween: 16,
            },
            1024: {
              slidesPerView: 3,
              spaceBetween: 16,
            },
            1280: {
                slidesPerView: 3,
                spaceBetween: 16,
              },
          },
    });
    var relatedService = new Swiper('.related-services', {
        loop: true,
        spaceBetween: 10,
        slidesPerView: 2,
        freeMode: false,
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
        breakpoints: {
            640: {
              slidesPerView: 2,
              spaceBetween: 16,
            },
            768: {
              slidesPerView: 3,
              spaceBetween: 16,
            },
            1024: {
              slidesPerView: 3,
              spaceBetween: 16,
            },
            1280: {
                slidesPerView: 4,
                spaceBetween: 16,
              },
          },
    });
});