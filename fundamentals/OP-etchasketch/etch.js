const container = document.querySelector('#container');
let opacity = 1;
let r = 0;
let g = 0;
let b = 0;
let ceiling = 256;

for(let i = 0; i < 256; i++){
   // for(let j = 0; j < 4; j++){
        const square = document.createElement('div');
        square.classList.add('square');

        container.appendChild(square);

        square.addEventListener(
          "mouseover",
          (event) => {
            r = Math.random()*ceiling|0;
            g = Math.random()*ceiling|0;
            b = Math.random()*ceiling|0;
            ceiling -= 5;

            event.target.style.backgroundColor = "rgb(" + r + "," + g + "," + b + "," + opacity +")";
          },
          false
        );
  //  }
}

