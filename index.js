const express = require("express");

const app = express()

app.get('/', (req, res) => {
    res.status(200).json({online: true});
})

app.listen(8080, () => {
    console.log(`Example app listening on port ${8080}`)
})