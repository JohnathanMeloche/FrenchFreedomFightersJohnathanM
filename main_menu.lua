--This is the Main Menu Scene

-- Calling composer library
local composer = require( "composer" )

local pex = require "pony.com.ponywolf.pex"

-- Naming Scene
sceneName = "main_menu"

-- Creating Scene Object
local scene = composer.newScene( sceneName )

------------------------------------------------------

local mainMenuImage = display.newImageRect("Images/MainMenu.png", 1440, 2000)
mainMenuImage.x = 720
mainMenuImage.y = 450
local playButton = display.newImageRect("Images/PlayButtonUnpressed.png", 560, 190)
playButton.x = 720
playButton.y = 500
local optionsButton = display.newImageRect("Images/OptionsButtonUnpressed.png", 560, 190)
optionsButton.x = 720
optionsButton.y = 700
local controlsButton = display.newImageRect("Images/ControlsButtonUnpressed.png", 560, 190)
controlsButton.x = 720
controlsButton.y = 900
local creditsButton = display.newImageRect("Images/CreditsButtonUnpressed.png", 560, 190)
creditsButton.x = 720
creditsButton.y = 1100
local achievementsButton = display.newImageRect("Images/AchievementButtonUnpressed.png", 560, 190)
achievementsButton.x = 720
achievementsButton.y = 1300
local playButtonPressed = display.newImageRect("Images/PlayButtonPressed.png", 560, 190)
playButtonPressed.x = 720
playButtonPressed.y = 500
playButtonPressed.isVisible = false
local optionsButtonPressed = display.newImageRect("Images/OptionsButtonPressed.png", 560, 190)
optionsButtonPressed.x = 720
optionsButtonPressed.y = 700
optionsButtonPressed.isVisible = false
local controlsButtonPressed = display.newImageRect("Images/ControlsButtonPressed.png", 560, 190)
controlsButtonPressed.x = 720
controlsButtonPressed.y = 900
controlsButtonPressed.isVisible = false
local creditsButtonPressed = display.newImageRect("Images/CreditsButtonPressed.png", 560, 190)
creditsButtonPressed.x = 720
creditsButtonPressed.y = 1100
creditsButtonPressed.isVisible = false
local achievementsButtonPressed = display.newImageRect("Images/AchievementButtonPressed.png", 560, 190)
achievementsButtonPressed.x = 720
achievementsButtonPressed.y = 1300
achievementsButtonPressed.isVisible = false
local ButtonEmitter1
local ButtonEmitter2
local ButtonEmitter3
local ButtonEmitter4




-- The function called when the screen doesn't exist
function scene:create( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view


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






