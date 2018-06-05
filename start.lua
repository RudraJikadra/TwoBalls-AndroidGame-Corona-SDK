local storyboard = require ("storyboard")
local physics = require "physics"
physics.start()
physics.setGravity( 0, 0)

local mydata = require( "mydata" )

local scene = storyboard.newScene()

mydata.score = 0




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
  
  
  --till here middle green tiles
  
    start = display.newImageRect("start_btn.png",300,65)
	start.anchorX = 0.5
	start.anchorY = 1
	start.x = display.contentCenterX 
	start.y = display.contentHeight - display.contentHeight/6
	screenGroup:insert(start)

	
	tri1 = display.newImageRect("tri1.png",100,80)
    tri1.anchorX = 1
	tri1.anchorY = 0.5
	tri1.x = display.contentWidth 
	tri1.y = display.contentCenterY    
	screenGroup:insert(tri1)
	
	
    tri4 = display.newImageRect("tri4.png",100,80)
	tri4.anchorX = 0
	tri4.anchorY = 0.5
	tri4.x = 0 
	tri4.y = display.contentCenterY    
	screenGroup:insert(tri4)

 
  ball1 = display.newImageRect("ball.png", 100, 100)
  ball1.anchorX = 1
  ball1.anchorY = 0.5
  ball1.x = display.contentCenterX + 125
  ball1.y = display.contentCenterY 
  screenGroup:insert(ball1)
  
  ball2 = display.newImageRect("ball.png", 100, 100)
  ball2.anchorX = 0
  ball2.anchorY = 0.5
  ball2.x = display.contentCenterX - 125
  ball2.y = display.contentCenterY
  screenGroup:insert(ball2)

	title = display.newImageRect("title.png",600,530)
	title.anchorX = 0.5
	title.anchorY = 0.5
	title.x = display.contentCenterX
	title.y = display.contentHeight/3
	screenGroup:insert(title)
	
  
end


function startGame(event)
     if event.phase == "ended" then
	-- audio.play( select_sound )
	 --audio.play(swoosh_sound)
	 storyboard.gotoScene("game")
     end
end

function scene:enterScene(event)
   
  	storyboard.removeScene("restart")
	start:addEventListener("touch", startGame)

end


function scene:exitScene(event)

	start:removeEventListener("touch", startGame)


end


function scene:destroyScene(event)

end









scene:addEventListener("createScene", scene)
scene:addEventListener("enterScene", scene)
scene:addEventListener("exitScene", scene)
scene:addEventListener("destroyScene", scene)

return scene

--x =800  y = 1200