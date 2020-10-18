const fs = require('fs')
const express = require('express')
const EventerEmitter = require('events')

const chatEmitter = new EventerEmitter()
const port = process.env.Port || 3000

const app = express()

app.get('/', respondText)
app.get('/json', respondJson)
app.get('/echo', respondEcho )
app.get('/static/*', respondStatic)
app.get('/chat', respondChat )
app.get('/sse', respondSSE)

app.listen(port, () => console.log(`Server listening on port ${port}`))

function respondText (req, res) {
  res.setHeader('Content-type', 'text/plain')
  res.end('Hello world')
}

function respondJson (req, res) {
  res.json({ text: 'Hello World again!', numbers: [1, 2, 3] })
}

function respondEcho (req, res) {
  const { input = '' } = req.query

  res.json({
    normal: input,
    shouty: input.toUpperCase(),
    characterCount: input.length,
    backards: input
      .split('')
      .reverse()
      .join('')
  })
}

function respondStatic (req, res) {
  const filename = `${__dirname}/public/${req.params[0]}`
  fs.createReadStream(filename)
    .on('error', () => respondNoFound(req, res))
    .pipe(res)
}

function respondChat (req, res) {
  const { message } = req.query

  chatEmitter.emit('message', message)
  res.end()
}

function respondSSE (req, res) {
  res.writehead(200, {
    'content-type': 'text/event-stream',
    'connection': 'keep-alive'
  })

  const onmessage = msg => res.write(`data: ${msg}\n\n`)
  chatEmitter.on('messag', onMessage)

  res.on('close', function () {
    chatemitter.off('message', onmessage)
  })
}

function respondNoFound (req, res) {
  res.writeHead(404, { 'Content-type': 'text/plain' })
  res.end('Not Found')
}
