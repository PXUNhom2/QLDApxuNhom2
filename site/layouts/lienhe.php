
<?php include 'function.php'; ?>
<?php 
            use PHPMailer\PHPMailer\PHPMailer;
            use PHPMailer\PHPMailer\SMTP;
            use PHPMailer\PHPMailer\Exception;
            require '../libs/PHPMailer/src/Exception.php';
            require '../libs/PHPMailer/src/PHPMailer.php';
            require '../libs/PHPMailer/src/SMTP.php';

                if (isset($_POST['btnGoiLoiNhan'])) {
            // Lấy dữ liệu người dùng hiệu chỉnh gởi từ REQUEST POST
            $name = $_POST['name'];
            $phone = $_POST['phone'];
            $email = $_POST['email'];
            $title = $_POST['title'];
            $message = $_POST['message'];

            // Gởi mail kích hoạt tài khoản
            $mail = new PHPMailer(true);                                // Passing `true` enables exceptions
            try {
                //Server settings
                $mail->SMTPDebug = 0;                                   // Enable verbose debug output
                $mail->isSMTP();                                        // Set mailer to use SMTP
                $mail->Host = 'smtp.gmail.com';                         // Specify main and backup SMTP servers
                $mail->SMTPAuth = true;                                 // Enable SMTP authentication
                $mail->Username = 'vuanhle1509@gmail.com';              // SMTP username
                $mail->Password = 'xsgpvdsirhuydnvd';                           // SMTP password
                $mail->SMTPSecure = 'tls';                              // Enable TLS encryption, `ssl` also accepted
                $mail->Port = 587;                                      // TCP port to connect to
                $mail->CharSet = "UTF-8";

                // Bật chế bộ tự mình mã hóa SSL
                $mail->SMTPOptions = array(
                    'ssl' => array(
                        'verify_peer' => false,
                        'verify_peer_name' => false,
                        'allow_self_signed' => true
                    )
                );

                //Recipients
                $mail->setFrom('vuanhle1509@gmail.com', 'Mail Liên hệ');
                $mail->addAddress('thanh1234pro@gmail.com');               // Add a recipient
                $mail->addReplyTo($email);
                // $mail->addCC('cc@example.com');
                // $mail->addBCC('bcc@example.com');

                //Attachments
                // $mail->addAttachment('/var/tmp/file.tar.gz');        // Add attachments
                // $mail->addAttachment('/tmp/image.jpg', 'new.jpg');   // Optional name

                //Content
                $mail->isHTML(true);                                    // Set email format to HTML

                // Tiêu đề Mail
                $mail->Subject = "[Có người liên hệ] - $title";         

                // Nội dung Mail
                // Lưu ý khi thiết kế Mẫu gởi mail
                // - Chỉ nên sử dụng TABLE, TR, TD, và các định dạng cơ bản của CSS để thiết kế
                // - Các đường link/hình ảnh có sử dụng trong mẫu thiết kế MAIL phải là đường dẫn WEB có thật, ví dụ như logo,banner,...
                $body = <<<EOT
    Có người liên hệ cần giúp đỡ. <br />
    Danh tính của khách: $name <br />
    Email của khách: $email <br />
    SĐT của khách: $phone <br />
    Nội dung: <br />
    $message
EOT;
                $mail->Body    = $body;

                $mail->send();
            } catch (Exception $e) {
                echo 'Lỗi khi gởi mail: ', $mail->ErrorInfo;
            }
        }    

 ?>

    <?php if (isset($_POST['btnGoiLoiNhan'])) {
        
         date_default_timezone_set('Asia/Ho_Chi_Minh');
         $data = $_POST;
         $createdate = date('Y-m-d H:i:s');

         
         $Fullname = $_POST["name"];
         $Phone = $_POST["phone"];
         $Email = $_POST["email"];
         $Title = $_POST["title"];
         $Message = $_POST["message"];
         $Status = 1;
         $DateCreate = $createdate;
         

        $sqlInsert = "INSERT INTO `contact`( `Fullname`, `Phone`, `Email`, `Title`, `Message`, `Status`, `DateCreate`) VALUES 
        ('$Fullname','$Phone','$Email','$Title','$Message','$Status','$DateCreate')";

        mysqli_query($conn, $sqlInsert) or die("Lỗi thêm mới".$sqlInsert);
         
        header("location: index.php?view=xacnhan");

   } ?>
