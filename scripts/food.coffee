
# Description:
#   Rings the food bell
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot food is ready - Ring food bell

module.exports = (robot) ->

  robot.respond /food is ready/i, (msg) ->
    msg.http("http://tsharp.net:8976/ready")
    .get() (err, res, body) ->
      search = escape(msg.match[1])
      msg.http('http://www.reddit.com/r/shittyfoodporn.json')
        .get() (err, res, body) ->
          result = JSON.parse(body)

          if result.data.children.count <= 0
            msg.send "Couldn't find food..."
            return

          urls = [ ]
          for child in result.data.children
            urls.push(child.data.url)

          rnd = Math.floor(Math.random()*urls.length)
          msg.send urls[rnd]+".jpg"
