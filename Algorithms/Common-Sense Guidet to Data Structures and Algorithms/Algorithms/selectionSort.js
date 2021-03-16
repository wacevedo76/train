function selectionSort(array) {
  for(let i = 0; i < array.length; i++) {
    let lowestNumberIndex = i;
    for(var j = i + 1; j < array.length; j++){
      if(array[j] < array[lowestNumberIndex]){
        lowestNumberIndex = j;
      }
    }
    if(lowestNumberIndex !=i){
      const temp = array[i];
      array[i] = array[lowestNumberIndex];
      array[lowestNumberIndex] = temp;
    }
  }
  return array;
}

function getRandomInt(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min)) + min;
}


function listMaker(lenArr) {
  const resultArr = [];
  while (resultArr.length <= lenArr) {
    const temp = getRandomInt(1, lenArr);
    if (!resultArr.includes(temp)) {
      resultArr.push(temp);
    }
  }
  return resultArr;
}

module.exports = { selectionSort, listMaker };
