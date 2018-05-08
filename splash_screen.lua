-- This is the Splash Screen Scene.


-- Calling composer library
local composer = require( "composer" )

local pex = require "pony.com.ponywolf.pex"

-- Naming Scene
sceneName = "splash_screen"

-- Creating Scene Object
local scene = composer.newScene( sceneName )

------------------------------------------------------




local backgroundColour = display.setDefault ( "background", 123/255, 123/255, 130/255)
local logoSword
local logoSwordBroken
local logoEarth
local logoF
local logoTitle
local swordSound = audio.loadSound("Sounds/sword.mp3")
local swordPlay = audio.play(swordSound)






local function MainMenuTransition()
	composer.gotoScene( "main_menu" )
end

timer.performWithDelay(4000, MainMenuTransition)



-- The function called when the screen doesn't exist
function scene:create( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view

	-- Declares Local Image Variables
	local earthRotate
	local riseSpeed = -5
	local riseSpeed2 = -6





	-- Displays Part of the Company logo to be used for animation and sets properties
	logoSword = display.newImageRect("Images/splashScreenVariations/logosword.png", 1400, 1000)
	logoSword.x = 1200
	logoSword.y = 600

	sceneGroup:insert(logoSword)
	
	-- Displays Part of the Company logo to be used for animation and sets properties
	logoEarth = display.newImageRect("Images/splashScreenVariations/logoEarth.png", 500, 500)
	logoEarth.x = 1100
	logoEarth.y = -200

	sceneGroup:insert(logoEarth)
	
	-- Displays Part of the Company logo to be used for animation and sets properties
	logoF = display.newImageRect("Images/splashScreenVariations/logoF.png", 1400, 1000)
	logoF.x = 600
	logoF.y = 1300

	sceneGroup:insert(logoF)
	
	-- Y must be 600

	-- Displays Part of the Company logo to be used for animation and sets properties
	logoTitle = display.newImageRect("Images/splashScreenVariations/logoTitle.png", 1400, 200)
	logoTitle.x = 720
	logoTitle.y = 1200
	logoTitle:setFillColor (146/255, 148/255, 146/255)

	sceneGroup:insert(logoTitle)
	




	local function rotateEarth()
		earthRotate = logoEarth:rotate(.7)
		if logoF.y < 550 then
			return
		else
			logoF.y = logoF.y + riseSpeed
		end
	
	end

	local function moveSword()
		if logoSword.x < 400 then
			return
		else
			logoSword.x = logoSword.x + riseSpeed2
		end
		if logoSword.x < 400 then
			logoSword:rotate(-35)
		end
	end

	Runtime:addEventListener("enterFrame", rotateEarth)
	Runtime:addEventListener("enterFrame", moveSword)

end

-- The function called when the scene is issued to appear on screen
function scene:show( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view
    local phase = event.phase




end --function scene:show( event )

-----------------------------------------------------------------------------------------

-- The function called when the scene is issued to leave the screen
function scene:hide( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view
    local phase = event.phase

    -----------------------------------------------------------------------------------------

    if ( phase == "will" ) then
        -- Called when the scene is on screen (but is about to go off screen).
        -- Insert code here to "pause" the scene.
        -- Example: stop timers, stop animation, stop audio, etc.

    -----------------------------------------------------------------------------------------

    elseif ( phase == "did" ) then
        -- Called immediately after scene goes off screen.
    end

end --function scene:hide( event )

-----------------------------------------------------------------------------------------

-- The function called when the scene is issued to be destroyed
function scene:destroy( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view

    -----------------------------------------------------------------------------------------

    -- Called prior to the removal of scene's view ("sceneGroup").
    -- Insert code here to clean up the scene.
    -- Example: remove display objects, save state, etc.

end -- function scene:destroy( event )

-----------------------------------------------------------------------------------------
-- EVENT LISTENERS
-----------------------------------------------------------------------------------------

-- Adding Event Listeners
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )



-------------------------------------------------------

return scene
