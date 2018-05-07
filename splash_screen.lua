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
	local riseSpeed = 100
	local logoRise





	-- Displays Part of the Company logo to be used for animation and sets properties
	logoSword = display.newImageRect("Images/splashScreenVariations/logosword.png", 1400, 1000)
	logoSword.x = 800
	logoSword.y = 700

	sceneGroup:insert(logoSword)

	-- Displays Part of the Company logo to be used for animation and sets properties
	logoSwordBroken = display.newImageRect("Images/splashScreenVariations/logoswordbroken.png", 1400, 1000)
	logoSwordBroken.x = 510
	logoSwordBroken.y = 650
	logoSwordBroken.isVisible = true

	sceneGroup:insert(logoSwordBroken)
	
	-- Displays Part of the Company logo to be used for animation and sets properties
	logoEarth = display.newImageRect("Images/splashScreenVariations/logoEarth.png", 500, 500)
	logoEarth.x = 1100
	logoEarth.y = -200

	sceneGroup:insert(logoEarth)
	
	-- Displays Part of the Company logo to be used for animation and sets properties
	logoF = display.newImageRect("Images/splashScreenVariations/logoF.png", 1400, 1000)
	logoF.x = 500
	logoF.y = 600

	sceneGroup:insert(logoF)
	
	-- Y must be 600

	-- Displays Part of the Company logo to be used for animation and sets properties
	logoTitle = display.newImageRect("Images/splashScreenVariations/logoTitle.png", 1400, 150)
	logoTitle.x = 720
	logoTitle.y = 1320

	sceneGroup:insert(logoTitle)
	


	local function logoRiseUp()
		logoRise = logoF.y + riseSpeed
	end

	local function rotateEarth()
		earthRotate = logoEarth:rotate(.7)
	end

	Runtime:addEventListener("enterFrame", rotateEarth, logoRiseUp)

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
