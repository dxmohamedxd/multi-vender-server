const express = require("express");
var cors = require('express-cors')
const app = express();
require("dotenv").config();
const jwt = require("jsonwebtoken");
const connection = require("./config/connect");
const fileEasyUpload = require("express-easy-fileuploader");

const UserRouter = require("./router/user")
const VenderRouter = require("./router/vender")
const ProductRouter = require("./router/product")
const CategoryRouter = require("./router/category");
const OrderRouter = require("./router/order")
const DetailsRouter = require("./router/order_details");
const session = require('express-session');
const port = process.env | 7000;

const fs = require("fs")

app.use(cors({
    Origin:"*",
}));
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(express.static("public"))
app.use(fileEasyUpload({app}))
app.use("/",UserRouter)
app.use("/",VenderRouter)
app.use('/',ProductRouter)
app.use('/',CategoryRouter);
app.use('/',OrderRouter)
app.use('/',DetailsRouter)
app.listen(port,()=>{
console.log(`server running on ${port}`);
connection.connect
console.log(" db connected")
})

