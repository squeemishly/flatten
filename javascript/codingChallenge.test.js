const assert = require('chai').assert
const CustomArray = require('./codingChallenge')

describe('CustomArray', () => {
  before( () => {
    ca = new CustomArray
  })

  it('exists', () => {
    assert.instanceOf(ca, CustomArray)
  })

  it('can flatten an array with nothing in it', () => {
    assert.deepEqual([], ca.flatten([]))
  })

  it('can flatten an array with a single value in it', () => {
    assert.deepEqual([1], ca.flatten([1]))
  })

  it('can flatten an array with a multiple values in it', () => {
    assert.deepEqual([1, 2], ca.flatten([1, 2]))
  })

  it('can flatten an array with a single nest', () => {
    assert.deepEqual([1, 2], ca.flatten([1, [2]]))
  })

  it('can flatten an array with a single nest', () => {
    assert.deepEqual([1, 2, 3, 4, 5], ca.flatten([[1,2],[3,[4,5]]]))
  })
})
