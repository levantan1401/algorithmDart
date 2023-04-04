#include <iostream>
#include <string>
using namespace std;

class HocSinh {
    private:
        string hoTen;
        float diemToan;
        float diemLy;
        float diemHoa;
        float diemTrungBinh;
        string xepLoaiHocLuc;
        
    public:
        void nhapThongTin() {
            cout << "Nhap ho ten: ";
            getline(cin, hoTen);
            cout << "Nhap diem toan: ";
            cin >> diemToan;
            cout << "Nhap diem ly: ";
            cin >> diemLy;
            cout << "Nhap diem hoa: ";
            cin >> diemHoa;
        }
        
       void tinhDiemTrungBinh() {
            diemTrungBinh = (diemToan + diemLy + diemHoa) / 3;
        }
        
        void xepLoaiHocLuc() {
            if (diemTrungBinh >= 8.0) {
                xepLoai = "Gioi";
            } else if (diemTrungBinh >= 6.5) {
                xepLoai = "Kha";
            } else if (diemTrungBinh >= 5.0) {
                xepLoai = "Trung binh";
            } else {
                xepLoai = "Yeu";
            }
        }

        void hienThiThongTin() {
            cout << "Ho ten: " << hoTen << endl;
            cout << "Diem toan: " << diemToan << endl;
            cout << "Diem ly: " << diemLy << endl;
            cout << "Diem hoa: " << diemHoa << endl;
            cout << "Diem trung binh: " << diemTrungBinh << endl;
            cout << "Xep loai hoc luc: " << xepLoai << endl;
        }

};

int main() {
    int n;
    cout << "Nhap so luong hoc sinh: ";
    cin >> n;
    
    HocSinh* hs = new HocSinh[n];
    
    for (int i = 0; i < n; i++) {
        cout << "Nhap thong tin hoc sinh thu " << i + 1 << ":" << endl;
        hs[i].nhapThongTin();
        hs[i].tinhDiemTrungBinh();
        hs[i].xepLoaiHocLuc();
    }
    
    cout << "Danh sach Hoc Sinh:" << endl;
    for (int i = 0; i < n; i++) {
        cout << "Hoc Sinh thu " << i + 1 << ":" << endl;
        hs[i].hienThiThongTin();
    }
    
    delete[] hs;
    return 0;
}