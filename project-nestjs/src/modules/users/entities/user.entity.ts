import {
  Column,
  DeleteDateColumn,
  Entity,
  PrimaryGeneratedColumn,
} from 'typeorm';

@Entity('nguoidung')
export class User {
  @PrimaryGeneratedColumn()
  MaNguoiDung: number;

  @Column({ length: 35 })
  TaiKhoan: string;
  @Column({ type: 'longtext' })
  MatKhau: string;
  @Column({ length: 50 })
  Email: string;
  @Column({ length: 50 })
  HoTen: string;
  @Column()
  NgaySinh: Date;
  @Column({ length: 10 })
  GioiTinh: string;
  @Column({ length: 50 })
  DiaChi: string;
  @Column({ length: 10 })
  SoDienThoai: string;
  @Column({ length: 100 })
  AnhDaiDien: string;
  @Column({ length: 30 })
  VaiTro: string;
  @Column({ type: 'tinyint' })
  isActive: number;
  @Column()
  codeId: string;
  @Column()
  codeExpired: Date;
  @DeleteDateColumn()
  deletedAt?: Date;
}