{exec} = require 'child_process'
task 'build', 'Build project from src/*.coffee to
 root and public coffee files', ->
  console.log "--- 1: Compiling files from src to root... ---"
  exec 'coffee --compile --output ./ src/', (err, stdout, stderr) ->
    throw err if err
    console.log stdout + stderr
    console.log "Finished step 1" if not err
    console.log "--- 2: Compiling files in public... ---"
    exec 'coffee -m --bare --compile public/', (err2, stdout, stderr) ->
      throw err if err2
      console.log stdout + stderr
      console.log "Finished step 2" if not err2
      console.log "Finished compiling!"
task 'build-cypress', 'Build cypress test files from
cypress/coffee_spec/*.coffee to cypress/integration ', ->
  console.log "--- 1: Compiling files from coffee_spec to integration... ---"
  exec 'coffee --compile --bare --output cypress/integration/
   cypress/coffee_spec/', (err, stdout, stderr) ->
    throw err if err
    console.log stdout + stderr
    console.log "Finished step 1" if not err
    console.log "Finished compiling!"
task 'both', 'both', ->
  exec 'cake build && coffee --compile --bare --output cypress/integration/
   cypress/coffee_spec/', (err, stdout, stderr) ->
    throw err if err
    console.log stdout + stderr
