// ignore_for_file: public_member_api_docs, sort_constructors_first


class hocSinh {
  late String name;
  late String classHS;
  late String _birthDay;
  late double diemToan;
  late double diemVan;
  late double diemAnh;

  // Constructor : Hàm khởi tạo
  hocSinh(
    this.name,
    this.classHS,
    this.diemToan,
    this.diemVan,
    this.diemAnh
  );
  
  String get birthDay => _birthDay;
  void set birthDay(String birthDay) => this._birthDay = birthDay;

  void printInfo() {
    String birthDay = this._birthDay == null ? "Chưa thêm ngày sinh nè!" : this._birthDay;
    print("Họ tên: ${this.name}" + "\n" +
          " Lớp: ${this.classHS}" +"\n" +
          " Ngày sinh: ${this.birthDay}" +"\n" +
          " Điểm Toán: ${this.diemToan}" +"\n" +
          " Điểm Văn : ${this.diemVan}" +"\n" +
          " Điểm Anh: ${this.diemAnh}" +"\n");
  }
  double avgDiem() => (this.diemToan + this.diemVan + this.diemAnh)/3;

  String xepLoaiHS() {
    var diemTB = this.avgDiem();
    if (diemTB < 5) return 'Yếu';
    else if (diemTB >=5 && diemTB < 6.5) return 'Trung Binh';
    else if (diemTB >=6.5 && diemTB < 8.5) return 'Khá';
    else return 'Giỏi';
  }
}
