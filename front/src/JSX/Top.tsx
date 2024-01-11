import type {FC} from "hono/jsx"

const Layout: FC = (prop) => {
    return (
        <html>
            <body>{prop.children}</body>
        </html>
    )
}

const Top = ({messages}:{messages: string[]}):JSX.Element => {    
    return (
        <Layout>
            <h1>Hello Hono!</h1>
            <ul>
                {messages.map((msg) => {
                    return <li>{msg}</li>
                })}
            </ul>
        </Layout>
    )
}

export default Top