const jwt = require('jsonwebtoken');
function verifyJWTToken(req,res){
    let  auth_header = req.haeders['authorization']
    let token =  auth_header && auth_header.split(' ')[1];
    jwt.verify(token,process.env.jwt_secret_key,(err,data)=>{
     if(err) return res.sendStatus(401);
     return true;
   })
}
module.exports=verifyJWTToken;