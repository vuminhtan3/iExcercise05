//
//  QuanLySanPham.swift
//  iExcercise05
//
//  Created by Minh Tan Vu on 25/04/2023.
//

import Foundation
/*
 Viết một ứng dụng cho phép quản lý thông tin của các sản phẩm trong cửa hàng. Mỗi sản phẩm sẽ có thông tin như sau: Tên, mã sản phẩm, giá bán, số lượng trong kho. Ứng dụng cho phép thêm mới sản phẩm, cập nhật thông tin của sản phẩm, hiển thị danh sách sản phẩm, tìm kiếm sản phẩm theo tên. Sử dụng Class.
 */

class SanPham {
    
    var ten: String
    let maSP: String
    var giaBan: Float
    var tonKho: Int
    
    init(ten: String, maSP: String, giaBan: Float, tonKho: Int) {
        self.ten = ten
        self.maSP = maSP
        self.giaBan = giaBan
        self.tonKho = tonKho
    }
}

class DanhSachSanPham {
    
    var danhSachSP: [SanPham] = []
    
    func themSP(sanPham: SanPham) -> [SanPham] {
        danhSachSP.append(sanPham)
        return danhSachSP
    }
    
    func capNhatSP(maSP: String, giaBan: Float, tonKho: Int) {
        if let index = danhSachSP.firstIndex(where: {$0.maSP == maSP}) {
            let spCanCapNhat = danhSachSP[index]
            spCanCapNhat.giaBan = giaBan
            spCanCapNhat.tonKho = tonKho
            danhSachSP[index] = spCanCapNhat
            print("Cập nhật thành công!")
        } else {
            print("Không tồn tại sản phẩm có mã sản phẩm \"\(maSP)\"")
        }
//        inDSSP()
    }
    
    func inDSSP() {
        for sanPham in danhSachSP {
            print("Mã SP: \(sanPham.maSP) - Tên SP: \(sanPham.ten) - Giá bán: \(sanPham.giaBan) - Tồn kho: \(sanPham.tonKho)")
        }
    }
    
    func timKiemSP(ten: String) {
        var kqTimKiem: [SanPham] = []
        
        for sanPham in danhSachSP {
            if sanPham.ten.lowercased().contains(ten.lowercased()) {
                kqTimKiem.append(sanPham)
            }
        }
        
        if kqTimKiem.count >= 1 {
            for sanPham in kqTimKiem {
                print("Mã SP: \(sanPham.maSP) - Tên SP: \(sanPham.ten) - Giá bán: \(sanPham.giaBan) - Tồn kho: \(sanPham.tonKho)")
            }
        } else {
            print("Không có kết quả phù hợp.")
        }
        
//        kqTimKiem = danhSachSP.filter {
//            $0.ten.lowercased().contains(ten.lowercased())
//        }
//        return kqTimKiem
    }
}
