const addCar = (car) => {
  const carCard = `<div class="car">
    <div class="car-image">
      <img src="http://loremflickr.com/300/300/${car.brand}%20${car.model}" />
    </div>
    <div class="car-info">
      <h4>${car.brand} - ${car.model}</h4>
      <p><strong>Owner:</strong> ${car.owner}</p>
      <p><strong>Plate:</strong> ${car.plate}</p>
    </div>
  </div>`;
  document.querySelector('.cars-list').insertAdjacentHTML('beforeend', carCard);
};

const fetchAndDisplayCars = (slug) => {
  fetch(`https://wagon-garage-api.herokuapp.com/${slug}/cars`)
    .then(response => response.json())
    .then((data) => {
      data.forEach(addCar);
    });
}

export { addCar, fetchAndDisplayCars };
