-- This Program is a splash screen animation
-- made for the app and designed by my student
-- Johnathan M ICS20
-- CompanyAnimation



-- Hiding Status Bar
display.setStatusBar( display.HiddenStatusBar )

-- Calling composer library
local composer = require( "composer" )

local pex = require "pony.com.ponywolf.pex"

-- Tansitioning to the splash screen
composer.gotoScene( "splash_screen" )