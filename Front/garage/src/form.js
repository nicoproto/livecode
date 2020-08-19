import { addCar } from './car';

const focusOnFirstInput = () => {
  document.getElementById("brand").focus();
};

const prepareNewCarForm = (garageName) => {
  const form = document.getElementById("new-car");

  form.addEventListener('submit', (event) => {
    event.preventDefault();
    const newCar = {};
    newCar.brand = form.querySelector('#brand').value;
    newCar.model = form.querySelector('#model').value;
    newCar.plate = form.querySelector('#plate').value;
    newCar.owner = form.querySelector('#owner').value;

    const url = `https://wagon-garage-api.herokuapp.com/${garageName}/cars`;
    fetch(url, {
      method: 'POST',
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(newCar)
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
  });
};

export { prepareNewCarForm };
