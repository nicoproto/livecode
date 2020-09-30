import { addCar } from './car';

const form = document.getElementById('new-car');

// This methods targets the first element of the form
const focusOnFirstInput = () => {
  document.getElementById("brand").focus();
}

const prepareNewCarForm = (slug) => {
  focusOnFirstInput();

  form.addEventListener('submit', (event) => {
    event.preventDefault();
    createCar(slug);
  });
}

const createCar = (slug) => {
  const car = {
    brand: document.getElementById("brand").value,
    model: document.getElementById("model").value,
    plate: document.getElementById("plate").value,
    owner: document.getElementById("owner").value
  };
  const url = `https://wagon-garage-api.herokuapp.com/${slug}/cars`
  fetch(url, {
    method: 'POST',
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(car)
  })
    .then(response => response.json())
    .then((data) => {
      if (data.errors) {
        alert(JSON.stringify(data.errors));
      } else {
        addCar(data);
        form.reset();
        focusOnFirstInput();
      }
    });
}

export { focusOnFirstInput, prepareNewCarForm };
