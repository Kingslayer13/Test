do ->
  count = 0;
  window.mPlus = (x) ->
    count += x
    count
  window.mMinus = (x) ->
    count -= x
    count
  this

console.log mPlus 0
console.log mPlus 2
console.log mPlus 10
console.log mPlus 3

console.log mMinus 5
console.log mPlus 3
console.log mMinus 2
console.log mPlus 9