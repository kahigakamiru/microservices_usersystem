const express = require('express')
const app = express()
const PORT = 8000

app.use(express.json());
app.use(express.urlencoded({extended:true}))

app.listen(PORT, () => {
    console.log('Server running', PORT);
})

app.post('/', (req,res) => {
    res.send(req.body)
    console.log(req.body)
})

app.get('/', (req, res) => {
    res.send("anything");
})
