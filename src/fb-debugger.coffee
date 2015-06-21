# Description
#   A hubot script that does the things
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
#
# Commands:
#   hubot hello - <what the respond trigger does>
#   orly - <what the hear trigger does>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   jiunjiun[@<org>]

module.exports = (robot) ->
  fb_urldebug = (url) ->
    fb_debug = "https://developers.facebook.com/tools/debug/og/object?q=#{url}"

    graph = 'https://graph.facebook.com/'
    postData = "id=#{encodeURIComponent(url)}&scrape=true"
    robot.http(graph).post(postData) (err, res, body) ->
      return
    fb_debug

  robot.hear /^(fb_urldebug|fud)? (.*)/i, (msg) ->
    url = msg.match[2]
    fb_debug = fb_urldebug(url)
    msg.send "#{fb_debug}"

  robot.hear /^(fb_link_stat|fls)? (.*)/i, (msg) ->
    Table = require('cli-table')
    table = new Table
      head: ['name', 'value']
      colWidths: [20, 60]

    url = msg.match[2]
    fb_link_stat_link = "https://graph.facebook.com/fql?q=SELECT url, normalized_url, share_count, like_count, comment_count, total_count, commentsbox_count, comments_fbid, click_count FROM link_stat WHERE url in('#{url}')"

    robot.http(fb_link_stat_link).get() (err, res, body) ->
      result = JSON.parse body

      for key, value of result.data[0]
        table.push ["#{key}", "#{value}"]

      msg.send "#{url}"
      msg.send "#{table}"
