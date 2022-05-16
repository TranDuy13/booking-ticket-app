var btn_Book = document.querySelector(".btn__Book"),
    btn__cancel = document.querySelector(".btn--cancel");

btn_Book.onclick = function() {
    alert("Đặt vé thành công!!!");
};
btn__cancel.onclick = function() {
    alert("Bạn chắc chưa???");
    location.replace("http://127.0.0.1:5500/index.html");
}