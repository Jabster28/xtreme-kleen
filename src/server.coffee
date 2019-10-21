express = require "express"
app = express()

app.use express.static "public"
# http://expressjs.com/en/starter/basic-routing.html
app.get '/', (q, s) ->
  s.sendFile __dirname + '/views/index.html'

app.get '/contact', (q, s) ->
  s.sendFile __dirname + '/views/contact.html'
	
app.get '/sitemap.xml', (q, s) ->
  s.sendFile __dirname + '/sitemap.xml'

app.get '/nav.html', (q, s) ->
  s.sendFile __dirname + '/views/nav.html'
app.get '/.well-known/acme-challenge/Twaz2rO5M8okvGQqe3foxFPa29Nuz8qiw8sCQ7ThSw4', (q,s) ->
	s.sendFile __dirname + "/Twaz2rO5M8okvGQqe3foxFPa29Nuz8qiw8sCQ7ThSw4"
# listen for requests :)
listener = app.listen 3000, ->
  console.log 'Your app is listening on port ' + listener.address().port



