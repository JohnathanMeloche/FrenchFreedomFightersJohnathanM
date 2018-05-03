-- This is the Splash Screen Scene.


-- Calling composer library
local composer = require( "composer" )

local pex = require "pony.com.ponywolf.pex"

-- Naming Scene
sceneName = "splash_screen"

-- Creating Scene Object
local scene = composer.newScene( sceneName )

------------------------------------------------------
-- The function called when the screen doesn't exist
function scene:create( event )

	-- Declares Local Image Variables

	local earthRotate
	local riseSpeed = 100
	local logoRise





	-- Displays Part of the Company logo to be used for animation and sets properties
	local logoSword = display.newImageRect("Images/splashScreenVariations/logosword.png", 1400, 1000)
	logoSword.x = 800
	logoSword.y = 700

	-- Displays Part of the Company logo to be used for animation and sets properties
	local logoSwordBroken = display.newImageRect("Images/splashScreenVariations/logoswordbroken.png", 1400, 1000)
	logoSwordBroken.x = 155
	logoSwordBroken.y = 650
	logoSwordBroken.isVisible = false

	-- Displays Part of the Company logo to be used for animation and sets properties
	local logoEarth = display.newImageRect("Images/splashScreenVariations/logoEarth.png", 500, 500)
	logoEarth.x = 1100
	logoEarth.y = 300

	-- Displays Part of the Company logo to be used for animation and sets properties
	local logoF = display.newImageRect("Images/splashScreenVariations/logoF.png", 1400, 1000)
	logoF.x = 150
	logoF.y = 1000

	-- Y must be 600

	-- Displays Part of the Company logo to be used for animation and sets properties
	local logoTitle = display.newImageRect("Images/splashScreenVariations/logoTitle.png", 1800, 200)
	logoTitle.x = 500
	logoTitle.y = 1300



	local function logoRiseUp()
		logoRise = logoF.y - riseSpeed
		timer.performWithDelay(300, logoRise)
	end

	local function rotateEarth()
		earthRotate = logoEarth:rotate(.7)
		timer.performWithDelay(300, earthRotate)
	end
	logoRiseUp()
	Runtime:addEventListener("enterFrame", rotateEarth)













end


scene:addEventListener( "create", scene )



-------------------------------------------------------

return scene
