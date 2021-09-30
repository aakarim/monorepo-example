package gocfg

import (
    "github.com/aakarim/monorepo-example:app"
)


#Database: {
    dbDSN: string
}

config: #Database & {
    dbDSN: "\(app.defaultdb.user):\(app.defaultdb.password)@tcp(\(app.defaultdb.host):\(app.defaultdb.port))/\(app.defaultdb.db)"
}

#GoService: {
    serviceName: string
    defaultdb: config
}

