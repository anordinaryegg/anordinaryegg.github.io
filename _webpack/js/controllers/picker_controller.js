import { Controller } from "stimulus"


export default class extends Controller {

  static classes = [
    "hidden",
  ]

  static targets = [
    "button",
    "options",
    "picker",
  ]

  static values = {
    isOpen: Boolean
  }

  openMenu() {
    this.isOpenValue = true
    this.optionsTarget.classList.remove(this.hiddenClass)
  }

  closeMenu() {
    this.isOpenValue = false
    this.optionsTarget.classList.add(this.hiddenClass)
  }

  closeIfNeeded(event) {
    if (event.target !== this.buttonTarget && this.isOpenValue) {
      this.closeMenu()
    }
  }

  toggleMenu(event) {
    if (!this.isOpenValue) {
      this.openMenu()
    } else {
      this.closeMenu()
    }
  }
}
