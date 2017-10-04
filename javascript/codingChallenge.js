class CustomArray {
  flatten(arr) {
    let builder = []
    arr.forEach( item => {
      if (item instanceof Array) {
        item.forEach( insideItem => {
          builder.push(insideItem)
        })
      } else {
        builder.push(item)
      }
    })
    return builder
  }
}

module.exports = CustomArray;
