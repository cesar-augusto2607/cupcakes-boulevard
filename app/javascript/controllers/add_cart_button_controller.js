import { Controller } from '@hotwired/stimulus'

export default class AddCartButtonControler extends Controller {
    static targets = ['icon']

    static values = {
        hasAdded: Boolean
    }

    connect() {
        if (this.hasAddedValue) {
            this.element.classList.add('item-added')
            this.timeout = setTimeout(() => {
                this.element.textContent = 'Adicionar no carrinho'
                this.element.classList.remove('item-added')
            }, 2000)
        }
    }

    disconnect() {
        if (this.timeout) clearTimeout(this.timeout)
    }
}