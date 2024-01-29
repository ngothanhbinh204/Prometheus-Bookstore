<!-- Footer Section Begin -->
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-7">
                <div class="footer__about">
                    <div class="footer__logo">
                        <a href="./index.html"><img src="img/logo.png" alt=""></a>
                    </div>
                    <p>Prometheus nhận đặt hàng trực tuyến và giao hàng tận nơi. KHÔNG hỗ trợ đặt mua và nhận hàng trực tiếp tại văn phòng cũng như tất cả Hệ Thống Prometheus trên toàn quốc</p>
                    <div class="footer__payment">
                        <a href="#"><img src="img/payment/payment-1.png" alt=""></a>
                        <a href="#"><img src="img/payment/payment-2.png" alt=""></a>
                        <a href="#"><img src="img/payment/payment-3.png" alt=""></a>
                        <a href="#"><img src="img/payment/payment-4.png" alt=""></a>
                        <a href="#"><img src="img/payment/payment-5.png" alt=""></a>
                    </div>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-5">
                <div class="footer__widget">
                    <h6>LIÊN KẾT NHANH</h6>
                    <ul>
                        <li><a href="#">Về</a></li>
                        <li><a href="#">Tin tức</a></li>
                        <li><a href="#">Liện hệ </a></li>
                        <li><a href="#">FAQ</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-4">
                <div class="footer__widget">
                    <h6>Account</h6>
                    <ul>
                        <li><a href="#">TÀI KHOẢN</a></li>
                        <li><a href="#">Theo dõi đơn hàng</a></li>
                        <li><a href="#">Thanh toán</a></li>
                        <li><a href="#">Danh sách yêu thích</a></li>

                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-8 col-sm-8">
                <div class="footer__newslatter">
                    <h6>Tin Mới</h6>
                    <form action="#">
                        <input type="text" placeholder="Email">
                        <button type="submit" class="site-btn">Đăng Ký</button>
                    </form>
                    <div class="footer__social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-youtube-play"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                        <a href="#"><i class="fa fa-pinterest"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                <div class="footer__copyright__text">
                    <p>Copyright &copy;
                        <script>
                            document.write(new Date().getFullYear());
                        </script> Bản quyền 2023 Mọi quyền © được bảo lưu <i class="fa fa-heart" aria-hidden="true"></i><a href="https://colorlib.com" target="_blank"></a>

                    </p>
                </div>
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </div>
        </div>
    </div>
</footer>
<!-- Footer Section End -->

<!-- Search Begin -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch">+</div>

        <form method="POST" class="search-model-form">
            <input type="search" name="search-input" id="search-input" placeholder="Nhập sách cần tìm........">
        </form>
        <!-- <ul class="show_book_seach" id="output_search"></ul> -->
        <div class="grid_search" id="output_search">

        </div>

    </div>
    <!-- Search End -->

    </body>

    <!-- Js Plugins -->
    <script src="./publics/js/jquery-3.3.1.min.js"></script>
    <script src="./publics/js/bootstrap.min.js"></script>
    <script src="./publics/js/jquery.magnific-popup.min.js"></script>
    <script src="./publics/js/jquery-ui.min.js"></script>
    <script src="./publics/js/mixitup.min.js"></script>
    <script src="./publics/js/jquery.countdown.min.js"></script>
    <script src="./publics/js/jquery.slicknav.js"></script>
    <script src="./publics/js/owl.carousel.min.js"></script>
    <script src="./publics/js/jquery.nicescroll.min.js"></script>
    <script src="./publics/js/main.js"></script>


    <!-- Shop cart -->

    <script>
        $(document).ready(function() {

            $('#quantity' + product_id).attr("min", 0)
                .attr("max", 2)
                .val();

            load_cart_data();

            function load_cart_data() {
                $.ajax({
                    url: "models/func_shopCart.php",
                    method: "POST",
                    dataType: "json",
                    success: function(data) {
                        $('#cart_details').html(data.cart_details);
                        $('#checkout_details').html(data.checkout_details);
                        $('.totalPrice').text(data.total_price);
                        $('.bag_item').text(data.total_item);
                    }
                });
            }

            $(document).on('click', '.add_to_cart', function() {
                var product_id = $(this).attr("id");
                var product_name = $('#name' + product_id + '').val();
                var product_price = $('#price' + product_id + '').val();
                var product_quantity = $('#quantity' + product_id).attr("min", 0)
                    .attr("max", 2)
                    .val();
                var action = "add";
                if (product_quantity > 0) {
                    $.ajax({
                        url: "controllers/shopping_cart.php",
                        method: "POST",
                        data: {
                            product_id: product_id,
                            product_name: product_name,
                            product_price: product_price,
                            product_quantity: product_quantity,
                            action: action
                        },
                        success: function(data) {
                            load_cart_data();
                            alert("Sản Phẩm Đã Vào Giỏ Hàng !");
                        }
                    });
                } else {
                    alert("Vui Lòng Nhập Số Lượng !");
                }
            });

            $(document).on('click', '.delete', function() {
                var product_id = $(this).attr("id");
                var action = 'remove';
                if (confirm("Bạn có chắc muốn xóa sản phẩm?")) {
                    $.ajax({
                        url: "controllers/shopping_cart.php",
                        method: "POST",
                        data: {
                            product_id: product_id,
                            action: action
                        },
                        success: function() {
                            load_cart_data();
                            alert("Đã xóa sản phẩm khỏi giỏ hàng");
                        }
                    })
                } else {
                    return false;
                }
            });

            $(document).on('click', '#clear_cart', function() {
                var action = 'empty';
                $.ajax({
                    url: "controllers/shopping_cart.php",
                    method: "POST",
                    data: {
                        action: action
                    },
                    success: function() {
                        load_cart_data();
                        alert("Giỏ hàng của bạn đang trống");
                    }
                });
            });

        });
    </script>

    <script type="text/javascript">
        $(document).ready(function() {
            var action = "search";
            $("#search-input").keyup(function() {
                var search_input = $("#search-input").val();
                if (search_input != '') {
                    $.ajax({
                        url: "./models/func_search.php",
                        method: "POST",
                        data: {
                            action: action,
                            search_input: search_input
                        },
                        success: function(data) {
                            $("#output_search").html(data);
                        }
                    });
                    console.log(action);
                } else {
                    $("#output_search").html('');
                }
            });
        });
    </script>



    </html>