jQuery(document).ready(function(){
    sliderBannerTop();
    slider2LightProduct();
    sliderPartner();
    handlerMenu();
    hanlderMenuMob();
});
function sliderBannerTop(){
    let swiper = new Swiper(".slider-top-cover", {
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
      });
}
function sliderPartner(){
  let swiper = new Swiper(".slide-partner", {
    slidesPerView: 1.7,
    spaceBetween: 10,
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
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
          slidesPerView: 6,
          spaceBetween: 30,
        },
      }
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
function handlerMenu(){
  window.addEventListener('scroll', function() {
    const header = document.getElementById('mcHeader');
    const fixedMenu = document.getElementById('fixedMenu');
    if(header){
      const headerHeight = header.offsetHeight;
      if (window.scrollY >= headerHeight) {
          header.style.opacity = '0';
          fixedMenu.style.opacity = '1';
      } else {
          header.style.opacity = '1';
          fixedMenu.style.opacity = '0';
      }
    }
  });
}
function hanlderMenuMob(){
  let barMob = document.querySelector(".handle-bar-mob");
  let menuMob = document.querySelector(".menu-mob");
  let closeMenuMob = document.querySelector(".menu-mob-cls");
  if(barMob){
    barMob.onclick = ()=>{
      menuMob.style.display = "block";      
    }
  }
  if(closeMenuMob){
    closeMenuMob.onclick = ()=>{
      menuMob.style.display = "none";      
    }
  }
}