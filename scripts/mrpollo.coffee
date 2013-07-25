# Description:
#   Load a random MrPollo from an array of images.
#   Based on pugme.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot mrpollo me - Receive a Mr Pollo
#
# Author:
#   rubenrails

mrpollos = [
  "http://b.vimeocdn.com/ps/123/356/1233564_300.jpg",
  "http://qph.is.quoracdn.net/main-thumb-1289875-200-OifZzahDZKQWobgabT8SEqHPoqRRqm7W.jpeg",
  "https://si0.twimg.com/profile_images/1853094995/image.jpg",
  "http://i1.ytimg.com/vi/TsGipbNsULo/mqdefault.jpg",
  "http://d3j5vwomefv46c.cloudfront.net/photos/large/9851920.jpg?1243191264",
  "http://a0.twimg.com/profile_images/2820589751/8a477cb663602572525cdf832e905f64.png",
  "https://secure.gravatar.com/avatar/8c4caaefed2a4b497af546524bc3bf6f?s=360",
  "http://desmond.yfrog.com/Himg338/scaled.php?tn=0&server=338&filename=zqe.jpg&xsize=480&ysize=480"
]

module.exports = (robot) ->
  robot.respond /mrpollo me/i, (msg) ->
    msg.send mrpollos[Math.floor(Math.random()*mrpollos.length)]

  robot.respond /how many mrpollos are there/i, (msg) ->
    msg.send "There are #{mrpollos.length} mrpollos."