<div class="row">

   <div class="col-md-3">
      <script src="../public/app/services/moduleServices.js"></script>
      <script src="../public/app/controllers/moduleController.js"></script>
      <div class="box-support-online ng-scope" ng-controller="moduleController" ng-init="initSupportOnlineController('Shop','SupportOnlines')">
         <h3><span>Hỗ trợ trực tuyến</span></h3>
         <div class="support-online-block">
            <div class="support-hotline">
               HOTLINE<br><span class="ng-binding">0772455xxx</span>
            </div>
            <!-- ngRepeat: item in SupportOnlines -->
         </div>
      </div>           
   </div>

   <div class="col-md-9">

      <div class="breadcrumb clearfix">
         <ul>
            <li itemtype="http://shema.org/Breadcrumb" itemscope="" class="home">
               <a title="Đến trang chủ" href="/" itemprop="url"><span itemprop="title">Trang chủ</span></a>
            </li>
            <li class="icon-li"><strong>Liên hệ</strong> </li>
         </ul>
      </div>

      <script type="text/javascript">
         $(".link-site-more").hover(function () { $(this).find(".s-c-n").show(); }, function () { $(this).find(".s-c-n").hide(); });
      </script>
      <script src="../public/app/services/contactServices.js"></script>
      <script src="../public/app/controllers/contactController.js"></script>
      <!--Begin-->
      <div class="contact-content clearfix ng-scope" ng-controller="contactController" ng-init="initController('Shop','Maps')">
         <div class="content clearfix">
            <div class="col-md-7" id="col-left contactFormWrapper">
               <h3>Liên hệ với chúng tôi</h3>
               <hr class="line-left">
               <p>
                  Nếu bạn có thắc mắc gì, có thể gửi yêu cầu cho chúng tôi, và chúng tôi sẽ liên lạc lại với bạn sớm nhất có thể.
               </p>
               <form ng-submit="sendContact()" class="ng-pristine ng-invalid ng-invalid-required ng-valid-email" method="post">
                  <div class="form-group">
                     <label for="name" class="sr-only">Tên</label>
                     <input required="" id="name" name="name" class="form-control input-lg ng-pristine ng-untouched ng-invalid ng-invalid-required" ng-model="Name" placeholder="Tên của bạn" autocapitalize="words" value="" type="text">
                  </div>
                  <div class="form-group">
                     <label for="phone" class="sr-only">Số điện thoại</label>
                     <input required="" id="phone" name="phone" class="form-control input-lg ng-pristine ng-untouched ng-invalid ng-invalid-required" ng-model="Phone" placeholder="Số điện thoại của bạn" autocapitalize="words" value="" type="text">
                  </div>
                  <div class="form-group">
                     <label for="email" class="sr-only">Email</label>
                     <input required="" id="email" name="email" placeholder="Email của bạn" ng-model="Email" class="form-control input-lg ng-pristine ng-untouched ng-valid-email ng-invalid ng-invalid-required" autocorrect="off" autocapitalize="off" value="" type="email">
                  </div>
                  <div class="form-group">
                     <label for="title" class="sr-only">Tiêu đề</label>
                     <input required="" name="title" id="title" class="form-control input-lg ng-pristine ng-untouched ng-invalid ng-invalid-required" ng-model="Title" placeholder="Tiêu đề" value="" type="text">
                  </div>
                  <div class="form-group">
                     <label for="message" class="sr-only">Nội dung</label>
                     <textarea required="" name="message" rows="6" ng-model="Content" class="form-control ng-pristine ng-untouched ng-invalid ng-invalid-required" placeholder="Viết bình luận" id="message"></textarea>
                  </div>
                  <input class="btn btn-primary btn-lg" name="btnGoiLoiNhan" value="Gửi liên hệ" type="submit">
               </form>
            </div>

            
           <div class="col-md-5" id="col-right">
               <h3>Địa chỉ liên lạc</h3>
               <hr class="line-right">
               <h3 class="name-company ng-binding">CỬA HÀNG ĐỒNG HỒ SHOP TVH</h3>
               <p class="ng-binding"></p>
               <ul class="info-address">
                  <li class="m-b-5">
                     <i class="glyphicon glyphicon-map-marker m-r-5"></i>
                     <span class="ng-binding">176 Trần Phú, Thành phố HUẾ</span>
                  </li>
                  <li class="m-b-5">
                     <i class="glyphicon glyphicon-envelope m-r-5"></i>
                     <span class="ng-binding">shoptvh@bussines.vn</span>
                  </li>
                  <li class="m-b-5">
                     <i class="glyphicon glyphicon-phone-alt m-r-5"></i>
                     <span class="ng-binding">(084) 3897 777</span>
                  </li>
               </ul>
            </div>
         </div>
      </div> 
   </div>
</div>