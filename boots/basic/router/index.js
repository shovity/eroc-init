const eroc = require('eroc')


const router = eroc.Router()

router.get('/', async (req, res, next) => {
    return res.success()
})


module.exports = router
