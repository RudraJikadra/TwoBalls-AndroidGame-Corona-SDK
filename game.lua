
local storyboard = require ("storyboard")

local physics = require "physics"
physics.start()
physics.setGravity( 0, 0)
--physics.setDrawMode( "hybrid" )


local mydata = require( "mydata" )

local scene = storyboard.newScene()
	
mydata.score = 0

system.activate( "multitouch" )


function scene:createScene(event)

   local screenGroup = self.view

  
  
  elements = display.newGroup()
  elements.anchorChildren = true
  elements.anchorX = 0
  elements.anchorY = 0 --1
  elements.x = 0
  elements.y = 0
  screenGroup:insert(elements)

  
--  screenGroup:insert(bg0)

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
 -- physics.addBody(red3, "static", {density=1, bounce=0.1, friction=.2})
  screenGroup:insert(red3)
  
  red4 = display.newImageRect("red0.png", 25, 480)
  red4.anchorX = 0.5
  red4.anchorY = 1
  red4.x = 0
  red4.y = 1440
 -- physics.addBody(red4, "static", {density=1, bounce=0.1, friction=.2})
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
-- physics.addBody(red7, "static", {density=1, bounce=0.1, friction=.2})
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
--  physics.addBody(green1, "static", {density=1, bounce=0.1, friction=.2})
  screenGroup:insert(green1)
  
  green2 = display.newImageRect("green0.png", 25, 480)
  green2.anchorX = 0.5
  green2.anchorY = 0
  green2.x = display.contentWidth
  green2.y = 480
--  physics.addBody(green2, "static", {density=1, bounce=0.1, friction=.2})
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
 -- physics.addBody(green4, "static", {density=1, bounce=0.1, friction=.2})
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
 -- physics.addBody(green6, "static", {density=1, bounce=0.1, friction=.2})
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
 -- physics.addBody(green8, "static", {density=1, bounce=0.1, friction=.2})
  screenGroup:insert(green8)
  
  green9 = display.newImageRect("green0.png", 12.5, 480)
  green9.anchorX = 0
  green9.anchorY = 1
  green9.x = display.contentCenterX + 12.5
  green9.y = 1440
 -- physics.addBody(green9, "static", {density=1, bounce=0.1, friction=.2})
  screenGroup:insert(green9)
  
  green10 = display.newImageRect("green0.png", 12.5, 480)
  green10.anchorX = 0
  green10.anchorY = 1
  green10.x = display.contentCenterX + 12.5
  green10.y = display.contentHeight
--  physics.addBody(green10, "static", {density=1, bounce=0.1, friction=.2})
  screenGroup:insert(green10)
  
  

  
  ball1 = display.newImageRect("ball.png", 100, 100)
  ball1.anchorX = 1
  ball1.anchorY = 0.5
  ball1.x = display.contentWidth - 12.5
  ball1.y = display.contentCenterY + 200
  physics.addBody(ball1, "dynamic", {density=.1, bounce=0.1, friction=.2, radius=50})
  screenGroup:insert(ball1)
  
  ball2 = display.newImageRect("ball.png", 100, 100)
  ball2.anchorX = 0
  ball2.anchorY = 0.5
  ball2.x = 12.5
  ball2.y = display.contentCenterY + 200
  physics.addBody(ball2, "dynamic", {density=.1, bounce=0.1, friction=.2, radius=50})
  screenGroup:insert(ball2)


    scoreText = display.newText(mydata.score,display.contentWidth - 100,
	100, "pixelmix", 100)
	scoreText:setFillColor(1,1,1)
	scoreText.alpha = 0
	screenGroup:insert(scoreText)
	
    instructions = display.newImageRect("instructions.png",800,1200)
	instructions.anchorX = 0.5
	instructions.anchorY = 0.5
	instructions.x = display.contentCenterX
	instructions.y = display.contentCenterY
	screenGroup:insert(instructions)

		
    instructions2 = display.newImageRect("getready.png",700,219)
	instructions2.anchorX = 0.5
	instructions2.anchorY = 0.5
	instructions2.x = display.contentCenterX
	instructions2.y = display.contentHeight/4
	screenGroup:insert(instructions2)
	
	right = display.newImageRect("rt.png", 900, 2700)
    right.anchorX = 0
	right.anchorY = 0.5
	right.x = display.contentCenterX
	right.y = display.contentCenterY
	screenGroup:insert(right)



	left = display.newImageRect("lt.png", 900, 2700)
	left.anchorX = 1
	left.anchorY = 0.5
	left.x = display.contentCenterX
	left.y = display.contentCenterY
	screenGroup:insert(left)


  
  
end





function onCollision( event )
 
 
	if ( event.phase == "began" ) then
	  
   storyboard.gotoScene( "restart" )	

	end
	
	
end



function rtTouch(event)
  if event.phase == "began" then
 --print(event.x)
		    if ( ball1.x >= display.contentWidth - 120 ) then
            transition.to(ball1, {time=100, x=display.contentCenterX + 125})
	
	        end	
			if ( ball1.x <= display.contentCenterX + 140 ) then
			transition.to(ball1, {time=100, x=display.contentWidth - 12.5})
			end
	
   end
end


