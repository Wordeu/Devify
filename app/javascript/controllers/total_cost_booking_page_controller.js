import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="total-cost-booking-page"
export default class extends Controller {
  static targets = ["price","rate"]

  connect() {
    // console.log("Hello from Stimulus")
    const start_date = document.getElementById("booking_start_date")
    const end_date = document.getElementById("booking_end_date")
    const dates = document.querySelectorAll("input")
    dates[2].addEventListener("input", (event) => {
      const booking_start_date = Date.parse(dates[1].value)
      const booking_end_date = Date.parse(dates[2].value)
      const days = ((booking_end_date - booking_start_date) / 86400000) + 1

      // console.log(days)

      const day_rate = this.rateTarget.innerText
      const total_cost = days * day_rate
      this.priceTarget.innerText = `The total cost is: £ ${total_cost}`


      // this.price.innertext = `${days} of booking`

    })
  }

}
