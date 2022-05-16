var SuvMenu = document.querySelector(".user_info--user");
    openSuvMenu = document.querySelector(".user--subnav");
    
   
    SuvMenu.onclick = function(){
        if(openSuvMenu.style.display == "block"){
            openSuvMenu.style.display = "none";
        }
        else{
            openSuvMenu.style.display = "block";
        }
    };

var Add = document.querySelector(".btn_add_tour");
    openAdd = document.querySelector(".modal");
    closeAdd = document.querySelector(".modal__overlay")
    
Add.onclick = function(){
        openAdd.style.display = "block";
    };
closeAdd.onclick = function() {
        openAdd.style.display = "none";
    }
