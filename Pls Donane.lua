--[[ Anti-AFK and Auto-Chat Script (Highly Obfuscated) ]]--

local function A1B()local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z="Please ","donate ","robux ","to me ","i am ","afk ","if you ","donate ","to me ","i would ","really ","thank ","you!","Interval ","set ","to ","30 ","seconds ","Service ","found.","Connected ","event ","function.","Service ","chat.","Send ","message.","",0 for i=1,28 do z=z..(({a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y})[i]or"")end return z end
local mT,aT,Z,yT,qT,jT,sT,zT,lT,oT,bT,cT=0.1,30,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil
repeat
    Z,jT=game:GetService("Players"),game:GetService("VirtualUser")
    sT=zT or Z.LocalPlayer
until Z and jT and sT

sT.Idled:Connect(function()jT:CaptureController()jT:ClickButton2(Vector2.new(mT,mT))end)
local function wF(service)
    local srv
    repeat
        srv=game:GetService(service)
        wait(mT)
    until srv
    return srv
end
qT=wF("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents")
lT=qT and qT:FindFirstChild("SayMessageRequest")

while true do
    if lT then
        lT:FireServer(A1B(),"All")
    end
    wait(aT)
end
