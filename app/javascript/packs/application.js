import "bootstrap";
import "slick-carousel";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";

import "../plugins/slick";

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

if (document.querySelector(".avatar-uploader")) {
  document.querySelector(".avatar-uploader").addEventListener("click", function() {
    document.querySelector("#upload-image").click()
  });
}

if (document.querySelector(".ss-uploader")) {
  document.querySelector(".ss-uploader").addEventListener("click", function() {
    document.querySelector("#upload-imagee").click()
  });
}

if (document.querySelector(".id-uploader")) {
  document.querySelector(".id-uploader").addEventListener("click", function() {
    document.querySelector("#upload-imagee").click()
  });
}

// ******************unlockslider****************

// ******************unlock****************
var inputRange = document.getElementsByClassName('pullee')[0],
    maxValue = 150, // the higher the smoother when dragging
    speed = 12, // thanks to @pixelass for this
    currValue, rafID;

// set min/max value
inputRange.min = 0;
inputRange.max = maxValue;

// listen for unlock
function unlockStartHandler() {
    // clear raf if trying again
    window.cancelAnimationFrame(rafID);

    // set to desired value
    currValue = +this.value;
}

function unlockEndHandler() {

    // store current value
    currValue = +this.value;

    // determine if we have reached success or not
    if(currValue >= maxValue) {
        successHandler();
    }
    else {
        rafID = window.requestAnimationFrame(animateHandler);
    }
}

// handle range animation
function animateHandler() {

    // update input range
    inputRange.value = currValue;

    // determine if we need to continue
    if(currValue > -1) {
      window.requestAnimationFrame(animateHandler);
    }

    // decrement value
    currValue = currValue - speed;
}

// handle successful unlock
function successHandler() {
    window.location = '/welcome';

    // reset input range
    inputRange.value = 0;
};

// bind events
inputRange.addEventListener('mousedown', unlockStartHandler, false);
inputRange.addEventListener('mousestart', unlockStartHandler, false);
inputRange.addEventListener('mouseup', unlockEndHandler, false);
inputRange.addEventListener('touchend', unlockEndHandler, false);
// ******************unlock****************



