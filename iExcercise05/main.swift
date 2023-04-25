//
//  main.swift
//  iExcercise05
//
//  Created by Minh Tan Vu on 25/04/2023.
//

import Foundation
/*
var sv1 = SinhVien(tenSV: "SV A", maSV: "01", diemToan: 8, diemLy: 9, diemHoa: 7)
var sv2 = SinhVien(tenSV: "SV B", maSV: "02", diemToan: 6, diemLy: 7, diemHoa: 8)
var sv3 = SinhVien(tenSV: "SV C", maSV: "03", diemToan: 9, diemLy: 9, diemHoa: 9)

var dssv = DanhSachSinhVien()
dssv.themSV(sinhVien: sv2)
dssv.themSV(sinhVien: sv1)
dssv.themSV(sinhVien: sv3)

dssv.inDSSV()
dssv.capNhatDiem(maSV: "02", diemToan: 3, diemLy: 4, diemHoa: 5)
dssv.inDSSV()
*/

var sp1 = SanPham(ten: "Sting", maSP: "01", giaBan: 8000, tonKho: 200)
var sp2 = SanPham(ten: "Tra Xanh 0 do", maSP: "02", giaBan: 9000, tonKho: 150)
var sp3 = SanPham(ten: "Tra Dr.Thanh", maSP: "03", giaBan: 7000, tonKho: 15)

var dssp = DanhSachSanPham()
dssp.themSP(sanPham: sp1)
dssp.themSP(sanPham: sp2)
dssp.themSP(sanPham: sp3)


dssp.inDSSP()
dssp.capNhatSP(maSP: "01", giaBan: 7500, tonKho: 190)
print("-----")
dssp.timKiemSP(ten: "Tra")
