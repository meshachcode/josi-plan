# Description:
#   Tell Hubot what you're working on so he can give out status updates when asked
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot i am working on <anything> - Set what you're working on
#   hubot what is everyone working on? - Find out what everyone is working on
#
# Author:
#   beezee

module.exports = (robot) ->

<<<<<<< HEAD
=======

>>>>>>> 620edbb10ffd7a49b44830729b99f2e1a80a3c6a
  robot.respond /(what\'s|what is) (everyone|everybody) working on(\?)?/i, (msg) ->
    messageText = '';
    users = robot.brain.users()
    for k, u of users
        if u.workingon
            messageText += "#{u.name} is working on #{u.workingon}\n"
        else
            messageText += ""
    if messageText.trim() is "" then messageText = "Nobody told me a thing."
    msg.send messageText

<<<<<<< HEAD
=======

>>>>>>> 620edbb10ffd7a49b44830729b99f2e1a80a3c6a
  robot.respond /(i\'m|i am|im) working on (.*)/i, (msg) ->
    name = msg.message.user.name
    user = robot.brain.userForName name

    if typeof user is 'object'
      user.workingon = msg.match[2]
      msg.send "Okay #{user.name}, got it."
    else if typeof user.length > 1
      msg.send "I found #{user.length} people named #{name}"
    else
      msg.send "I have never met #{name}"
      
<<<<<<< HEAD
  robot.topic (msg) ->
    msg.send "#{msg.message.text} is the new topic!"
=======
>>>>>>> 620edbb10ffd7a49b44830729b99f2e1a80a3c6a
