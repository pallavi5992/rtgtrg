const express=require("express");
const authRoute=require("./auth.route");
const user=require("./user.route")
const role=require("./role.route")
const captchaRoute=require("./captcha.route")
const router=express.Router();

const defaultRoutes=[
    {
        path:"/auth",
        route:authRoute
    },
    {
        path:"/user",
        route:user
    },
    {
        path:"/role",
        route:role
    },
    {
        path:"/captcha",
        route:captchaRoute
    }
];

defaultRoutes.forEach((route)=>{
    router.use(route.path,route.route);
});

module.exports=router