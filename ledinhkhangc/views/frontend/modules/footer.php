  <!-- footer -->
    <footer>
        <div id="contact" class="footer">
            <div class="container">
                <div class="row pdn-top-30">
                    <div class="col-md-12 ">
                        <div class="footer-box">
                            <div class="headinga">
                                <h3>Địa chỉ</h3>
                                <span>20 Tăng Nhơn Phú, Phước Long B, Q9</span>
                                <p>(+71) 8522369417
                                    <br>demo@gmail.com</p>
                            </div>
                            <ul class="location_icon">
                                <li> <a href="#"><i class="fa fa-facebook-f"></i></a></li>
                                <li> <a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li> <a href="#"><i class="fa fa-instagram"></i></a></li>

                            </ul>
                            <div class="menu-bottom">
                                <ul class="link">
                                    <li> <a href="#">Home</a></li>
                                    <li> <a href="#">About</a></li>
                                    
                                    <li> <a href="#">Brand </a></li>
                                    <li> <a href="#">Specials  </a></li>
                                    <li> <a href="#"> Contact us</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="copyright">
                <div class="container">
                    <p>© 2021 All Rights Reserved. 
                </div>
            </div>
        </div>
    </footer>
    <!-- end footer -->

    <!-- Javascript files-->
    <script src="<?=URL; ?>public/js/jquery.min.js"></script>
    <script src="<?=URL; ?>public/js/popper.min.js"></script>
    <script src="<?=URL; ?>public/js/bootstrap.bundle.min.js"></script>
    <script src="<?=URL; ?>public/js/jquery-3.0.0.min.js"></script>
    <script src="<?=URL; ?>public/js/plugin.js"></script>
    <!-- sidebar -->
    <script src="<?=URL; ?>public/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="<?=URL; ?>public/js/custom.js"></script>
    <!-- javascript -->
    <script src="<?=URL; ?>public/js/owl.carousel.js"></script>
    <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
    <script>
        $(document).ready(function() {
            $(".fancybox").fancybox({
                openEffect: "none",
                closeEffect: "none"
            });

            $(".zoom").hover(function() {

                $(this).addClass('transition');
            }, function() {

                $(this).removeClass('transition');
            });
        });
    </script>
</body>

</html>