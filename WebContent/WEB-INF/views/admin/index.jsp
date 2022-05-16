<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <link rel="stylesheet" href="http://localhost:8080/PTITHCM/accets/main.css">
    <link rel="stylesheet" href="http://localhost:8080/PTITHCM/accets/admin_site.css">
    <!-- Font awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <link rel="stylesheet" href="http://localhost:8080/PTITHCM/fonts/themify-icons/themify-icons.css">
  
</head>
<body>
    <div class="main">
        <div class="user_info">
           
                <div class="user_info--user user_info--user2">
                    
                        <img src="http://localhost:8080/PTITHCM/img/user/user-ava.png" alt="">
                    
                    <span class="user_name">ADMIN</span>
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
                            <span>Admin</span>
                        </li>
                    
                        <a href="" class="Tour_link">
                            <li>
                                <div class="img">
                                    <i class=""></i>
                                    </div>
                                <span>Tour List</span>
                            </li>
                        </a>
                        <a href="" class="Booked_link">
                            <li>
                                <div class="img">
                                    <i class=""></i>
                                    </div>
                                <span>Booked</span>
                            </li>
                        </a>
                        <a href="" class="Tickets_link">
                            <li>
                                <div class="img">
                                    <i class=""></i>
                                    </div>
                                <span>Ticket List</span>
                            </li>
                        </a>
                    </ul>
            </div>
                <div class="container">
                    <div class="best_offer data">
                        <button class="btn_add_tour">ADD</button>
                        <table>
                            <tr>
                                <th>STT</th>
                                <th>FROM</th>
                                <th>TO</th>
                                <th>CLASSiC</th>
                                <th>TIME</th>
                                <th>DATE</th>
                                <th>PRICE</th>
                                <th colspan="2">EDIT</th>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>TP HCM - SGN</td>
                                <td>DA NANG - DNA</td>
                                <td>VNA</td>
                                <td>14:15</td>
                                <td>25/09/2022</td>
                                <td>300</td>
                                <td><a href="#" className="delete_tour">Delete</a></td>
                                <td><a href="#" className="edit_tour">Edit</a></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>TP HCM - SGN</td>
                                <td>VINH - VII</td>
                                <td>Vietjet</td>
                                <td>16:15</td>
                                <td>10/05/2022</td>
                                <td>600</td>
                                <td><a href="#" className="delete_tour">Delete</a></td>
                                <td><a href="#" className="edit_tour">Edit</a></td>
                            </tr>
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

                <div class="modal__form">
                    <div class="modal__form__group">
                        <p>FROM</p>
                        <input type="text" class="modal__form__input" placeholder="TP HCM - SGN">
                    </div>
                    <div class="modal__form__group">
                        <p>TO</p>
                        <input type="text" class="modal__form__input" placeholder="DA NANG - DND">
                    </div>
                    <div class="modal__form__group">
                        <p>CALSSIC</p>
                        <input type="text" class="modal__form__input" placeholder="VNA">
                    </div>
                    <div class="modal__form__group">
                        <p>TIME</p>
                        <input type="time" class="modal__form__input">
                    </div>
                    <div class="modal__form__group">
                        <p>DATE</p>
                        <input type="date" class="modal__form__input">
                    </div>
                    <div class="modal__form__group">
                        <p>PRICE</p>
                        <input type="moneyx" class="modal__form__input">
                    </div>
                </div>

                <div class="modal__form__controls">
                    <button class="btn-login">ADD</button>
                </div>

            
            </div>
        </div>
    </div>

<script src="http://localhost:8080/PTITHCM/accets/admin_site.js"></script>
</body>
</html>