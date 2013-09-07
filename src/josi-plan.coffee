# Description:
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#
# Author:

module.exports = (robot) ->

  robot.respond /persona/i, (msg) ->
    msg.send "JoSi Plan - Loaded"