function ltTouch(event)


  if event.phase == "began" then
 --print(event.x)
	     	if ( ball2.x <= display.contentCenterX - 200 ) then
			transition.to(ball2, {time=100, x=display.contentCenterX - 125})
			end
 
			
			if ( ball2.x >= display.contentCenterX - 200 ) then
			transition.to(ball2, {time=100, x=12.5})
			end
 
   end 
end


local gameStarted = false

function flyUp(event)
   if event.phase == "began" then
       
		if gameStarted == false then
		    right.alpha = 1
			left.alpha = 1
			 instructions.alpha = 0
			 instructions2.alpha = 0
			 scoreText.alpha = 1
			 
			 addColumnTimer1 = timer.performWithDelay(math.random(2000, 2500), addColumns1, -1)
			 addColumnTimer3 = timer.performWithDelay(math.random(2800, 3500), addColumns3, -1)
			 --------------------------------------------------------------------------------
			 addColumnTimer2 = timer.performWithDelay(math.random(2000, 2500), addColumns2, -1)
			 addColumnTimer4 = timer.performWithDelay(math.random(2800, 3500), addColumns4, -1)
		
			-- addColumnTimer = timer.performWithDelay(2000, addColumns3, -1)
			 
			 moveColumnTimer = timer.performWithDelay(1, moveColumns, -1)
			 gameStarted = true
			 
		else 
       right.alpha = 1
	   left.alpha = 1
	   --bird:applyForce(0, -900, bird.x, bird.y)
	
      end
	end
	

end



function moveColumns()
		for a = elements.numChildren,1,-1  do
		--	if(elements[a].y > ball1.y) then 
		
			if(elements[a].y > ball1.y) then 
			   
				if elements[a].scoreAdded == false then

					mydata.score = mydata.score + 1
					scoreText.text = mydata.score
					elements[a].scoreAdded = true
					
				
				end
			end

	
		
			if(elements[a].y < display.contentHeight + 50) then  --2900
				elements[a].y = elements[a].y + 15
			else 
				elements:remove(elements[a])
			end	
		end
		

end




function addColumns1() --add columns is in part 5
	
    triangleShape = { -50,0, 50,-40, 50,40 }
	
	tri1 = display.newImageRect('tri1.png',100,80) --714 150
	tri1.anchorX = 1
	tri1.anchorY = 0
	tri1.x = display.contentWidth 
	tri1.y = -200    
	tri1.scoreAdded = false
	physics.addBody(tri1, "static", {density=1, bounce=0.1, friction=.2, shape=triangleShape})
	elements:insert(tri1)
	
end	

function addColumns2()

triangleShape2 = { 50,0, -50,-40, -50,40 }

    tri4 = display.newImageRect('tri4.png',100,80)
	tri4.anchorX = 0
	tri4.anchorY = 0
	tri4.x = 0 
	tri4.y = -200  
	tri4.scoreAdded = false
	physics.addBody(tri4, "static", {density=1, bounce=0.1, friction=.2, shape=triangleShape2})
	elements:insert(tri4)

end


function addColumns3()

triangleShape3 = { 50,0, -50,-40, -50,40 }

    tri2 = display.newImageRect('tri2.png',100,80)
	tri2.anchorX = 0
	tri2.anchorY = 0
	tri2.x = display.contentCenterX + 12.5
	tri2.y = -200  
	tri2.scoreAdded = false
	physics.addBody(tri2, "static", {density=1, bounce=0.1, friction=.2, shape=triangleShape3})
	elements:insert(tri2)

end



function addColumns4()


	triangleShape4 = { -50,0, 50,-40, 50,40 }

    tri3 = display.newImageRect('tri3.png',100,80)
	tri3.anchorX = 1
	tri3.anchorY = 0
	tri3.x = display.contentCenterX - 12.5
	tri3.y = -200  
	tri3.scoreAdded = false
	physics.addBody(tri3, "static", {density=1, bounce=0.1, friction=.2, shape=triangleShape4})
	elements:insert(tri3)

end



-- contentWidth=full screeen width





local function checkMemory()
   collectgarbage( "collect" )
   local memUsage_str = string.format( "MEMORY = %.3f KB", collectgarbage( "count" ) )
  -- print( memUsage_str, "TEXTURE = "..(system.getInfo("textureMemoryUsed") / (1024 * 1024) ) )
end


function scene:enterScene(event)

  storyboard.removeScene("start")
  Runtime:addEventListener("touch", flyUp)


  Runtime:addEventListener("collision", onCollision)
  
   right:addEventListener("touch", rtTouch)
	left:addEventListener("touch", ltTouch)
  
 
  memTimer = timer.performWithDelay( 1000, checkMemory, 0 )
  
end


function scene:exitScene(event)
    
	Runtime:removeEventListener("touch", flyUp)

	Runtime:removeEventListener("collision", onCollision)
	timer.cancel(addColumnTimer1)
    timer.cancel(addColumnTimer2)
	timer.cancel(addColumnTimer3)
	timer.cancel(addColumnTimer4)
	timer.cancel(moveColumnTimer)
	timer.cancel(memTimer)
	
end


function scene:destroyScene(checkMemory)

end

scene:addEventListener("createScene", scene)
scene:addEventListener("enterScene", scene)
scene:addEventListener("exitScene", scene)
scene:addEventListener("destroyScene", scene)




return scene

--x =800  y = 1200