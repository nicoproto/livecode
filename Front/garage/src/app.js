// TODO: Build an awesome garage!
import { addCar, fetchCars } from './car';
import { focusOnFirstInput, prepareNewCarForm } from './form';

const garageName = "codingkatz";

fetchCars(garageName);
prepareNewCarForm(garageName);
