import { BadRequestException, Injectable } from '@nestjs/common';
import { CreateDonhangDto } from './dto/create-donhang.dto';
import { InjectRepository } from '@nestjs/typeorm';
import { Donhang } from './entities/donhang.entity';
import { Chitietdonhang } from '@/chitietdonhang/entities/chitietdonhang.entity';
import { Repository } from 'typeorm';
import { Sanpham } from '@/sanpham/entities/sanpham.entity';

@Injectable()
export class DonhangService {
  constructor(
    @InjectRepository(Donhang)
    private donHangRepository: Repository<Donhang>,
    @InjectRepository(Chitietdonhang)
    private chitietdonhangRepository: Repository<Chitietdonhang>,
    @InjectRepository(Sanpham)
    private sanPhamRepository: Repository<Sanpham>,
  ) {}
  async createDonHang(createDonHangDto: CreateDonhangDto) {
    const donHang = this.donHangRepository.create({
      ...createDonHangDto,
      NgayDat: new Date(),
    });
  
    const savedDonHang = await this.donHangRepository.save(donHang);
  
    for (const item of createDonHangDto.chiTietDonHang) {
      const sanPham = await this.sanPhamRepository.findOne({
        where: { MaSanPham: item.MaSanPham },
      });
  
      if (!sanPham) {
        throw new BadRequestException(`Sản phẩm với mã ${item.MaSanPham} không tồn tại.`);
      }
  
      if (sanPham.SoLuong < item.SoLuong) {
        throw new BadRequestException(
          `Sản phẩm với mã ${item.MaSanPham} không đủ số lượng.`,
        );
      }
      await this.chitietdonhangRepository
        .createQueryBuilder()
        .insert()
        .into(Chitietdonhang)
        .values({
          MaDonHang: savedDonHang.MaDonHang,
          MaSanPham: sanPham.MaSanPham,
          SoLuong: item.SoLuong,
          GiaTien: item.GiaTien,
        })
        .execute();
      await this.sanPhamRepository
        .createQueryBuilder()
        .update(Sanpham)
        .set({
          SoLuong: () => `SoLuong - ${item.SoLuong}`,
        })
        .where('MaSanPham = :maSanPham', { maSanPham: sanPham.MaSanPham })
        .andWhere('SoLuong >= :soLuong', { soLuong: item.SoLuong })
        .execute();
    }
  
    return savedDonHang;
  }
}
