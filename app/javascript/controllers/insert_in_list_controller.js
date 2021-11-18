import { Controller } from "stimulus";
import { csrfToken } from "@rails/ujs";

export default class extends Controller {
    static targets = ['items', 'form'];

    connect() {
        console.log(this.element);
        console.log(this.itemsTarget);
        console.log(this.formTarget);
    }

    send(event) {
        event.preventDefault();


        const requestUrl = this.formTarget.action;
        const bodyData = this.formTarget;
        const requestInfo = {
            method: 'POST',
            headers: { 'Accept': "application/json", 'X-CSRF-Token': csrfToken() },
            body: new FormData(bodyData)
        };

        fetch(requestUrl, requestInfo)
            .then(response => response.json())
            .then((data) => {
                console.log(data);
                if (data.inserted_item) {
                    this.itemsTarget.insertAdjacentHTML("beforeend", data.inserted_item);
                }
                this.formTarget.outerHTML = data.form;
            });
    }
}