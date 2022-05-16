<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PreBooking</title>
    <link rel="stylesheet" href="./accets/FormBooking.css">
    <link href="./accets/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="./accets/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">
    <link id="ctl00_favicon" rel="shortcut icon" type="image/x-icon" href="https://d1785e74lyxkqq.cloudfront.net/_next/static/v2/1/14570d0f2b738b8dc8ef903949bce73c.svg">
    <link rel="stylesheet" href="./accets/main.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="./fonts/themify-icons/themify-icons.css">
<link rel="stylesheet" href="./accets/login.css">
<!-- Font awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
<link rel="stylesheet" href="./accets/preBookig.css">
</head>
<body>
    <div class="main">
        <div class="user_info">
           
            <div class="btn--cancel user_info--user user_info--user2">
                
                    <i class="ti-shift-left-alt"></i>
                   
                <span class="user_name ">HỦY</span>
                
            </div>
        </div>
        
        <div class="grid">
            <div class="over_wrap">
                <div class="best_offer ">
                        
                            <!-- ====================ITEMS================== -->
                            <div class="best_offer--item">
                                <div class="best_offer--item-img">
                                    <img src="./img/Logo_HangHangKhong/bamboo.webp" alt="">
                                </div>
                                <h4 class="best_offer--item-name">
                                    TP HCM - SGN
                                </h4>
                                <p class="best_offer--GioKhoihanh">
                                    14:05
                                </p>
                                <div class="decorator">
                                    <div class="decorator_round" style="background-color: black;">

                                    </div>
                                    <div class="decorator_line">
                                        <div class="decorator__Hanghangkhong">
                                            <span style="color: #73b860">
                                                Bamboo
                                            </span>
                                        </div>
                                    </div>
                                    <div class="decorator_round">

                                    </div>
                                </div>
                                <h4 class="best_offer--item-name">
                                    DA NANG - DND
                                </h4>
                                <p class="best_offer-cost">$546</p>
                                <p class="best_offer--date">15 Aug - 22 Aug</p>
                            </div>
                            <!-- ============================================== -->
                        
                            
                </div> 
                    
                <div class="booking__container">
                    <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
                        <div class="wrapper wrapper--w790">
                            <div>
                                <div class="card-body">
                                    <form method="POST">
                                        <div class="form-row m-b-55">
                                            <div class="name">Họ và Tên</div>
                                            <div class="value">
                                                <div class="row row-space">
                                                    <div class="col-2">
                                                        <div class="input-group-desc">
                                                            <input class="input--style-5" type="text" name="first_name">
                                                            <label class="label--desc">first name</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-2">
                                                        <div class="input-group-desc">
                                                            <input class="input--style-5" type="text" name="last_name">
                                                            <label class="label--desc">last name</label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="name">Email</div>
                                            <div class="value">
                                                <div class="input-group">
                                                    <input class="input--style-5" type="email" name="email">
                                                    <label class="label--desc">Email</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="name">Số Điện Thoại</div>
                                            <div class="value">
                                                <div class="input-group">
                                                    <input class="input--style-5" type="text" name="phone">
                                                    <label class="label--desc">Phone Number</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="name">CCCD/CMND</div>
                                            <div class="value">
                                                <div class="input-group">
                                                    <input class="input--style-5" type="text" name="CMND">
                                                    <label class="label--desc">CMND/CCCD</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="name">Ngày sinh</div>
                                            <div class="value">
                                                <div class="input-group">
                                                    <input class="input--style-5" type="date" name="birthday">
                                                    
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-row p-t-20">
                                            <label class="label label--block">Bạn đồng ý với mức giá <span>546$</span>?</label>
                                            <div class="p-t-15">
                                                <label class="radio-container m-r-55">Thanh toán ngay bằng MoMo
                                                    <input type="radio" checked="checked" name="exist">
                                                    <span class="checkmark"></span>
                                                </label>
                                                <label>
                                                    <img src="./img/momo.jpg" alt="Mã QR">
                                                </label>
                                            </div>
                                        </div>
                                        <div>
                                            <a href="index.html"><button class="btn btn__Book" type="button">Tiếp tục</button></a>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                   
                </div>
            </div>
        </div>
    </div>

<!-- React js -->

    <script src="./accets/FormBooking.js"></script>
    
    <!-- ... other HTML ... -->

  <!-- Load React. -->
  <!-- Note: when deploying, replace "development.js" with "production.min.js". -->
  
  

</body>
</html>