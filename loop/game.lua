_W, _H = 1280, 800
aspect.setGame(_W,_H)

function rewardPoints(points)
<<<<<<< HEAD
    game.data.unrewardedPoints = game.data.unrewardedPoints + (points or 0)
=======

>>>>>>> bd71ca24efc9f13cccef83ee4d3b7a1f59205e75
end

cards = require "loop.cards"
decks = require "loop.decks"

for id, dat in pairs(cards) do
    dat.name = dat.name or dat.specialName or id
end


do
    -- fix UI
    
    local fontName = "c"
    
    cfont = love.graphics.newFont(fontName)
    font20 = love.graphics.newFont(fontName,H(40))
    font13 = love.graphics.newFont(fontName,H(30))
    font8 = love.graphics.newFont(fontName,H(20))
    love.graphics.setFont(font20)
 
    local fontName = "cabinsketch.ttf" -- "c"
    
    scfont = love.graphics.newFont(fontName)
    sfont20 = love.graphics.newFont(fontName,H(40))
<<<<<<< HEAD
    sfont14 = love.graphics.newFont(fontName,H(35))
=======
>>>>>>> bd71ca24efc9f13cccef83ee4d3b7a1f59205e75
    sfont13 = love.graphics.newFont(fontName,H(30))
    sfont8 = love.graphics.newFont(fontName,H(20))
    
    gooi.dialogFont = sfont13

    gooi.setStyle({
        bgColor = {0,0,0},--colors.black,
        fgColor = colors.white,
        showBorder = true,
        borderColor = colors.white,
        font = font13,
        mode3d = false
    })
end
    
local WalletNetwork = require("loop.wallet") -- Load the WalletNetwork library
<<<<<<< HEAD
SOL = .001 -- Conversion rate

