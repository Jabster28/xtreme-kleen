express = require "express"
app = express()

app.use express.static "public"
# http://expressjs.com/en/starter/basic-routing.html
app.get '/', (q, s) ->
  s.sendFile __dirname + '/views/index.html'

# listen for requests :)
listener = app.listen process.env.PORT, ->
  console.log 'Your app is listening on port ' + listener.address().port


