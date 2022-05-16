var login = document.querySelector(".user_info--user2");
    openLogin = document.querySelector(".modal");
    closeLogin = document.querySelector(".modal__overlay");
    Booking = document.querySelectorAll(".best_offer-btn"); 
    
login.onclick = function(){
        openLogin.style.display = "block";
    };
closeLogin.onclick = function() {
    openLogin.style.display = "none";

}

for (let i = 0; i < Booking.length; i++) {
    Booking[i].onclick = function(){
        location.replace("http://127.0.0.1:5500/preBooking.html");
    }
  }