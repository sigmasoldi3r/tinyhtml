local html = require('html')

print(
  html['!DOCTYPE']('html'),
  html.html(
    html.head(
      html.title 'Hello World!'
    ),
    html.body(
      html.h1 'Test',
      html.div(html.props{style='color: red;'},
        'Hey Warldus!'
      )
    )
  )
)
