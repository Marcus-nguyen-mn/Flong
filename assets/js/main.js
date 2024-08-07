jQuery(document).ready(function(){
    sliderPartner();
    handleCollapService();
    handleSliderDev();
    sliderTeam();
    sliderMemberPoha();
    handleQuestion();
    sliderBlog();
    scrollMenu();
    handlePopRight();
    handleMenuMob();
    handleSearchMob();
    handleVideoAboutUs();
    sliderEacAbu();
    handleFormBottom();
    handleFormRight();
    handleFormService();
    handleButtonWebPage();
    AOS.init();
});
function sliderPartner(){
    jQuery('.slider-partner').slick({
        dots: false,
        slidesToShow: 8,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 0,
        speed: 6000,
        pauseOnHover: true,
        cssEase: 'linear',
        responsive: [
            {
              breakpoint: 1025,
              settings: {
                slidesToShow: 7,
                slidesToScroll: 7,
              }
            },
            {
              breakpoint: 600,
              settings: {
                slidesToShow: 4,
                slidesToScroll: 4
              }
            },
            {
              breakpoint: 480,
              settings: {
                slidesToShow: 3,
                slidesToScroll: 3
              }
            }
        ]
    });
}
function sliderTeam(){
    jQuery('.marquee-text-cover').slick({
        dots: false,
        slidesToShow: 2,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 0,
        speed: 6000,
        pauseOnHover: true,
        cssEase: 'linear'
    });
}
function handleCollapService(){
    let coll = document.querySelectorAll(".name-service.collapsible");
    let defaultShow = document.querySelector(".item-service-cover.default");
    let allListContent = document.querySelectorAll(".item-service-cover");
    if(defaultShow){
      defaultShow.style.maxHeight = defaultShow.scrollHeight + "px";
    }
    if(coll){
        for (let i = 0; i < coll.length; i++) {
            coll[i].addEventListener("click", function() {
            if(allListContent){
                allListContent.forEach(element => {
                    element.style.maxHeight = null;
                });
            }
            let content = this.nextElementSibling;
            if (content.style.maxHeight){
                content.style.maxHeight = null;
            } else {
                content.style.maxHeight = content.scrollHeight + "px";
            } 
            });
        }
    }
}
function handleSliderDev(){
    jQuery('.slide-dev-right').slick({
        dots: false,
        infinite: true,
        speed: 500,
        slidesToShow: 4,
        slidesToScroll: 4,
        responsive: [
            {
              breakpoint: 1700,
              settings: {
                slidesToShow: 3,
                slidesToScroll: 3,
              }
            },
            {
              breakpoint: 1200,
              settings: {
                slidesToShow: 2,
                slidesToScroll: 2
              }
            },
            {
              breakpoint: 480,
              settings: {
                slidesToShow: 1,
                slidesToScroll: 1
              }
            }
        ]
    });
}
function sliderMemberPoha(){
    let swiper = new Swiper(".my-slider-team", {
        slidesPerView: 6,
        spaceBetween: 20,
        speed: 1000,
        freeMode: true,
        breakpoints: {
            280: {
              slidesPerView: 2,
              spaceBetween: 10,
            },
            768: {
              slidesPerView: 4,
              spaceBetween: 20,
            },
            1025: {
              slidesPerView: 6,
              spaceBetween: 20,
            },
        },
    });
}
function handleQuestion(){
    let quest = document.querySelectorAll(".item_quest_dom");
    let answer = document.querySelectorAll(".answer_dom");
    if(quest){
        quest.forEach(element => {
            element.onclick = ()=>{
                quest.forEach(item => {
                    item.classList.remove("active");
                });
                answer.forEach(item => {
                    item.classList.remove("active");
                });
                let currentQuest = element.getAttribute("data-quest");
                element.classList.add("active");
                jQuery(currentQuest).addClass("active");
            }
        });
    }
}
function sliderBlog(){
    let swiperBlog = new Swiper(".list_post_blog", {
        slidesPerView: 4,
        spaceBetween: 20,
        speed: 1000,
        freeMode: true,
        breakpoints: {
            280: {
              slidesPerView: 2,
              spaceBetween: 10,
            },
            768: {
              slidesPerView: 3,
              spaceBetween: 20,
            },
            1024: {
              slidesPerView: 4,
              spaceBetween: 20,
            },
        },
    });
}
function scrollMenu(){
    window.onscroll = function() {
        let mcHeader = document.querySelector(".header");
        let mcHeaderMob = document.querySelector(".mc_header_mob");
        if (document.body.scrollTop > 80 || document.documentElement.scrollTop > 80) {
            if(mcHeader){
                mcHeader.classList.add("active");
            }
            if(mcHeaderMob){
              mcHeaderMob.classList.add("active");
            }
          } else {
            if(mcHeader){
                mcHeader.classList.remove("active");
            }
            if(mcHeaderMob){
              mcHeaderMob.classList.remove("active");
            }
          }
    };
}
function handlePopRight(){
    let btnOpen = document.querySelector(".comment-your-prject");
    let popRight = document.querySelector(".popup_form_right");
    let overlayPopRight = document.querySelector(".overlay_pop_form_right");
    let btnClosPopRight = document.querySelector("#btnClosPopRight");
    if(btnOpen){
        btnOpen.onclick = ()=>{
            popRight.style.display = "block";
            overlayPopRight.style.display = "block";
        }
    }
    if(btnClosPopRight){
        btnClosPopRight.onclick = ()=>{
            popRight.style.display = "none";
            overlayPopRight.style.display = "none";
        }
    }
    if(overlayPopRight){
        overlayPopRight.onclick = ()=>{
            popRight.style.display = "none";
            overlayPopRight.style.display = "none";
        }
    }
}
function handleMenuMob(){
  let leftIcOpenMenuMob = document.querySelector("#leftIcOpenMenuMob");
  let menuMob = document.querySelector("#menuMob");
  let overlayMenuMob = document.querySelector("#overlayMenuMob");
  let closeMenuMob = document.querySelector("#closeMenuMob");
  if(leftIcOpenMenuMob){
    leftIcOpenMenuMob.onclick = ()=>{
      menuMob.style.display = "block";
      overlayMenuMob.style.display = "block";
    }
  }
  if(overlayMenuMob){
    overlayMenuMob.onclick = ()=>{
      menuMob.style.display = "none";
      overlayMenuMob.style.display = "none";
    }
  }
  if(closeMenuMob){
    closeMenuMob.onclick = ()=>{
      menuMob.style.display = "none";
      overlayMenuMob.style.display = "none";
    }
  }
}
function handleSearchMob(){
  let openSearchMob = document.querySelector(".right_open_ic_search");
  let closeSearchMob = document.querySelector(".right_close_ic_search");
  let searchMob = document.querySelector(".search_mob");
  if(openSearchMob){
    openSearchMob.onclick = ()=>{
      searchMob.classList.add("active");
      openSearchMob.style.display = "none";
      closeSearchMob.style.display = "block";
    }
  }
  if(closeSearchMob){
    closeSearchMob.onclick = ()=>{
      searchMob.classList.remove("active");
      openSearchMob.style.display = "block";
      closeSearchMob.style.display = "none";
    }
  }
}
function handleVideoAboutUs(){
  let icOpenVideoAbu = document.querySelector(".img-ic-open-video-abu");
  let closeVideoAbu = document.querySelector(".close-video-abus");
  let abuPopVideo = document.querySelector("#abuPopVideo");
  let abuShowVideo = document.querySelector("#abuShowVideo");
  let overlayVideoAbu = document.querySelector(".overlay-pop-video");
  if(icOpenVideoAbu){
    icOpenVideoAbu.onclick = ()=>{
      abuPopVideo.style.display = "block";
      overlayVideoAbu.style.display = "block";
      let video = icOpenVideoAbu.getAttribute("data-video");
      abuShowVideo.innerHTML = video;
    }
  }
  if(overlayVideoAbu){
    overlayVideoAbu.onclick = ()=>{
      abuPopVideo.style.display = "none";
      overlayVideoAbu.style.display = "none";
      abuShowVideo.innerHTML = "";
    }
  }
  if(closeVideoAbu){
    closeVideoAbu.onclick = ()=>{
      abuPopVideo.style.display = "none";
      overlayVideoAbu.style.display = "none";
      abuShowVideo.innerHTML = "";
    }
  }
}
function sliderEacAbu(){
  const progressCircle = document.querySelector(".autoplay-progress svg");
  const progressContent = document.querySelector(".autoplay-progress span");
  let swiper = new Swiper(".eac_cover", {
    spaceBetween: 30,
    centeredSlides: true,
    autoplay: {
      delay: 3500,
      disableOnInteraction: false
    },
    on: {
      autoplayTimeLeft(s, time, progress) {
        progressCircle.style.setProperty("--progress", 1 - progress);
        progressContent.textContent = `${Math.ceil(time / 1000)}s`;
      }
    }
  });
}
function handleFormBottom(){
  let btnSubFormBottom = document.querySelector(".btn-handle-sub-form-bottom");
  let inpNameFormBottom = document.querySelector("#inpNameFormBottom");
  let inpEmailFormBottom = document.querySelector("#inpEmailFormBottom");
  let inpPhoneFormBottom = document.querySelector("#inpPhoneFormBottom");
  let inpDateFormBottom = document.querySelector("#DateBt");
  let inpLinkFormBottom = document.querySelector("#linkRes");
  let inpCompanyFormBottom = document.querySelector("#inpCompanyFormBottom");
  let inpContentFormBottom = document.querySelector("#inpContentFormBottom");
  let validName = document.querySelector(".valid-name");
  let validEmail = document.querySelector(".valid-email");
  let validPhone = document.querySelector(".valid-phone");
  let mcLoading = document.querySelector("#mcLoading");
  let url = 'https://script.google.com/macros/s/AKfycbwS5AIwK3Q9lkrpU7HW-uMD3WgG_yj_CFWFQyHpQWNiLT1Fab3x6aabKBIjwR6_9JE4/exec'
  let data = {
    "name": "",
    "email": "",
    "phone": "",
    "date": "",
    "link": "",
    "company": "",
    "content": ""
  }
  if(btnSubFormBottom){
    btnSubFormBottom.onclick = function(){
      let valName = inpNameFormBottom.value;
      let valEmail = inpEmailFormBottom.value;
      let valPhone = inpPhoneFormBottom.value;
      let valDate = inpDateFormBottom.value;
      let valLink = inpLinkFormBottom.value;
      let valCompany = inpCompanyFormBottom.value;
      let valContent = inpContentFormBottom.value;
      if(valName == '' || valEmail == '' || valPhone == ''){
        if(valName == ''){
          validName.style.display = "block";
        }
        if(valEmail == ''){
          validEmail.style.display = "block";
        }
        if(valPhone == ''){
          validPhone.style.display = "block";
        }
      }else{
        data.name = valName;
        data.email = valEmail;
        data.phone = valPhone;
        data.date = valDate;
        data.link = valLink;
        data.company = valCompany;
        data.content = valContent;
        mcLoading.style.display = "block";
        jQuery.ajax({
          url: url,
          method: "GET",
          dataType: "json",
          data: data,
          success : function(response){
            mcLoading.style.display = "none";
            if(response.result == "success"){
              alert("Bạn đã đăng ký thành công. Cảm ơn quý khách đã tin tưởng chúng tôi !");
              location.reload();
            }else{
              alert("Đăng ký không thành công ! Vui lòng thử lại sau ít phút");
              location.reload();
            }
          }
      });
      }
    } 
  }
  if(inpNameFormBottom){
    inpNameFormBottom.onclick = ()=>{
      validName.style.display = "none";
    }
  }
  if(inpEmailFormBottom){
    inpEmailFormBottom.onclick = ()=>{
      validEmail.style.display = "none";
    }
  }
  if(inpPhoneFormBottom){
    inpPhoneFormBottom.onclick = ()=>{
      validPhone.style.display = "none";
    }
  }
}
function handleFormRight(){
  let btnSubFormRight = document.querySelector(".btn-handle-sub-form-right");
  let inpNameFormRight = document.querySelector("#inpNameFormRight");
  let inpEmailFormRight = document.querySelector("#inpEmailFormRight");
  let inpPhoneFormRight = document.querySelector("#inpPhoneFormRight");
  let inpDateFormRight = document.querySelector("#DateRight");
  let inpLinkFormRight = document.querySelector("#LinkResRight");
  let inpCompanyFormRight = document.querySelector("#inpCompanyFormRight");
  let inpContentFormRight = document.querySelector("#inpContentFormRight");
  let validNameRight = document.querySelector(".r-valid-name");
  let validEmailRight = document.querySelector(".r-valid-email");
  let validPhoneRight = document.querySelector(".r-valid-phone");
  let mcLoadingRight = document.querySelector("#mcLoadingRight");
  let url = 'https://script.google.com/macros/s/AKfycbwS5AIwK3Q9lkrpU7HW-uMD3WgG_yj_CFWFQyHpQWNiLT1Fab3x6aabKBIjwR6_9JE4/exec'
  let data = {
    "name": "",
    "email": "",
    "phone": "",
    "date": "",
    "link": "",
    "company": "",
    "content": ""
  }
  if(btnSubFormRight){
    btnSubFormRight.onclick = function(){
      let valName = inpNameFormRight.value;
      let valEmail = inpEmailFormRight.value;
      let valPhone = inpPhoneFormRight.value;
      let valDate = inpDateFormRight.value;
      let valLink = inpLinkFormRight.value;
      let valCompany = inpCompanyFormRight.value;
      let valContent = inpContentFormRight.value;
      if(valName == '' || valEmail == '' || valPhone == ''){
        if(valName == ''){
          validNameRight.style.display = "block";
        }
        if(valEmail == ''){
          validEmailRight.style.display = "block";
        }
        if(valPhone == ''){
          validPhoneRight.style.display = "block";
        }
      }else{
        data.name = valName;
        data.email = valEmail;
        data.phone = valPhone;
        data.date = valDate;
        data.link = valLink;
        data.company = valCompany;
        data.content = valContent;
        mcLoadingRight.style.display = "block";
        jQuery.ajax({
          url: url,
          method: "GET",
          dataType: "json",
          data: data,
          success : function(response){
            mcLoadingRight.style.display = "none";
            if(response.result == "success"){
              alert("Bạn đã đăng ký thành công. Cảm ơn quý khách đã tin tưởng chúng tôi !");
              location.reload();
            }else{
              alert("Đăng ký không thành công ! Vui lòng thử lại sau ít phút");
              location.reload();
            }
          }
      });
      }
    } 
  }
  if(inpNameFormRight){
    inpNameFormRight.onclick = ()=>{
      validNameRight.style.display = "none";
    }
  }
  if(inpEmailFormRight){
    inpEmailFormRight.onclick = ()=>{
      validEmailRight.style.display = "none";
    }
  }
  if(inpPhoneFormRight){
    inpPhoneFormRight.onclick = ()=>{
      validPhoneRight.style.display = "none";
    }
  }
}

