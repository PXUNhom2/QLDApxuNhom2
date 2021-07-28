
  <div class="container">

    <form>
      <div class="row">
        <div class="col-md-12 text-center">
          <h1>Tìm kiếm Sản phẩm vn</h1>
        </div>
        <div class="col col-md-12">
          <div class="text-center">
            <button type="button" id="btnReset" class="btn btn-warning">Xóa bộ lọc</button>
            <button class="btn btn-primary btn-lg" id="btnTimKiem">Tìm kiếm <i class="fa fa-forward" aria-hidden="true"></i></button>
          </div>
        </div>
      </div>
      <hr />
      <div class="row">
        <!-- START: Form nhập liệu Tiêu chí Tìm kiếm -->
        <div class="col-md-4">
          <div class="form-tim-kiem-san-pham">
            <h5 class="text-center">Các tiêu chí Tìm kiếm Sản phẩm</h5>

            <div class="card">
              <!-- Tìm kiếm theo tên sản phẩm -->
              <article class="card-group-item">
                <header class="card-header">
                  <h6 class="title">Tên sản phẩm</h6>
                </header>
                <div class="filter-content">
                  <div class="card-body">
                    <!-- 
                      Thuộc tính name="" cần có trong các thành phần Nhập liệu (input, select, ...)
                      FORM sẽ đóng gói dữ liệu người dùng (End User) nhập liệu vào đúng tên được đặt trong thuộc tính name=""
                      Ví dụ: đặt tên là name="keyword_tensanpham"
                    -->
                    <input class="form-control" type="text" placeholder="Tìm kiếm" aria-label="Search" value="">
                  </div> <!-- card-body.// -->
                </div>
              </article> <!-- // Tìm kiếm theo Tên sản phẩm -->

              <!-- Tìm kiếm theo Loại sản phẩm -->
              <article class="card-group-item">
                <header class="card-header">
                  <h6 class="title">Loại sản phẩm </h6>
                </header>
                <div class="filter-content">
                  <div class="card-body">
                    <div class="custom-control custom-checkbox">
                      <span class="float-right badge badge-light round">3 sp</span>
                      <!-- 
                        Thuộc tính name="" cần có trong các thành phần Nhập liệu (input, select, ...)
                        - FORM sẽ đóng gói dữ liệu người dùng (End User) nhập liệu vào đúng tên được đặt trong thuộc tính name=""
                        - Nếu muốn truyền dữ liệu dạng mảng (array) thì sử dụng cú pháp name="ten_tham_so[]"
                        Ví dụ: đặt tên là name="keyword_loaisanpham[]"
                      -->
                      <input type="checkbox" class="custom-control-input" id="chk-loaisanpham-1">
                      <label class="custom-control-label" for="chk-loaisanpham-1">Máy tính bảng</label>
                    </div> <!-- form-check.// -->
                    <div class="custom-control custom-checkbox">
                      <span class="float-right badge badge-light round">1 sp</span>
                      <input type="checkbox" class="custom-control-input" id="chk-loaisanpham-2">
                      <label class="custom-control-label" for="chk-loaisanpham-2">Máy tính xách tay</label>
                    </div> <!-- form-check.// -->
                    <div class="custom-control custom-checkbox">
                      <span class="float-right badge badge-light round">4 sp</span>
                      <input type="checkbox" class="custom-control-input" id="chk-loaisanpham-3">
                      <label class="custom-control-label" for="chk-loaisanpham-3">Điện thoại</label>
                    </div> <!-- form-check.// -->
                    <div class="custom-control custom-checkbox">
                      <span class="float-right badge badge-light round">1 sp</span>
                      <input type="checkbox" class="custom-control-input" id="chk-loaisanpham-4">
                      <label class="custom-control-label" for="chk-loaisanpham-4">Linh phụ kiện</label>
                    </div> <!-- form-check.// -->
                  </div> <!-- card-body.// -->
                </div>
              </article> <!-- // Tìm kiếm theo Loại sản phẩm -->



              <!-- Tìm kiếm theo Khuyến mãi -->
              <article class="card-group-item">
                <header class="card-header">
                  <h6 class="title">Khuyến mãi </h6>
                </header>
                <div class="filter-content">
                  <div class="card-body">
                    <div class="custom-control custom-radio">
                      <!-- 
                        Thuộc tính name="" cần có trong các thành phần Nhập liệu (input, select, ...)
                        - FORM sẽ đóng gói dữ liệu người dùng (End User) nhập liệu vào đúng tên được đặt trong thuộc tính name=""
                        - Nếu muốn truyền dữ liệu dạng mảng (array) thì sử dụng cú pháp name="ten_tham_so[]"
                        Ví dụ: đặt tên là name="keyword_khuyenmai"
                      -->
                      <input type="radio" class="custom-control-input" id="rd-khuyenmai-1">
                      <label class="custom-control-label" for="rd-khuyenmai-1">Khuyến mãi Trung Thu (giảm giá 15%)</label>
                    </div> <!-- form-radio.// -->
                    <div class="custom-control custom-radio">
                      <input type="radio" class="custom-control-input" id="rd-khuyenmai-2">
                      <label class="custom-control-label" for="rd-khuyenmai-2">Khuyến mãi Dịp Sinh nhật (được tặng 2 món quà trị giá 500k)</label>
                    </div> <!-- form-radio.// -->
                  </div> <!-- card-body.// -->
                </div>
              </article> <!-- // Tìm kiếm theo Nhà sản xuất -->

              <!-- Tìm kiếm theo khoảng giá tiền -->
              <article class="card-group-item">
                <header class="card-header">
                  <h6 class="title">Khoảng tiền </h6>
                </header>
                <div class="filter-content">
                  <div class="card-body">
                    <div class="form-row">
                      <div class="form-group col-md-6">
                        <label>Từ</label>
                        <!-- 
                          Thuộc tính name="" cần có trong các thành phần Nhập liệu (input, select, ...)
                          - FORM sẽ đóng gói dữ liệu người dùng (End User) nhập liệu vào đúng tên được đặt trong thuộc tính name=""
                          - Nếu muốn truyền dữ liệu dạng mảng (array) thì sử dụng cú pháp name="ten_tham_so[]"
                          Ví dụ: đặt tên là name="keyword_khuyenmai"
                        -->
                        <input type="range" class="custom-range" min="0" max="50000000" step="100000" id="sotientu" value="0" oninput="document.getElementById('sotientu-text').innerHTML = this.value;">
                        <span><span id="sotientu-text">0</span></span>
                      </div>
                      <div class="form-group col-md-6 text-right">
                        <label>Đến</label>
                        <input type="range" class="custom-range" min="0" max="50000000" step="100000" id="sotienden" value="50000000" oninput="document.getElementById('sotienden-text').innerHTML = this.value;">
                        <span><span id="sotienden-text">50.000.000</span></span>
                      </div>
                    </div>
                  </div> <!-- card-body.// -->
                </div>
              </article> <!-- // Tìm kiếm theo khoảng giá tiền -->

            </div>
          </div>
        </div>
        <!-- END: Form nhập liệu Tiêu chí Tìm kiếm -->

        <!-- START: Kết quả tìm kiếm theo Tiêu chí Tìm kiếm -->
        <div class="col-md-8">
          <div class="ket-qua-tim-kiem-san-pham">
            <h5 class="text-center">Kết quả Tìm kiếm Sản phẩm</h5>

            <!-- START: CODE XỬ LÝ PHP -->
            <?php
              
            ?>
            <!-- END: CODE XỬ LÝ PHP -->

          </div>
        </div>
        <!-- END: Kết quả tìm kiếm theo Tiêu chí Tìm kiếm -->
      </div>
  
    </form>
  </div>

