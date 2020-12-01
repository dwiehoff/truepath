const algorithm = () => {
  const lastCarouselItem = document.querySelector('#question-carousel .carousel-item:last-of-type');
  const answers = lastCarouselItem.querySelectorAll('.btn.answers');

  answers.forEach(el => {
    el.addEventListener('click', run)
  })
}

const run = (e) => {
  e.preventDefault();

  const html = "<h1>Give me a second.<br>Doing the <strong>magic.</strong></h1><div class='process'><svg id='progress' percent='75' viewport='0 0 140 140'><circle cx='70' cy='70' r='64'></circle><circle cx='70' cy='70' r='64'></circle></svg></div>";

  // //
// <text x='40%' y='55%' dy='' textAnchor='middle' fill='black'>45%</text>

  // <text
  //       x="55%"
  //       y="50%"
  //       dy="0.4rem"
  //       textAnchor="end"
  //       fill={props.stroke}
  //       style={{
  //         fontSize:'2.5rem',
  //         fontFamily:'Varela Round',
  //         fontWeight: 'bold',
  //       }}
  //     >
  //       {`${props.value}`}
  //     </text>

  document.querySelector('#question-carousel').innerHTML = html;
  document.querySelector("#progress").setAttribute("percent", 45);

  let i = 45;
  let processIndicatorProgress = () => {
    if (document.querySelector("#progress").attributes['percent'].value >= 100) {
      clearInterval(move);
      document.querySelector('#progress circle').style.fill = '#1E1248';
      document.querySelector('.process').insertAdjacentHTML('beforeend', '<div class="icon-checkmark"><i class="fas fa-check"></i></div>');
    } else {
      document.querySelector("#progress").setAttribute("percent", i);
      i++;
    }
  }
  let move = setInterval(processIndicatorProgress, 20);
}

export { algorithm };
