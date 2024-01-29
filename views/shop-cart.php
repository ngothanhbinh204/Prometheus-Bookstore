<!-- Shop Cart Section Begin -->
<section class="shop-cart spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="shop__cart__table">
                    <table id="cart_details">
                        <!-- Fetch cart -->




                       
                    </table>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="cart__btn">
                    <a href="index.php?pgs=books">Tiếp tục mua hàng</a>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="cart__btn update__btn">
                    <a id="clear_cart" href="#"><span class="icon_loading"></span> Xóa giỏ hàng</a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="discount__content">
                    <h6>Mã giảm giá</h6>
                    <form action="#">
                        <input type="text" placeholder="Nhập mã phiếu giảm giá của bạn">
                        <button type="submit" class="site-btn">Áp Dụng</button>
                    </form>
                </div>
            </div>
            <div class="col-lg-4 offset-lg-2">
                <div class="cart__total__procced">
                    <h6>Tổng giỏ hàng</h6>
                    <ul>
                        <li>Tổng Phí <span class="totalPrice"></span></li>
                        <li>Tổng <span class="totalPrice"></span></li>
                    </ul>
                    <a href="index.php?pgs=checkout" class="primary-btn">Tiến hành thanh toán</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Shop Cart Section End -->