package app

env: string

defaultdb: {
    host: string
    password: string @tag(password)
    user: string
    db: string
    port: number
}