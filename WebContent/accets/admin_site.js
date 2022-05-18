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

