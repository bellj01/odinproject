// your JavaScript file
const container = document.querySelector('#container');

const content = document.createElement('div');
content.classList.add('content');
content.textContent = 'This is the glorious text-content!';

container.appendChild(content);

const paraContent = document.createElement('p');
paraContent.classList.add('paraContent');
paraContent.style.color = 'red';
paraContent.textContent = "Hey I'm red!";

container.appendChild(paraContent);

const blueH3 = document.createElement('h3');
blueH3.classList.add('blueH3');
blueH3.style.color = 'blue';
blueH3.textContent = "I'm a blue h3!";

container.appendChild(blueH3);

const secondContainer = document.createElement('div');
secondContainer.classList.add('secondContainer');
secondContainer.style.backgroundColor = 'pink';
secondContainer.style.border= '4px solid black';

const divH1 = document.createElement('h1');
divH1.classList.add('divH1');
divH1.textContent = "I'm in a div!";

secondContainer.appendChild(divH1);

const paraContent2 = document.createElement('p');
paraContent2.classList.add('paraContent2');
paraContent2.textContent = "Me too!";

secondContainer.appendChild(paraContent2);



container.appendChild(secondContainer);

const btn = document.querySelector('#btn');
/*btn.onclick = () => alert("hellooo world");
btn.addEventListener('click', () => {
    alert("hell world");
    alert('heaven world');
});
*/
btn.addEventListener('click',function (e){
   // console.log(e.target);
    e.target.style.background = 'blue';
})