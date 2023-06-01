import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="total-cost-booking-page"
export default class extends Controller {
  static targets = ["price","rate"]

  connect() {

    const start_date = document.getElementById("booking_start_date")
    const end_date = document.getElementById("booking_end_date")

    end_date.addEventListener("input", (event) => {
      const booking_start_date = Date.parse(start_date.value)
      const booking_end_date = Date.parse(end_date.value)
      const days = ((booking_end_date - booking_start_date) / 86400000) + 1
      console.log(event)
      // console.log(days)

      const day_rate = this.rateTarget.innerText
      const total_cost = days * day_rate
      this.priceTarget.innerText = `The total cost is: £ ${total_cost}`
      console.log("Hello from Stimulus")

      // this.price.innertext = `${days} of booking`

    })
  }

}
