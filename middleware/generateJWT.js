  let jwt = require("jsonwebtoken");

function generateJwtToken(data){
      return jwt.sign({data},process.env.jwt_secret_key);
}
module.exports = generateJwtToken;