function claimPop()
    local self = toybox.room
    if game.data.unrewardedPoints > 0 then
        gooi.dialog({
            big = true,
            text = string.format([[
You have %s pt uncollected tokens! 
(That's %s SOL!!)
%s]], game.data.unrewardedPoints, game.data.unrewardedPoints*SOL, game.data.wallet and "Collect them now!" or "Connect your wallet to get started!"
            ),
            ok = function()
                if game.data.wallet then
                    gooi.closeDialog()
                    gooi.alert({text="connecting...",okText="..."})
                    game.timer:after(.1, function()
                    gooi.closeDialog()
                    local done, err = walletNetwork:updateScore(game.data.wallet,game.data.unrewardedPoints*SOL)
                    if done then
                        game.data.unrewardedPoints = 0
                        gooi.alert({text="succesful!"})
                        self:play_sound(getValue("cheering", "levelup_achievement", "levelup"))
                        walletBalance = getWalletBalance()
                    else
                        self:play_sound("buzz")
                        self.camera:shake(20, .3, 20)
                        gooi.alert({text="failed!\n"..tostring(er or "A problem occured!"),big=true})
                    end
                    game:saveData()
                    end)
                else
                
                
        game:set_room(Home)       
        self = toybox.room
        if not self.walletStuffAdded then
            self.walletStuffAdded = true
            for x, i in ipairs(self.walletStuff) do
                gooi.addComponent(i)
                i.alpha = 0
    
                self:tween(3.2, i, {alpha=1}, "in-bounce", x==1 and 
                function()
                    self.labelShake:shake(20,.3,20)
                end)
            end
        end
        
        gooi.dialog({
            big = true,
            text = 
[[Copy and paste your &colors.orange #Solana wallet ~ to the bar above, and click connect again to be able to gain tokens in your wallet.
  
&colors.orange THIS IS A &colors.skyblue @SONIC TESTNET ~ &colors.orange project for now.
If your wallet is not funded with Testnet tokens go and get some from the sonic faucet first!
]],
            cancelText = "close",
            okText = "fund wallet",
            ok = openSonicUrl
        })
        gooi.lblDialog.yOffset = 5
        
        
                    
                end
            end
        })
    end
end

function getWalletBalance()
    local balanceResponse, err = walletNetwork:checkWalletBalance(game.data.wallet)
    return balanceResponse and balanceResponse.balance or "???", err
end

walletNetwork = WalletNetwork.new()

-- Testing wallet functions
if nil then
    -- Create a new WalletNetwork instance
    local nm = "8hxms5T6NdCFbtnSqhHG9TRhvoJBnwMi7SQiseZUjCyJ"
    -- Wallet address to use
    local walletAddress = "G21aLewqiN4KWLf7ouC14WqM967JFCgNvgYLxTAQRHws"
    -- Treasury wallet below
=======

do
    -- Create a new WalletNetwork instance
    local walletNetwork = WalletNetwork.new()
    local nm = "8hxms5T6NdCFbtnSqhHG9TRhvoJBnwMi7SQiseZUjCyJ"
    -- Wallet address to use
    local walletAddress = "G21aLewqiN4KWLf7ouC14WqM967JFCgNvgYLxTAQRHws"--
>>>>>>> bd71ca24efc9f13cccef83ee4d3b7a1f59205e75
    local walletAddress = "HcJUYGPbpFthEwq5QwNer79LV51VgajiJpivTKpFJbJN"
    
    local walletAddress2 =nm-- "HcJUYGPbpFthEwq5QwNer79LV51VgajiJpivTKpFJbJN"

    -- Connect wallet
<<<<<<< HEAD
    local walletResponse, err = walletNetwork:connectWallet(walletAddress)
=======
    local walletResponse, err = walletNetwork:connectWallet(walletAddress2)
>>>>>>> bd71ca24efc9f13cccef83ee4d3b7a1f59205e75
    if walletResponse then
        print("Wallet connected:".. (walletResponse.message or ""))
    else
        print("Failed to connect wallet:".. err)
    end

    -- Update score
    local scoreResponse, err = walletNetwork:updateScore(walletAddress2,.2)
    if scoreResponse then
        print("Score updated:"..( scoreResponse.message or ""))
    else
        print("Failed to update score:"..err)
    end

    -- Check wallet balance
    local balanceResponse, err = walletNetwork:checkWalletBalance(walletAddress)
    if balanceResponse then
        print("Wallet balance:".. balanceResponse.balance)
    else
        print("Failed to check balance:"..err)
    end
    -- Check wallet balance
    local balanceResponse, err = walletNetwork:checkWalletBalance(walletAddress2)
    if balanceResponse then
        print("Wallet balance:".. balanceResponse.balance)
    else
        print("Failed to check balance:"..err)
    end
end


intro =  
<<<<<<< HEAD
[[WELCOME!! PLEASE READ BELOW!!!!
 
Pick actions and when you loop back in
time choose the same actions the same way.
 
Connect your wallet and
Earn SOL as you play!!
=======
[[Cards of Loop
---
Pick actions for scenarios.
Loop back in time.
Complete the old actions the same
way.
Or be erased by space and time.  
>>>>>>> bd71ca24efc9f13cccef83ee4d3b7a1f59205e75
]]

extra = 
[[Extra Details are new actions
in the middle of your old actions.
They are new but 
after a loop the same
act you picked for them must be 
picked again.]]

sfx_data = require "loop.sfx_data"


for name, card in pairs(cards) do
    card._name = name
end

local d = toybox.getData("loop")
 d.highest = d.highest or 0
 
Board = require "loop.board"

Home = toybox.Room("Home")

function Home:setup(k)
    local k = k or {}
    self.name = "home"
    gooi.newLabel = gooi.newb or gooi.newLabel
    gooi.components = {}
    self:activate_gooi()
<<<<<<< HEAD
    gooi.closeDialog()
=======
>>>>>>> bd71ca24efc9f13cccef83ee4d3b7a1f59205e75
    
    self.imgAlpha = 0
    self:tween(2, self, {imgAlpha=1}, "in-bounce")
    
    local gr = gooi.currentGroup
    self.playButton = gooi.newButton({
        x = 305,
        y = 481,
<<<<<<< HEAD
        w = 250,
=======
        w = 223,
>>>>>>> bd71ca24efc9f13cccef83ee4d3b7a1f59205e75
        h = 230,
        group = gr
    })
    local p = self.playButton
    p.draw = null
    p.drawSpecifics = null
    
    self.showChallengesButton = gooi.newButton({
        x = 1160,
        y = 660,
        h = 130,
        w = 100
    }):onRelease(function()
        if not self.showingDailyChallenges then
            self:showDailyChallenges()
        end
    end)
    
    self.showChallengesButton.draw = null
    self.showChallengesButton.drawSpecifics = null


    self.connectWalletButton = gooi.newButton({
        x = 720,
        y = 480,
        w = 223,
        h = 230,
        group = gr
    })
    self.connectWallet = self.connectWalletButton
    local b = self.connectWalletButton
    b.draw = null
    b.drawSpecifics = null
    
    local function openSonicUrl()
        love.system.openURL("https://faucet.sonic.game")
    end
    
<<<<<<< HEAD
    if game.data.wallet and not openedWallet then
        game.timer:after(2, function()
            gooi.alert({text="connecting to wallet.\nPlease Make sure network\nconnection is good.", okText="..."})
            gooi.lblDialog:setFont(font8)
            gooi.okButton:onRelease(function() end)
        
        
            game.timer:after(1, function()
                openedWallet = true
                gooi.closeDialog()
                walletBalance,err = getWalletBalance()
                
                local function showChallenges()
                    self:after(.2, function() self:showDailyChallenges() end)
                end
                
                if walletBalance == "???" then
                    self:play_sound("buzz")
                    gooi.alert({text="failed to get wallet ballance!\n \n"..(err~="" and err or "Please check internet\nconnection..."),ok=showChallenges})
                    gooi.lblDialog:setFont(font8)
                    gooi.panelDialog:shake(20,.3,20)
                else
                    self:play_sound("levelup")
                    gooi.alert({text="success!",ok=showChallenges})
                end
                
                
            
            end)
        end)
    end
    
    b:onRelease(function(n)
        if self.showingDailyChallenges or gooi.showingDialog then
            return
        end
        
        n:shake(20,.4,20)
        
        if self.shakeWallet then
            self.timer:cancel(self.shakeWallet)
            self.shakeWallet = nil
        end
        
        if self.walletStuffAdded and self.walletAddress:getText() ~= "" then
            if game.data.wallet and game.data.wallet == self.walletAddress:getText()  then
                gooi.alert({text=string.format("Wallet %s \nalready connected!","")})
                walletBalance = getWalletBalance()
                return
            end

            local function nn()
            gooi.closeDialog()
            local walletResponse, err = walletNetwork:connectWallet(self.walletAddress:getText()) log(walletResponse)
            if walletResponse and (walletResponse=="Wallet already connected." or walletResponse.walletAddress) then
                gooi.alert({text="success!"})
                self:play_sound("ding")
                game.data.wallet = self.walletAddress:getText()
                walletBalance = getWalletBalance()
                game:saveData()
            else
                gooi.alert({text="failed to connect wallet! \n"..tostring(err or "Invalid address \nor bad network connection?")})
                gooi.lblDialog:setFont(font8)
                
            end
            end
            gooi.alert({text="Connecting,\nPlease wait..."})
            self:after(.4, nn)
            return
        end
        
=======
    b:onRelease(function(n)
        n:shake(20,.4,20)
        
>>>>>>> bd71ca24efc9f13cccef83ee4d3b7a1f59205e75
        if not self.walletStuffAdded then
            self.walletStuffAdded = true
            for x, i in ipairs(self.walletStuff) do
                gooi.addComponent(i)
                i.alpha = 0
    
                self:tween(3.2, i, {alpha=1}, "in-bounce", x==1 and 
                function()
                    self.labelShake:shake(20,.3,20)
                end)
            end
        end
        
        gooi.dialog({
            big = true,
            text = 
<<<<<<< HEAD
[[Copy and paste your &colors.orange #Solana wallet ~ to the bar above, and @click connect  again ~ to be able to gain tokens in your wallet.
=======
[[Copy and paste your &colors.orange #Solana wallet ~ to the bar above to be able to gain tokens in your wallet.
>>>>>>> bd71ca24efc9f13cccef83ee4d3b7a1f59205e75
  
&colors.orange THIS IS A &colors.skyblue @SONIC TESTNET ~ &colors.orange project for now.
If your wallet is not funded with Testnet tokens go and get some from the sonic faucet first!
]],
<<<<<<< HEAD
            cancelText = "ok",
=======
            cancelText = "close",
>>>>>>> bd71ca24efc9f13cccef83ee4d3b7a1f59205e75
            okText = "fund wallet",
            ok = openSonicUrl
        })
        gooi.lblDialog.yOffset = 5
<<<<<<< HEAD
        gooi.lblDialog:setFont(sfont13)
    end)
    
    self.connectWalletButton.bgColor = {1,1,1,1}
    self.collectWalletX = 0
    self.playButtonX = 0
    
    p:onPress(function(n)
        if self.showingDailyChallenges or gooi.showingDialog then
            return
        end
        
=======
    end)
    
    self.collectWalletX = 0
    self.playButtonX = 0
    
    p:onRelease(function(n)
>>>>>>> bd71ca24efc9f13cccef83ee4d3b7a1f59205e75
        n:shake(20,.4,20)
        self:tween(.7, self, {playButtonX=-W()/2},"out-quad")
        self:tweenCoverAlpha(1.4, 1.1)
        self:after(1.55, function()
        game:set_room(Board)
        end)
    end)
    
    
    self.labelShake = gooi.newLabel({
        x = 720,
        y = 480,
        w = 223,
        h = 230,
        group = gr
    })
    local bs = self.labelShake
    bs.draw = null
    bs.drawSpecifics = null
    
    local w, h = sfont13:getWidth("AMOUNT IN WALLET: 0.000000001 SOL")+50 or W()*.5, sfont13:getHeight()+10--H()*.05*.7+30
    self.label = gooi.newLabel({
        text = "AMOUNT IN WALLET: 0.000000001 SOL",
        x = W()/2-w/2, y = H()/2-h/2+10,
        w = w, h = h
    })
    self.label.yOffset = 0
    self.label.opaque = true
    self.label:setFont(sfont13)
    
    
    --self.label.bgColor = {0,0,0,0}
    self.label.alpha = 0
    self.taps = {}
    
    local font = sfont13--font8
    local sfont = sfont8
    local ww = sfont:getWidth("paste")
    
    self.walletAddress = gooi.newText({
<<<<<<< HEAD
        text = game.data.wallet or "",--Connected: uhw7h2jd8djdnejei8wjejdd8wjeid8d9e9e",
=======
        text = "",--Connected: uhw7h2jd8djdnejei8wjejdd8wjeid8d9e9e",
>>>>>>> bd71ca24efc9f13cccef83ee4d3b7a1f59205e75
        w = W()*.7-ww,
        x = 10,
        y = 10,--H()-font:getHeight()*2.2,
        h = sfont13:getHeight()+10
    }):setFont(font)
<<<<<<< HEAD
    local wa = self.walletAddress
    
    wa:setText(game.data.wallet or "")
    wa:onText(function()
        self.connectWalletButton:shake(20,.3,20)
        if not self.shakeWallet then
        self.shakeWallet = self.timer:every(.9, function()
            self.connectWalletButton:shake(25,.4,25)
            local c = self.connectWalletButton
            self:tween(.1, c, {bgColor=colors.green}, "in-quad", function()
                self:tween(.3, c, {bgColor={1,1,1,1}}, "out-quad")
            end)
        end)
        end
    end)
    
=======
    
    local wa = self.walletAddress
>>>>>>> bd71ca24efc9f13cccef83ee4d3b7a1f59205e75
    if wa.left then wa:left() end
    wa.alpha = 0
    wa.yOffset = 0
    wa.opaque = true
    -- self:tween(2, self.walletAddress, {alpha=1}, "in-bounce")
    
<<<<<<< HEAD
    local pasteFunction = function(n)
        if not self.shakeWallet then
        self.shakeWallet = self.timer:every(.9, function()
            self.connectWalletButton:shake(25,.4,25)
            local c = self.connectWalletButton
            self:tween(.1, c, {bgColor=colors.green}, "in-quad", function()
                self:tween(.3, c, {bgColor={1,1,1,1}}, "out-quad")
            end)
        end)
        end
        
        self.connectWalletButton:shake(25,.4,20)
        n:shake(25,.4,25)
=======
    local pasteFunction = function()
>>>>>>> bd71ca24efc9f13cccef83ee4d3b7a1f59205e75
        self.walletAddress:setText(string.format("%s%s", self.walletAddress:getText() or "", love.system.getClipboardText() or ""))
    end
    
    
    sfont = font8
    local ww = sfont:getWidth("paste")
    
    self.pasteButton = gooi.newButton({
        text = "paste",--Connected: uhw7h2jd8djdnejei8wjejdd8wjeid8d9e9e",
        w = ww,
        x = wa.x+wa.w+3,
        y = 10,--H()-font:getHeight()*2.2,
        h = sfont13:getHeight()+10
    }):setFont(sfont):onRelease(pasteFunction)
    
    local pb = self.pasteButton

    pb.alpha = 0
    pb.yOffset = 10
    pb.opaque = true
    
    self.walletStuff = {self.walletAddress, self.pasteButton, self.label}
    for x, i in ipairs(self.walletStuff) do
        gooi.removeComponent(i)
        i.alpha = 0
    end
    
<<<<<<< HEAD
    if game.data.wallet then
        if not self.walletStuffAdded then
            self.walletStuffAdded = true
            for x, i in ipairs(self.walletStuff) do
                gooi.addComponent(i)
                i.alpha = 0
    
                self:tween(3.2, i, {alpha=1}, "in-bounce", x==1 and 
                function()
                    self.labelShake:shake(20,.3,20)
                end)
            end
        end
    end
    
=======
>>>>>>> bd71ca24efc9f13cccef83ee4d3b7a1f59205e75
    -- self:tween(2, self.pasteButton, {alpha=1}, "in-bounce")
    
    
    local hh = H()*.77
    local ww = W()*.4
    self.dailyChallenges = gooi.newPanel({
        x = W()/2-ww/2, y = H()/2-hh/2,
        w = ww, h = hh,
        layout = "grid 5x1",
        paddingY = 20
    })
    local dc = self.dailyChallenges

    dc:add(gooi.newLabel({text=""}))
    dc:add(gooi.newLabel({text="Ratatwang panda 10 times"}):left())
    dc:add(gooi.newLabel({text="Ratatwang panda 10 times"}):left())
    dc:add(gooi.newLabel({text="Ratatwang panda 10 times"}):left())
    dc:add(gooi.newButton({text="claim"}):onRelease(function(n)
        
        if true then--n.text == "CLAIM" then
<<<<<<< HEAD
            local claimed
=======
>>>>>>> bd71ca24efc9f13cccef83ee4d3b7a1f59205e75
            for x = 1, 3 do
                local d = dc.sons[x+1].ref
                local c = d.challenge
                
                
                if c.isCompleted and not c.claimed then
                    dc:shake(20,.3,20)
                    self.camera:shake(20,.2,20)
                    c.claimed = true
                    rewardPoints(c.reward)
                    game:saveData()
<<<<<<< HEAD
                    claimed = true
                    self:after(.3*x, function() self:play_sound("ding") end)
                    
                end
            end
            if claimed then
                self:play_sound("zip")
                return
            end
=======
                    
                    self:after(.8, function() self:closeDailyChallenges() end)
                    return
                end
            end
>>>>>>> bd71ca24efc9f13cccef83ee4d3b7a1f59205e75
        end
        
        self:closeDailyChallenges()
    end))
    
    
    for x = 2,4 do
        local d = dc.sons[x].ref
        d.xOffset = 70
        d.yOffset = 10
        d.w = d.w-70
    end
    
    for x, i in ipairs(dc.sons) do
        i.ref.opaque = false
    end
    
    dc.opaque = false
    
    self:populateChallenges()
    self.dailyChallenges.alpha = 0
<<<<<<< HEAD
    
    if openedWallet or not game.data.wallet then
        self:after(1.4, function()
            self:showDailyChallenges()
        end)
    
    
    -- Not needed
    --[[elseif doneChallenge then
        doneChallenge = false
        self:showDailyChallenges()]]
    end
=======
    -- self:showDailyChallenges()
>>>>>>> bd71ca24efc9f13cccef83ee4d3b7a1f59205e75
   
   self:closeDailyChallenges()
   
   self.comps = gooi.components
<<<<<<< HEAD
   
   --claimPop()
=======
>>>>>>> bd71ca24efc9f13cccef83ee4d3b7a1f59205e75
end

function Home:onSwitch()
    if not self.doneBefore then
        self.doneBefore = true
        return
    end
    
    self:tweenCoverAlpha(.4,0)
    
    gooi.components = {}
    gooi.currentGroup = self.connectWalletButton.group
    for x, i in pairs(self.comps) do
        gooi.addComponent(i)
    end
end

function Home:populateChallenges()
    local challenges = getDailyChallenges(3)
    game.challenges = challenges
    game:saveData()
    
    for x = 2, 4 do
        local d = self.dailyChallenges.sons[x].ref
        local c = challenges[x-1]
        d.challenge = c
        d:setText(getChallengeInfo(c))
    end
end

function Home:showDailyChallenges()
    self.showingDailyChallenges = true
    gooi.addComponent(self.dailyChallenges)
    self.dailyChallenges.alpha = 0
    self.showingDaily = self:tween(1, self.dailyChallenges, {alpha=1}, "in-quad")
     
    for x = 2, 4 do
        local d = self.dailyChallenges.sons[x].ref
        local c = d.challenge
        d:setText(getChallengeInfo(c))
    end
end

<<<<<<< HEAD
function Home:keypressed(key)
    if key == "escape" then
      gooi.dialog({
        text = "Exit the loop?",
        big=true,
        group=gooi.currentGroup,
        ok = function()
            love.event.quit()
        end
      })
    end
end

=======
>>>>>>> bd71ca24efc9f13cccef83ee4d3b7a1f59205e75
function Home:closeDailyChallenges()
    self.showingDailyChallenges = falss
    if self.showingDaily then
        self.timer:cancel(self.showingDaily)
    end
    self.showingDaily = nil
    self.dailyChallenges.alpha = 0
    gooi.removeComponent(self.dailyChallenges)
end

function Home:mousereleased(x, y)
    self.taps[#self.taps+1] = {x=x, y=y}
    
    if #self.taps >= 4 and nil then
        local t = self.taps
        local pos1 = t[1]
        local size1 = {w=t[2].x-pos1.x, h=t[2].y-pos1.y}
        local pos2 = t[3]
        local size2 = {w=t[4].x-pos2.x, h=t[4].y-pos2.y}
        local poses = {
            play = {pos1, size1},
            wallet = {pos2, size2}
        }
        
        error("buttons : "..inspect(poses))
        
    end
end

function Home:draw()

    do
        local c = self.walletAddress
        
        local key = c.keyToRepeat
        c:updateCursor(key, 1/20)
    end
    
    local r,g,b,a = set_color(1,1,1,self.imgAlpha)
    lg.draw(game:getAsset("homescreen.png"))
    lg.draw(game:getAsset("menu/playGame.png"), self.playButton.shake_x, self.playButtonY)
<<<<<<< HEAD
    
    set_color(self.connectWallet.bgColor)
=======
>>>>>>> bd71ca24efc9f13cccef83ee4d3b7a1f59205e75
    lg.draw(game:getAsset("menu/connectWallet.png"), self.connectWallet.shake_x, self.connectWalletY)
    
    set_color(1,1,1,(self.imgAlpha)*(1-self.dailyChallenges.alpha))
    lg.draw(game:getAsset("menu/tasks.png"))
    set_color(r,g,b,a)
    
    
    
    self.label.angle = self.labelShake.shake_x
    self.walletAddress.angle = - self.labelShake.shake_x
    --[[gooi.drawComponent(self.label)
    gooi.drawComponent(self.walletAddress)
    gooi.drawComponent(self.pasteButton)]]
    
    local sfont = font8
    local ww = sfont:getWidth(" paste ")
    
<<<<<<< HEAD
    local text = not self.walletStuffAdded and "" or string.format("Amount in wallet: %s SOL", walletBalance or "???")
=======
    local text = not self.walletStuffAdded and "" or "Amount in wallet: ?      ??SOL"
>>>>>>> bd71ca24efc9f13cccef83ee4d3b7a1f59205e75
    local w, h = sfont13:getWidth(text)+50 or W()*.5, sfont13:getHeight()+10--H()*.05*.7+30
    self.label:setText(text)
    self.label.w = w; self.label.h = h
    self.label.x = W()/2-w/2; self.label.y = H()/2-h/2+10
    self.label.x = W()-w-10; self.label.y = 10
    
    self.walletAddress.w = W()-self.label.w-20-20-ww-20
    local wa = self.walletAddress
    local pb = self.pasteButton
    gooi.draw()
    pb.w = ww
    pb.x = wa.x+wa.w+10
    pb.y = 10--H()-font:getHeight()*2.2
    pb.h = sfont13:getHeight()+10
    
    if self.showingDailyChallenges then
        local r,g,b,a = set_color(0,0,0,self.dailyChallenges.alpha*.65)
        draw_rect("fill", -W(), -H(), W()*4, H()*4)
        set_color(1,1,1,self.dailyChallenges.alpha)
        
        lg.draw(game:getAsset("menu/dailyChallenges.png"))
        
        gooi.drawComponent(self.dailyChallenges, true)
        
        self.claimText = "CANCEL"
        for x = 1, 3 do
            local dat = game.challenges[x]
            assert(game.challenges[1]==game.data.challenges[1])
            local n = self.dailyChallenges.sons[x+1].ref
            local text = getChallengeInfo(dat)
            
            if text ~= n.text then
                n:setText(text)
            end
            
            if dat.isCompleted then
                if not dat.claimed then
                    self.claimText = "CLAIM"
                end
                lg.draw(game:getAsset(string.format("menu/tick%s.png",x)))
            end
            
            
        end
        self.dailyChallenges.sons[5].ref:setText(self.claimText)
        
        set_color(r,g,b,a)
        
    end
    
<<<<<<< HEAD
    if gooi.showingDialog and gooi.panelDialog.big then
        gooi.drawComponent(gooi.panelDialog, true)
        love.graphics.draw(game:getAsset("panel.png"))
        gooi.panelDialog.opaque = nil
        --gooi.drawComponent(gooi.panelDialog, true)
=======
    if gooi.showingDialog then
        gooi.drawComponent(gooi.panelDialog, true)
        love.graphics.draw(game:getAsset("panel.png"))
>>>>>>> bd71ca24efc9f13cccef83ee4d3b7a1f59205e75
    end
end


game = toybox.Game("Game")
--media.playMusic("m.ogg")

function game:saveData()
    toybox.saveData("loop")
end

function game:setup()
    self:setSource("loop/assets/%s")
    
    game.data = toybox.getData("loop")
    game.data.unrewardedPoints = game.data.unrewardedPoints or 0
    game.data.convertedPoints = game.data.convertedPoints or 0
<<<<<<< HEAD
    game.data.lastDay = game.data.lastDay or os.date("%A, %B, %d, %Y")
    
    
=======
    game.data.lastDay = game.data.lastDay or 0
>>>>>>> bd71ca24efc9f13cccef83ee4d3b7a1f59205e75

--media.setSource("loop/assets")
media.load(sfx_data)

for x, i in pairs(decks) do 
if i.presound then 
if type(i.presound)~="table" then
i.presound={i.presound}
end
for x,xx in pairs(i.presound) do
assert(media.sfx[xx],xx)
media.sfx[xx]:play()
end
end
end
media.sfx.laughter:play()

media.playMusic("GOAT.ogg")

    self.scratches1Alpha = 0
    self.scratches2Alpha = 0
    self.scratches3Alpha = 0
    
    self.timer:tween(math.random(2,4)*60*2, self, {scratches1Alpha = 1}, "linear")
    self.timer:tween(math.random(3,7)*60*2, self, {scratches2Alpha = 1}, "linear")
    
    if math.random() > .8 then
        local function remove()
            self.scratches3Alpha = 0
        end
        
        self.timer:tween(math.random(3,7)*10, self, {scratches3Alpha = 1}, "in-quad", remove)
    end


    if false then
    local room = Board:new({})
    
    
    self:add_room(room,true)
    
    else
    local fr = Home:new()
    self:add_room(Home)
    end

end

<<<<<<< HEAD
function game:draw()
    local s = lg.getFont()
    lg.setFont(sfont14)
    local txt = string.format("HIGHSCORE: %s pt", game.data.highest or "??")
    lg.print(txt, 5, H()-sfont14:getHeight()-5)
    lg.setFont(s)
end

=======
>>>>>>> bd71ca24efc9f13cccef83ee4d3b7a1f59205e75




dailyData = {}

function getDailyChallenges(num)

<<<<<<< HEAD
    if game.data.lastDay ~= os.date("%A, %B, %d, %Y") then
        game.data.challenges = nil
        game.data.dailyData = nil
        game:saveData()
    end
    
=======
>>>>>>> bd71ca24efc9f13cccef83ee4d3b7a1f59205e75
    if game.data.challenges then
        dailyData = game.data.dailyData
        for x, i in pairs(game.data.challenges) do
            dailyData[i.id] = i
        end
        return game.data.challenges
    end
    
    dailyData = {}
    local challenges = {}
    
    for x = 1, num or 3 do
        local challenge = getDailyChallenge()
        challenges[#challenges+1] = challenge
    end
    
    game.data.challenges = challenges
    game.data.dailyData = dailyData
    
    return challenges
end

function checkDailyChallenge(deck, card)
    local dat = dailyData[card.name]--deck.action or ""] 
    log("!!!!!!!"..card.name) log(dat) log(dat and dat[card.name])
    
    if dat and not dat.isCompleted and dat[card.name] then
        dat.done = dat.done + 1
        if dat.done >= dat.amount then
<<<<<<< HEAD
            doneChallenge = true
=======
>>>>>>> bd71ca24efc9f13cccef83ee4d3b7a1f59205e75
            dat.isCompleted = true
        end
        log("\n??????"..card.name) log(dat) log(dat and dat[card.name])
        game:saveData()
    end
end

function getChallengeInfo(self)
    local str = "%s%s %s %s/%s times (reward: %spt)"
    str = string.format(str, self.claimed and "&colors.green " or "", self.verb, self.obj, self.done, self.amount, self.claimed and "claimed" or self.reward)
    
    return str
end

function getDailyChallenge()
    local dat = {
        isCompleted = false,
        done = 0,
        --getInfo = dailyGetInfo
    }
    
    local actionDeck
    while true do
        actionDeck = getValue(decks)
        if not dailyData[actionDeck.action] then
            break
        end
    end
    
    local action = actionDeck.action
    dailyData[action] = dat
    
    local allCards = getAllCardsForDeck(actionDeck)
    local card
    
    while not card or dailyData[action][card.name] do
        card = getValue(allCards)
    end
    
    dailyData[action][card.name] = true
    dailyData[card.name] =  dat
    
    local verb = action
    local obj  = card.name
    local amount = math.random(100)<=10 and math.random(3,8) or math.random(2,4)
    local reward = math.random(20,40)*amount
    
    if card.specialName then
        obj = card.specialName
        verb = ""
    end
    
    dat.id = card.name
    
    dat.verb = verb
    dat.obj = obj
    dat.amount = amount
    dat.reward = reward
    
    return dat
end


return game