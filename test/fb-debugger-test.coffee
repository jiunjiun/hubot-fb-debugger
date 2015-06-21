chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'fb-debugger', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()

    require('../src/fb-debugger')(@robot)

  it 'registers a hear fb_urldebug listener', ->
    expect(@robot.hear).to.have.been.calledWith(/^(fb_urldebug|fud)? (.*)/i)

  it 'registers a hear fb_link_stat listener', ->
    expect(@robot.hear).to.have.been.calledWith(/^(fb_link_stat|fls)? (.*)/i)
