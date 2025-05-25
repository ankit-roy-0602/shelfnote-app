const express = require("express")
const app = express()
const PORT = 3000

app.get("/", (req, res) => {
  return res.json({
    message: "Welcome to Shelfnote API",
    version: "1.0.0",
  })
}
)
app.listen(PORT, () => {
  console.log(`Server is running at http://localhost:${PORT}`)
})
