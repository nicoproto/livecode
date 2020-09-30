import { addCar, fetchAndDisplayCars } from './car';
import { focusOnFirstInput, prepareNewCarForm } from './form';

const GARAGE_SLUG = "your-garage-here";

fetchAndDisplayCars(GARAGE_SLUG);
prepareNewCarForm(GARAGE_SLUG);
