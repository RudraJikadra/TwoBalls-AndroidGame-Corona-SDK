-- requires 


local storyboard = require ("storyboard")
local scene = storyboard.newScene()
local mydata = require( "mydata" )
local score = require( "score" )

-- background
--local select_sound = audio.loadSound("select.wav")


local RevMob = require("revmob")
local banner = RevMob.createBanner({x = display.contentWidth / 2, y = display.contentHeight - 50, width = display.contentWidth, height = 100 })
 
 
local fullscreen = RevMob.createFullscreen()





function restartGame(event)
     if event.phase == "ended" then
		saveScore()
		storyboard.gotoScene("start")
		fullscreen:hide()
     end
end

function showStart()
	startTransition = transition.to(restart,{time=200, alpha=1})
	scoreTextTransition = transition.to(scoreText,{time=600, alpha=1})
	scoreTextTransition = transition.to(bestText,{time=600, alpha=1})
end




function showScore()
 
	scoreTransition = transition.to(scoreBg,{time=400, y=display.contentCenterY,onComplete=showStart})
	
	local prevScore = score.load()	
		if prevScore <= mydata.score then
			
			new.alpha = 1
			end
	
	
	
end




function showGameOver()
	fadeTransition = transition.to(gameOver,{time=600, alpha=1, onComplete=showScore})
end



function loadScore()
	local prevScore = score.load()	
	
	if prevScore ~= nil then
		if prevScore <= mydata.score then
			score.set(mydata.score)
			
		else 
			score.set(prevScore)	
		end
	
	else 
		score.set(mydata.score)	
		score.save()
		
	end
end

function saveScore()
	score.save()
end

function scene:createScene(event)

	local screenGroup = self.view

		
  red1 = display.newImageRect("red0.png", 25, 480)
  red1.anchorX = 0.5
  red1.anchorY = 0
  red1.x = 0
  red1.y = 0
 -- physics.addBody(red1, "static", {density=1, bounce=0.1, friction=.2})
  screenGroup:insert(red1)
  
  red2 = display.newImageRect("red0.png", 25, 480)
  red2.anchorX = 0.5
  red2.anchorY = 0
  red2.x = 0
  red2.y = 480
 -- physics.addBody(red2, "static", {density=1, bounce=0.1, friction=.2})
  screenGroup:insert(red2)
  
  red3 = display.newImageRect("red0.png", 25, 480)
  red3.anchorX = 0.5
  red3.anchorY = 0
  red3.x = 0
  red3.y = 960
