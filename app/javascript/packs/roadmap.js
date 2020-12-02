const fill_circles = () => {

  // how many orders?
  const num_circles = document.querySelectorAll('.circle'); // .dataset.order

  // foreach order, any of the steps checked?
  num_circles.forEach((circle, index) => {
    const num = index + 1;
    const checkboxes_with_order = document.querySelectorAll(`input[data-order='${num}']`);
    checkboxes_with_order.forEach((checkbox) => {
      if (checkbox.checked) {
        // console.log(num + ' should be active');
        circle.classList.add('active');
      }
    });
  });

  // if so add .active class to respective circle

};

const remove_filling = (order_num) => {
  document.querySelectorAll('.circle')[order_num - 1].classList.remove('active');
}

const checkboxes = document.querySelectorAll('input[type=checkbox]');

checkboxes.forEach((checkbox) => {
  checkbox.addEventListener('change', (e) => {
    if (e.target.checked) {
      // console.log('checked');
      fill_circles();
    } else {
      // console.log('unchecked');
      // should also remove class active (not for demo)
      remove_filling(e.target.dataset.order);
    }
  });
});

export { fill_circles };
