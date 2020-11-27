const test = () => {
  $('.suggestion').draggable();

  // document.querySelector('.suggestion').addEventListener('dragstart', handleDragStart);

  const selectionList = document.querySelector('.selection');

  selectionList.insertAdjacentHTML('beforeend', '<li class="compare selected_career" style="width: 70px; display: flex; align-items: center; justify-content: center;"><a href="/professions/compare?q=pm,sc"><i class="fas fa-balance-scale-right"></i></a></li>');

  document.querySelectorAll('.suggestion').forEach((el) => {
    el.addEventListener('mouseup', (e) => {
      // const x = e.offsetX;
      // alert(x);
      if (parseInt(el.style.left) < 0) {
        console.log('liked!');
        let new_li = document.createElement('li');
        let a = document.createElement('a');
        a.setAttribute("href", '/professions/1');
        let linkText = document.createTextNode(document.querySelector('.suggestion h2').innerText);
        a.appendChild(linkText);
        new_li.appendChild(a);
        new_li.className = 'selected_career';
        // new_li.textContent = document.querySelector('.suggestion h2').innerText;
        el.remove();
        selectionList.appendChild(new_li);

        document.querySelector('.compare').classList.add('active');

        if (!document.querySelector('.compare')) {
          // add button to link to comp
          // selectionList.insertAdjacentHTML('beforeend', '<li class="compare selected_career" style="width: 70px; display: flex; align-items: center; justify-content: center;"><a href="/professions/compare?q=pm,sc"><i class="fas fa-balance-scale-right"></i></a></li>');
        } else {

        }

        // el.style.display = 'none';
      } else if (el.style.left == 0) {

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
