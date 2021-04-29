const eroc = require('eroc')

const router = require('./router')


const app = eroc.createApplication((app) => {
    app.use('/api/_app_name_', router)
})

app.start()