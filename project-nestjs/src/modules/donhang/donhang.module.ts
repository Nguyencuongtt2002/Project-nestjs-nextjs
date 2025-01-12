import { Module } from '@nestjs/common';
import { DonhangService } from './donhang.service';
import { DonhangController } from './donhang.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Donhang } from './entities/donhang.entity';
import { Chitietdonhang } from '@/chitietdonhang/entities/chitietdonhang.entity';
import { Sanpham } from '@/sanpham/entities/sanpham.entity';

@Module({
  imports: [
    TypeOrmModule.forFeature([Donhang, Chitietdonhang, Sanpham]),
  ],
  controllers: [DonhangController],
  providers: [DonhangService],
})
export class DonhangModule {}