--  physics.addBody(red3, "static", {density=1, bounce=0.1, friction=.2})
  screenGroup:insert(red3)
  
  red4 = display.newImageRect("red0.png", 25, 480)
  red4.anchorX = 0.5
  red4.anchorY = 1
  red4.x = 0
  red4.y = 1440
  --physics.addBody(red4, "static", {density=1, bounce=0.1, friction=.2})
  screenGroup:insert(red4)
  
  red5 = display.newImageRect("red0.png", 25, 480)
  red5.anchorX = 0.5
  red5.anchorY = 1
  red5.x = 0
  red5.y = display.contentHeight
 -- physics.addBody(red5, "static", {density=1, bounce=0.1, friction=.2})
  screenGroup:insert(red5)
  
  --till here left tiles
  
  red6 = display.newImageRect("red0.png", 12.5, 480)
  red6.anchorX = 1
  red6.anchorY = 0
  red6.x = display.contentCenterX - 12.5
  red6.y = 0
 -- physics.addBody(red6, "static", {density=1, bounce=0.1, friction=.2})
  screenGroup:insert(red6)
  
  red7 = display.newImageRect("red0.png", 12.5, 480)
  red7.anchorX = 1
  red7.anchorY = 0
  red7.x = display.contentCenterX - 12.5
  red7.y = 480
  --physics.addBody(red7, "static", {density=1, bounce=0.1, friction=.2})
  screenGroup:insert(red7)
  
  red8 = display.newImageRect("red0.png", 12.5, 480)
  red8.anchorX = 1
  red8.anchorY = 0
  red8.x = display.contentCenterX - 12.5
  red8.y = 960
 -- physics.addBody(red8, "static", {density=1, bounce=0.1, friction=.2})
  screenGroup:insert(red8)
  
  red9 = display.newImageRect("red0.png", 12.5, 480)
  red9.anchorX = 1
  red9.anchorY = 1
  red9.x = display.contentCenterX - 12.5
  red9.y = 1440
 -- physics.addBody(red9, "static", {density=1, bounce=0.1, friction=.2})
  screenGroup:insert(red9)
  
  red10 = display.newImageRect("red0.png", 12.5, 480)
  red10.anchorX = 1
  red10.anchorY = 1
  red10.x = display.contentCenterX - 12.5
  red10.y = display.contentHeight
 -- physics.addBody(red10, "static", {density=1, bounce=0.1, friction=.2})
  screenGroup:insert(red10)
  
  --till here middle red tiles
  
  
  green1 = display.newImageRect("green0.png", 25, 480)
  green1.anchorX = 0.5
  green1.anchorY = 0
  green1.x = display.contentWidth
  green1.y = 0
 -- physics.addBody(green1, "static", {density=1, bounce=0.1, friction=.2})
  screenGroup:insert(green1)
  
  green2 = display.newImageRect("green0.png", 25, 480)
  green2.anchorX = 0.5
  green2.anchorY = 0
  green2.x = display.contentWidth
  green2.y = 480
 -- physics.addBody(green2, "static", {density=1, bounce=0.1, friction=.2})
  screenGroup:insert(green2)
  
  green3 = display.newImageRect("green0.png", 25, 480)
  green3.anchorX = 0.5
  green3.anchorY = 0
  green3.x = display.contentWidth
  green3.y = 960
 -- physics.addBody(green3, "static", {density=1, bounce=0.1, friction=.2})
  screenGroup:insert(green3)
  
  green4 = display.newImageRect("green0.png", 25, 480)
  green4.anchorX = 0.5
  green4.anchorY = 1
  green4.x = display.contentWidth
  green4.y = 1440
--  physics.addBody(green4, "static", {density=1, bounce=0.1, friction=.2})
  screenGroup:insert(green4)
  
  green5 = display.newImageRect("green0.png", 25, 480)
  green5.anchorX = 0.5
  green5.anchorY = 1
  green5.x = display.contentWidth
  green5.y = display.contentHeight
  --physics.addBody(green5, "static", {density=1, bounce=0.1, friction=.2})
  screenGroup:insert(green5)
  
 -- till here right tiles
 
  green6 = display.newImageRect("green0.png", 12.5, 480)
  green6.anchorX = 0
  green6.anchorY = 0
  green6.x = display.contentCenterX + 12.5
  green6.y = 0
--  physics.addBody(green6, "static", {density=1, bounce=0.1, friction=.2})
  screenGroup:insert(green6)
  
  green7 = display.newImageRect("green0.png", 12.5, 480)
  green7.anchorX = 0
  green7.anchorY = 0
  green7.x = display.contentCenterX + 12.5
  green7.y = 480
 -- physics.addBody(green7, "static", {density=1, bounce=0.1, friction=.2})
  screenGroup:insert(green7)
  
  green8 = display.newImageRect("green0.png", 12.5, 480)
  green8.anchorX = 0
  green8.anchorY = 0
  green8.x = display.contentCenterX + 12.5
  green8.y = 960
--  physics.addBody(green8, "static", {density=1, bounce=0.1, friction=.2})
  screenGroup:insert(green8)
  
  green9 = display.newImageRect("green0.png", 12.5, 480)
  green9.anchorX = 0
  green9.anchorY = 1
  green9.x = display.contentCenterX + 12.5
  green9.y = 1440
