const voteUp = () => {
  const votes = document.querySelectorAll('#vote');

  const changeClass = (event) => {
    console.log(event.currentTarget.innerHTML)
    if (event.currentTarget.classList.value === 'far fa-heart'){
      event.currentTarget.classList = ('fas fa-heart');
      event.currentTarget.innerHTML = Number.parseInt(event.currentTarget.innerHTML) + 1;
    } else {
      event.currentTarget.classList = ('far fa-heart');
      event.currentTarget.innerHTML = Number.parseInt(event.currentTarget.innerHTML) - 1;
    }
  };

  const Click = (vote) => {
  vote.addEventListener('click',changeClass);
  };

  votes.forEach(Click);
}

export { voteUp };
