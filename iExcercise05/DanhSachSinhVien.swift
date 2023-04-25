//
//  DanhSachSinhVien.swift
//  iExcercise05
//
//  Created by Minh Tan Vu on 25/04/2023.
//

import Foundation
/*
 Viết một ứng dụng cho phép quản lý danh sách điểm thi của các sinh viên. Mỗi sinh viên sẽ có thông tin như sau: Tên, mã sinh viên, điểm toán, điểm lý, điểm hóa. Ứng dụng cho phép thêm mới sinh viên, cập nhật điểm số của sinh viên, hiển thị danh sách sinh viên theo thứ tự điểm trung bình giảm dần. Sử dụng Struct.
 */

struct DanhSachSinhVien {
    
    var danhSachSV: [SinhVien] = []
    
    mutating func themSV(sinhVien: SinhVien) -> [SinhVien] {
        
        danhSachSV.append(sinhVien)
        return danhSachSV
    }
    
    mutating func capNhatDiem(maSV: String, diemToan: Float, diemLy: Float, diemHoa: Float) {
        if let index = danhSachSV.firstIndex(where: { $0.maSV == maSV}) {
            var svCanCapNhat = danhSachSV[index]
            svCanCapNhat.diemToan = diemToan
            svCanCapNhat.diemLy = diemLy
            svCanCapNhat.diemHoa = diemHoa
            svCanCapNhat.diemTB = (diemToan + diemLy + diemHoa)/3
            danhSachSV[index] = svCanCapNhat
            print("Cập nhật điểm thành công cho sinh viên có mã sinh viên \"\(maSV)\"!")
        } else {
            print("Không tồn tại sinh viên có mã sinh viên \"\(maSV)\"")
        }
    }
    
    func sapXepSV() -> [SinhVien] {
        return danhSachSV.sorted {
            if $0.diemTB == $1.diemTB {
                return $0.tenSV.localizedCaseInsensitiveCompare($1.tenSV) == .orderedAscending
            } else {
                return $0.diemTB > $1.diemTB
            }
        }
        inDSSV()
        
    }
    
    func inDSSV() {
        let dssvDaSapXep = sapXepSV()
        for sinhVien in dssvDaSapXep {
            print("Tên: \(sinhVien.tenSV), điểm TB: \(sinhVien.diemTB)")
        }
    }
    
}

struct SinhVien {
    
    let tenSV: String
    let maSV: String
    var diemToan: Float
    var diemLy: Float
    var diemHoa: Float
    var diemTB: Float
    
    init(tenSV: String, maSV: String, diemToan: Float, diemLy: Float, diemHoa: Float) {
        self.tenSV = tenSV
        self.maSV = maSV
        self.diemToan = diemToan
        self.diemLy = diemLy
        self.diemHoa = diemHoa
        self.diemTB = (diemHoa + diemLy + diemHoa) / 3
        
    }
}

