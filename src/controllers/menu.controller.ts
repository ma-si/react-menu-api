import { Controller, Get, Route } from 'tsoa';
import * as data from '../data/menu.data.json';

@Route('/menu')
export class MenuController extends Controller {
    @Get('')
    public async get() {
        return data['categories'];
    }
}
