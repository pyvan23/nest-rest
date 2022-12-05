import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello() {
    return {
      hola: 'mundo',
    };
  }

  getCats() {
    return {
      cats: ['loki', 'nest cats'],
    };
  }
}
