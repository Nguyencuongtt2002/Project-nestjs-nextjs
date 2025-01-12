import { Body, Controller, Get, Post, Req, UseGuards } from '@nestjs/common';
import { AuthService } from './auth.service';
import { LocalAuthGuard } from './local-auth.guard';
import { Public, ResponseMessage } from 'src/decorator/customize';
import { ApiBody, ApiTags } from '@nestjs/swagger';
import {
  ChangePasswordAuthDto,
  CodeAuthDto,
  CreateUserDto,
  UserLoginDto,
} from '@/users/dto/create-user.dto';
import { MailerService } from '@nestjs-modules/mailer';

@ApiTags('auth')
@Controller('auth')
export class AuthController {
  constructor(
    private readonly authService: AuthService,
    private readonly mailerService: MailerService,
  ) {}

  @UseGuards(LocalAuthGuard)
  @ApiBody({ type: UserLoginDto })
  @Public()
  @Post('/login')
  @ResponseMessage('User Login')
  handleLogin(@Req() req) {
    return this.authService.login(req.user);
  }

  @Get('mail')
  @Public()
  testMail() {
    this.mailerService.sendMail({
      to: 'cuongtt1407@gmail.com',
      subject: 'Testing Nest MailerModule ✔',
      text: 'welcome',
      template: 'register',
      context: {
        name: 'eric',
        activationCode: 123,
      },
    });
    return 'ok';
  }

  @Post('register')
  @Public()
  register(@Body() registerDTO: CreateUserDto) {
    return this.authService.handleRegister(registerDTO);
  }

  @Post('check-code')
  @Public()
  checkCode(@Body() registerDTO: CodeAuthDto) {
    return this.authService.checkCode(registerDTO);
  }

  @Post('retry-active')
  @ApiBody({
    description: 'Email',
    type: String, // Specify that the body is expected to be a string
  })
  @Public()
  retryActive(@Body('Email') Email: string) {
    // Directly bind the body to Email
    return this.authService.retryActive(Email);
  }

  @Post('retry-password')
  @Public()
  retryPassword(@Body('Email') Email: string) {
    // Directly bind the body to Email
    return this.authService.retryPassword(Email);
  }

  @Post('change-password')
  @Public()
  changePassword(@Body() data: ChangePasswordAuthDto) {
    return this.authService.changePassword(data);
  }
}
