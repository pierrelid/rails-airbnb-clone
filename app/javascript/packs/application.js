import "popper.js";
import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
// import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
//datepicker => flatpicker
import "../plugins/flatpickr"


import { initMapbox } from '../plugins/init_mapbox';

initMapbox();
