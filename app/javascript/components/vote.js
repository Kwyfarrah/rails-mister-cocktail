const voteUp = () => {
  const voteUp = document.querySelector('#vote');
  voteUp.addEventListener('click', (event) => {
    console.log(voteUp.classList);
  if (voteUp.classList === 'far fa-heart'){
      voteUp.classList = ('fas fa-heart');
    } else {
      voteUP.classList = ('far fa-heart');
    }
  });
}

export { voteUp };

