const assert = require('chai').assert
const CustomArray = require('./codingChallenge')

describe('CustomArray', () => {
  before( () => {
    ca = new CustomArray
  })

  it('exists', () => {
    assert.instanceOf(ca, CustomArray)
  })
})
