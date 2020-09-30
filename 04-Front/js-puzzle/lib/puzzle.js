
// Find the button
const hintButton = document.querySelector('#show-hint');

// Add event listener
hintButton.addEventListener("click", () => {
  const hint = document.querySelector(".hint")
  hint.classList.toggle("active");
})


// Select all the tiles QUERYSELECTORALL
const tiles = document.querySelectorAll("td");


// Iterate on the tiles NodeList
tiles.forEach((tile) => {

  // Pick up the click on any of the tiles
  tile.addEventListener("click", (event) => {
    // console.log(event.currentTarget);
    // check if it has an empty neighbor
    if (canMove(event.currentTarget)) {
      // swap the t< ile and the empty space
      moveTile(event.currentTarget)
      // check if the player wins
      checkIfPlayerWins();
    }
  })

})

const canMove = (tile) => {
  const tileColumn = tile.cellIndex;
  const tileRow = tile.parentElement.rowIndex;
  const emptyTile = document.querySelector(".empty");
  const emptyTileColumn = emptyTile.cellIndex;
  const emptyTileRow = emptyTile.parentElement.rowIndex;

  const result = tileRow + tileColumn - emptyTileRow - emptyTileColumn
  return (result == 1 || result == -1);
}

const moveTile = (tile) => {
  // 1. Select empty tile
  const emptyTile = document.querySelector(".empty");
  // 2. Remove the empty class from empty
  emptyTile.classList.remove("empty");
  // 3. Select the text from the tile and add it to empty
  emptyTile.innerText = tile.innerText;
  // 4. Remove text from tile to and empty class
  tile.innerText = "";
  tile.classList.add("empty");
}

const checkIfPlayerWins = () => {
  const result = []
  tiles.forEach((tile) => {
    result.push(tile.innerText);
  })
  const winning = "1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,";
  if (result.join() == winning) {
    alert("You won!");
  }

}









