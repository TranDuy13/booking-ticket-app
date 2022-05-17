<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix = "c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html lang="en">
<head>
 	<base href="${pageContext.servletContext.contextPath}/"> 
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <link rel="stylesheet" href="http://localhost:8080/PTITHCM/accets/main.css">
    <link rel="stylesheet" href="http://localhost:8080/PTITHCM/accets/admin_site.css">
    <!-- Font awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <link rel="stylesheet" href="http://localhost:8080/PTITHCM/fonts/themify-icons/themify-icons.css">
  	<link id="ctl00_favicon" rel="shortcut icon" type="image/x-icon" href="https://cdn-icons-png.flaticon.com/512/2206/2206368.png">
</head>
<body>
    <div class="main">
        <div class="user_info">
           
                <div class="user_info--user user_info--user2">
                    
                        <img src="http://localhost:8080/PTITHCM/img/user/user-ava.png" alt="">
                    <c:forEach var = "s" items = "${staffs}">
                    	<span class="user_name">${s.name}</span>
                    </c:forEach>
                    <div class="arrow arrow2">
                        <img src="http://localhost:8080/PTITHCM/img/user/Icon-Arrow-Down.svg" alt="">
                    </div>
                <div class="user--subnav">
                    <ul>
                        <a href="logout.htm">
                            <li> 
                                LOG OUT
                            </li>
                        </a>
                    </ul>
                </div>
            </div>
        </div>

        <div class="grid">
            <div class="nav_bav">
                <ul class="nav_bar--list">
                        <li>
                            <div class="img">
                                <i class="fas fa-user"></i>
                                </div>
                                <a href="http://localhost:8080/PTITHCM/">
                                	<span>Admin</span>
                                </a>
                        </li>
                    
                        <a href="#" class="Tour_link">
                            <li>
                                <div class="img" style="width: 20px">
                                     <img src="http://localhost:8080/PTITHCM/img/icon/icon-card/Icon-Transport-Plane.png" alt="">
                                    </div>
                                <span>Tour List</span>
                            </li>
                        </a>
                    
                        <a href="#" class="Tickets_link">
                            <li>
                                <div class="img" style="width: 20px">
                                    <img src="http://localhost:8080/PTITHCM/img/icon/icon-card/Icon-Stay-Villa.png" alt="">
                                </div>
                                <span>Ticket List</span>
                            </li>
                        </a>
                    </ul>
            </div>
            	<h2>${message}</h2>
                <div class="container">
                    <div class="best_offer data">
                        <button class="btn_add_tour">ADD</button>
                        <table>
                            <tr>
                                <th>ID PLANE</th>
                                <th>FROM</th>
                                <th>TO</th>
                                <th>AIRPORT</th>
                                <th>AIRLINE</th>
                                <th>DATE</th>
                                <th colspan="2">EDIT</th>
                            </tr>
                          <c:forEach var = "a" items = "${plane}">
                            <tr>
                                <td>${a.idplane}</td>
                                <td>${a.departFrom}</td>
                                <td>${a.destination}</td>
                                <td>${a.airport}</td>
                                <td>${a.airline }</td>
                                <td>${a.flighttime}</td>
                                <td><a href="#" className="delete_tour">Delete</a></td>
                                <td><a href="#" className="edit_tour">Edit</a></td>
                            </tr>
                          </c:forEach>
                    </div>
                </div>
        </div>
    </div>
    <!-- ================ MODAL ================ -->
    <div class="modal">
        <div class="modal__overlay">
            <i class="ti-close close__login"></i>
        </div>

	        <div class="modal__body">
	            <div class="modal__inner">
	                <!-- <div class="modal__header">
	                    <h3>LOGIN</h3>
	                    <span>Register</span>
	                </div> -->
		
	               <form  action="admin/plane.htm" modelAttribute="plane" method="post">
	                <div class="modal__form">
	                    <div class="modal__form__group">
	                        <p>FROM</p>
	                        <input type="text" class="modal__form__input" path="departFrom" placeholder="TP HCM - SGN">
	                    </div>
	                    <div class="modal__form__group">
	                        <p>TO</p>
	                        <input type="text" class="modal__form__input" path="destination" placeholder="DA NANG - DND">
	                    </div>
	                    <div class="modal__form__group">
	                        <p>CALSSIC</p>
	                        <input path="airport" type="text" class="modal__form__input" placeholder="VNA">
	                    </div>
	                    <div class="modal__form__group">
	                        <p>san bay</p>
	                        <input path="airline" type="text" class="modal__form__input">
	                    </div>
	                    	                    <div class="modal__form__group">
	                        <p>ma san bay</p>
	                        <input path="idplane" type="text" class="modal__form__input">
	                    </div>
	                    <div class="modal__form__group">
	                        <p>DATE</p>
	                        <input path="flighttime" type="text" class="modal__form__input">
	                    </div>
	                </div>
	                        <div class="modal__form__controls">
	                    <button type="submit" class="btn-login">ADD</button>
	                </div>
	                </form>
	
	        
	
	            
	            </div>

	        </div>
	    	</div>

<script src="http://localhost:8080/PTITHCM/accets/admin_site.js"></script>
</body>
</html>