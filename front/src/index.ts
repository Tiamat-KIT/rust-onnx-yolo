import { Hono } from 'hono'
import Top from './JSX/Top'

const app = new Hono()

app.get('/', (c) => {
  const messages = ['Good Morning', 'Good Evening', 'Good Night']
  return c.html(
    Top({messages: messages})
  )
})

export default app
