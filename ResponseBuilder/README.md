Response Builder

A HTTP response builder stack that isolates the way the client and server send requests to and from each other

Provides a consistent way of sending requests and response to and from


Parameters:
- Determiner for request or response
- A url path (https://...)
- A set of headers (Headers: { Authorisation })
- A method to be sent ([GET, POST, PATCH, DELETE])
- A list of things to be sent in json
- A specific status for the response

Example

import ResponseBuilder from 'xenonvelopment/response-builder'

const config = {
  determiner: 'Request',
  <!-- status: 200 -->
  method: 'POST',
  headers: {

  },
  body: {

  },
}

await ResponseBuilder(url, config)

