class CustomArray {
  flatten(arr) {
    let builder = [], final = []
    arr.forEach( item => {
      this.createBuilder(builder, item)
    })
    builder.forEach(item => {
      this.recurse(final, item)
    })
    return final
  }

  recurse(final, item) {
    if (item instanceof Array) {
      final.push(this.flatten(item))
    } else {
      final.push(item)
    }
  }

  createBuilder(builder, item) {
    if (item instanceof Array) {
      this.builderify(builder, item)
    } else {
      builder.push(item)
    }
  }

  builderify(builder, item) {
    item.forEach( insideItem => {
      builder.push(insideItem)
    })
  }

  isArray(arr) {
    arr.forEach(item => {
      if (item instanceof Array) {
        return true
      }
    })
  }
}

module.exports = CustomArray;
