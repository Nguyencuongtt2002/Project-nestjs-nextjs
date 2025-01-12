import {
  ChangePasswordAuthDto,
  CodeAuthDto,
  CreateUserDto,
} from '@/users/dto/create-user.dto';
import { IUser } from '@/users/users.interface';
import { UsersService } from '@/users/users.service';
import { Injectable } from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';

@Injectable()
export class AuthService {
  constructor(
    private usersService: UsersService,
    private jwtService: JwtService,
  ) {}
  async validateUser(Email: string, MatKhau: string): Promise<any> {
    // Tìm người dùng dựa trên tên đăng nhập bằng TypeORM
    const user = await this.usersService.findOneByUsername(Email);

    if (user) {
      // Kiểm tra mật khẩu
      const isValid = this.usersService.isValidPassword(MatKhau, user.MatKhau);
      if (isValid) {
        const objUser = {
          ...user,
        };

        return objUser;
      }
    }

    return null;
  }

  async login(user: IUser) {
    const payload = {
      TaiKhoan: user.TaiKhoan,
      SoDienThoai: user.SoDienThoai,
      AnhDaiDien: user.AnhDaiDien,
      MaNguoiDung: user.MaNguoiDung,
      Email: user.Email,
      DiaChi: user.DiaChi,
      VaiTro: user.VaiTro,
    };
    return {
      access_token: this.jwtService.sign(payload),
      user: {
        Email: user.Email,
        DiaChi: user.DiaChi,
        TaiKhoan: user.TaiKhoan,
        HoTen: user.HoTen,
        AnhDaiDien: user.AnhDaiDien,
        MaNguoiDung: user.MaNguoiDung,
        SoDienThoai: user.SoDienThoai,
        VaiTro: user.VaiTro,
      },
    };
  }

  handleRegister = async (registerDTO: CreateUserDto) => {
    return await this.usersService.handleRegister(registerDTO);
  };

  checkCode = async (data: CodeAuthDto) => {
    return await this.usersService.handleActive(data);
  };

  retryActive = async (Email: string) => {
    return await this.usersService.retryActive(Email);
  };

  retryPassword = async (Email: string) => {
    return await this.usersService.retryPassword(Email);
  };

  changePassword = async (data: ChangePasswordAuthDto) => {
    return await this.usersService.changePassword(data);
  };
}
