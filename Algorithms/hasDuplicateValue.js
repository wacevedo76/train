const testval = {};

testval.arr1 = [1,2,3];
testval.arr2 = [1,2,3,4];
testval.hasDuplicateValue = function(array) {
  steps = 0;
  for(let i = 0; i < array.length; i++) {
    for(let j = 0; j < array.length; j++) {
      steps++;
      if(i !== j && array[i] == array[j]) {
        return true
      }
    }
  }
  console.log(steps);
  return false;
};



module.exports = testval;
