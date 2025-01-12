import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  UseFilters,
  UseInterceptors,
  UploadedFile,
} from '@nestjs/common';
import { FilesService } from './files.service';
import { CreateFileDto } from './dto/create-file.dto';
import { UpdateFileDto } from './dto/update-file.dto';
import { ResponseMessage } from 'src/decorator/customize';
import { FileInterceptor } from '@nestjs/platform-express';
import { HttpExceptionFilter } from 'src/core/http-exception.filter';
import { ApiBody, ApiConsumes, ApiHeader, ApiTags } from '@nestjs/swagger';

@ApiTags('Files')
@Controller('files')
export class FilesController {
  constructor(private readonly filesService: FilesService) {}

  @Post('upload')
  @ResponseMessage('Upload Single File')
  @UseInterceptors(FileInterceptor('fileUpload'))
  @UseFilters(new HttpExceptionFilter())
  @ApiConsumes('multipart/form-data')
  @ApiBody({
    schema: {
      type: 'object',
      properties: {
        fileUpload: {
          type: 'string',
          format: 'binary',
        },
      },
    },
  })
  @ApiHeader({
    name: 'folder_type',
    required: false,
    description: 'Custom header',
  })
  uploadFile(@UploadedFile() file: Express.Multer.File) {
    return {
      originalName: file.originalname,
      mimetype: file.mimetype,
      size: file.size,
      buffer: file.buffer.toString('base64'),
    };
  }
}
