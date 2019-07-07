const btn = document.querySelectorAll(".section_btn");
const sectionOne = document.querySelector(".section-one");
const sectionTwo = document.querySelector(".section-two");
const sectionThree = document.querySelector(".section-three");
const sectionFour = document.querySelector(".section-four");
const sectionFive = document.querySelector(".section-five");

const toggleOneTwo = () => {
  event.preventDefault();
  sectionOne.classList.toggle('hide');
  sectionTwo.classList.toggle('hide');
};

const toggleTwoThree = () => {
  event.preventDefault();
  sectionTwo.classList.toggle('hide');
  sectionThree.classList.toggle('hide');
};

const toggleThreeFour = () => {
  event.preventDefault();
  sectionThree.classList.toggle('hide');
  sectionFour.classList.toggle('hide');
};

const toggleFourFive = () => {
  event.preventDefault();
  sectionFour.classList.toggle('hide');
  sectionFive.classList.toggle('hide');
};

btn[0].addEventListener("click", (event) => {
  toggleOneTwo();
});

btn[1].addEventListener("click", (event) => {
  toggleOneTwo();
});

btn[2].addEventListener("click", (event) => {
  toggleTwoThree();
});

btn[3].addEventListener("click", (event) => {
  toggleTwoThree();
});

btn[4].addEventListener("click", (event) => {
  toggleThreeFour();
});

btn[5].addEventListener("click", (event) => {
  toggleThreeFour();
});

btn[6].addEventListener("click", (event) => {
  toggleFourFive();
});

btn[7].addEventListener("click", (event) => {
  toggleFourFive();
});