function handleFormService(){
  let btnSubFormService = document.querySelector(".btn-handle-sub-form-service");
  let inpNameFormService = document.querySelector("#inpNameFormService");
  let inpEmailFormService = document.querySelector("#inpEmailFormService");
  let inpPhoneFormService = document.querySelector("#inpPhoneFormService");
  let inpDateFormService = document.querySelector("#DateService");
  let inpLinkFormService = document.querySelector("#linkService");
  let validNameService = document.querySelector(".s-valid-name");
  let validEmailService = document.querySelector(".s-valid-email");
  let validPhoneService = document.querySelector(".s-valid-phone");
  let mcLoadingSerivce = document.querySelector("#mcLoadingSerivce");
  let url = 'https://script.google.com/macros/s/AKfycbwS5AIwK3Q9lkrpU7HW-uMD3WgG_yj_CFWFQyHpQWNiLT1Fab3x6aabKBIjwR6_9JE4/exec'
  let data = {
    "name": "",
    "email": "",
    "phone": "",
    "date": "",
    "link": ""
  }
  if(btnSubFormService){
    btnSubFormService.onclick = function(){
      let valName = inpNameFormService.value;
      let valEmail = inpEmailFormService.value;
      let valPhone = inpPhoneFormService.value;
      let valDate = inpDateFormService.value;
      let valLink = inpLinkFormService.value;
      if(valName == '' || valEmail == '' || valPhone == ''){
        if(valName == ''){
          validNameService.style.display = "block";
        }
        if(valEmail == ''){
          validEmailService.style.display = "block";
        }
        if(valPhone == ''){
          validPhoneService.style.display = "block";
        }
      }else{
        data.name = valName;
        data.email = valEmail;
        data.phone = valPhone;
        data.date = valDate;
        data.link = valLink;
        mcLoadingSerivce.style.display = "block";
        jQuery.ajax({
          url: url,
          method: "GET",
          dataType: "json",
          data: data,
          success : function(response){
            mcLoadingSerivce.style.display = "none";
            if(response.result == "success"){
              alert("Bạn đã đăng ký thành công. Cảm ơn quý khách đã tin tưởng chúng tôi !");
              location.reload();
            }else{
              alert("Đăng ký không thành công ! Vui lòng thử lại sau ít phút");
              location.reload();
            }
          }
      });
      }
    } 
  }
  if(inpNameFormService){
    inpNameFormService.onclick = ()=>{
      validNameService.style.display = "none";
    }
  }
  if(inpEmailFormService){
    inpEmailFormService.onclick = ()=>{
      validEmailService.style.display = "none";
    }
  }
  if(inpPhoneFormService){
    inpPhoneFormService.onclick = ()=>{
      validPhoneService.style.display = "none";
    }
  }
}

function handleButtonWebPage(){
  let btnOpenPop = document.querySelectorAll(".btn-register-web-page");
  let popRightWeb = document.querySelector(".popup_form_right");
  let overlayPopRightWeb = document.querySelector(".overlay_pop_form_right");
  let btnClosPopRightWeb = document.querySelector("#btnClosPopRight");
  if(btnOpenPop){
    btnOpenPop.forEach(element => {
      element.onclick = ()=>{
        popRightWeb.style.display = "block";
        overlayPopRightWeb.style.display = "block";
      }
    });
  }
  if(btnClosPopRightWeb){
      btnClosPopRightWeb.onclick = ()=>{
          popRightWeb.style.display = "none";
          overlayPopRightWeb.style.display = "none";
      }
  }
  if(overlayPopRightWeb){
    overlayPopRightWeb.onclick = ()=>{
          popRightWeb.style.display = "none";
          overlayPopRightWeb.style.display = "none";
      }
  }
}