--  physics.addBody(green9, "static", {density=1, bounce=0.1, friction=.2})
  screenGroup:insert(green9)
  
  green10 = display.newImageRect("green0.png", 12.5, 480)
  green10.anchorX = 0
  green10.anchorY = 1
  green10.x = display.contentCenterX + 12.5
  green10.y = display.contentHeight
 -- physics.addBody(green10, "static", {density=1, bounce=0.1, friction=.2})
  screenGroup:insert(green10)
  
  
	
	gameOver = display.newImageRect("gameOver.png",500,120)
	gameOver.anchorX = 0.5
	gameOver.anchorY = 0.5
	gameOver.x = display.contentCenterX 
	gameOver.y = display.contentHeight/4
	gameOver.alpha = 0
	screenGroup:insert(gameOver)
	
	--[[
	medal0 = display.newImageRect("medal0.png",145,164)
	medal0.anchorX = 0.5
	medal0.anchorY = 0.5
	medal0.x = display.contentCenterX - 94
	medal0.y = display.contentHeight + 500
	medal0.alpha = 1
	screenGroup:insert(medal0)
	]]--
	
	
	
	scoreBg = display.newImageRect("menuBg.png",480,393)
	scoreBg.anchorX = 0.5
	scoreBg.anchorY = 0.5
    scoreBg.x = display.contentCenterX
    scoreBg.y = display.contentHeight + 500
    screenGroup:insert(scoreBg)
	--[[
    medal = display.newImageRect("medal.png",145,164)
	medal.anchorX = 0.5
	medal.anchorY = 0.5
	medal.x = display.contentCenterX - 94
	medal.y = display.contentHeight + 500
	medal.alpha = 1
	screenGroup:insert(medal)
		]]--
	new = display.newImageRect("new.png", 100, 80)
	new.anchorX = 0.5
	new.anchorY = 0.5
	new.x = display.contentCenterX - 94
	new.y = display.contentCenterY - 80
	new.alpha = 0
	screenGroup:insert(new)

	

	restart = display.newImageRect("start_btn.png",300,65)
	restart.anchorX = 0.5
	restart.anchorY = 1
	restart.x = display.contentCenterX 
	restart.y = display.contentHeight - display.contentHeight/6
	restart.alpha = 0
	screenGroup:insert(restart)
	
	
	scoreText = display.newText(mydata.score,display.contentCenterX + 110,
	display.contentCenterY - 60, native.systemFont, 50)
	scoreText:setFillColor(0,0,0)
	scoreText.alpha = 0 
	screenGroup:insert(scoreText)
		
	bestText = score.init({
	fontSize = 50,
	font = "Helvetica",
	x = display.contentCenterX + 70,
	y = display.contentCenterY + 85,
	maxDigits = 7,
	leadingZeros = false,
	filename = "scorefile.txt",
	})
	bestScore = score.get()
	bestText.text = bestScore
	bestText.alpha = 0
	bestText:setFillColor(0,0,0)
	screenGroup:insert(bestText)
	
end


function scene:enterScene(event)
      banner:show()
	 fullscreen:show()

	storyboard.removeScene("game")
	restart:addEventListener("touch", restartGame)
	showGameOver()
	loadScore()
end

function scene:exitScene(event)
	restart:removeEventListener("touch", restartGame)
	transition.cancel(fadeTransition)
	transition.cancel(scoreTransition)
	transition.cancel(scoreTextTransition)
	transition.cancel(startTransition)
end

function scene:destroyScene(event)

end



local AMAZON_APK = false
local REVMOB_IDS = {
 [REVMOB_ID_IOS] = '5597ae8831e41e0b1b4c2647',
 [REVMOB_ID_ANDROID] = '5597ae8831e41e0b1b4c2647',
 
}

if AMAZON_APK then REVMOB_IDS[REVMOB_ID_ANDROID] = '5597ae8831e41e0b1b4c2647' end

   RevMob.startSession(REVMOB_IDS)
  -- RevMob.setTestingMode(RevMob.TEST_WITH_ADS)
 --  RevMob.showFullscreen()







scene:addEventListener("createScene", scene)
scene:addEventListener("enterScene", scene)
scene:addEventListener("exitScene", scene)
scene:addEventListener("destroyScene", scene)

return scene













