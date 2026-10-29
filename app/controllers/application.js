import Controller from '@ember/controller';
import { action } from '@ember/object';

export default class ApplicationController extends Controller {
  @action
  closeMenu(event) {
    const menu = event.currentTarget.closest('.sidebar-menu');

    if (menu) {
      menu.open = false;
    }
  }
}