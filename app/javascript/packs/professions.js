const test = () => {
  $('.suggestion').draggable();

  // document.querySelector('.suggestion').addEventListener('dragstart', handleDragStart);

  const selectionList = document.querySelector('.selection');

  document.querySelectorAll('.suggestion').forEach((el) => {
    el.addEventListener('mouseup', (e) => {
      // const x = e.offsetX;
      // alert(x);
      if (parseInt(el.style.left) < 0) {
        console.log('liked!');
        let new_li = document.createElement('li');
        new_li.className = 'selected_career';
        new_li.innerText = document.querySelector('.suggestion h2').innerText;
        el.remove();
        selectionList.appendChild(new_li);

        // el.style.display = 'none';
      } else {
        console.log("don't like!");
        el.remove();
      }
    });
  });
}

// function handleDragStart(e) {
//     this.style.opacity = '1';
// }

export { test };
