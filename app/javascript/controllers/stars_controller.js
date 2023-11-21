import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
    static targets = ['starItem', 'ratingInput']

    initialize() {
        this.value = 1 
    }

    connect() {
        this.#updateStars()
    }

    setStar(event) {
        const element = event.currentTarget
        this.value = Number(element.dataset.starRating)
        this.ratingInputTarget.value = this.value
        this.#updateStars()
    }

    #updateStars() {
        this.starItemTargets.forEach((item, index) => {
            if (index <= this.value - 1) {
                item.setAttribute('fill', '#ffca28') 
            } else {
                item.setAttribute('fill', 'none') 
            }
        })
    }
}