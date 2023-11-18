import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
    static targets = ['quantity', 'quantityOutput']

    initialize() {
        this.quantity = 1
        this.#updateTargets()
    }

    increment() {
        this.quantity++
        this.#updateTargets()
    }

    decrement() {
        if (this.quantity === 1) return;
        this.quantity--
        this.#updateTargets()
    }
    
    #updateTargets() {
        this.quantityTarget.value = this.quantity
        this.quantityOutputTarget.textContent = this.quantity
    }
}