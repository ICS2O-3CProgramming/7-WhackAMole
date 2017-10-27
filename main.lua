-- Title: Whack A Mole
-- Created by: Wal Wal
-- Modified by: Your Name
-- Course: ICS2O/3C
-- What does this program do?

--*** INSERT CODE TO HIDE THE STATUS BAR


-- ***INSERT WHACK SOUND CHANNEL


-- ***INSERT BACKGROUND MUSIC
	
--Creating Background
local bkg = display.newRect( 0, 0, display.contentWidth, display.contentHeight )
	
	-- ***SET THE COLOUR OF THE BACKGROUND


	-- ***SET THE POSITION OF THE BACKGROUND TO THE TOP LEFT CORNER

	-- ***ANCHOR THE BACKGROUND AT THE TOP LEFT CORNER

-- ***INSERT YOUR OWN IMAGE (DIFFERENT FROM THE MOLE)
local mole = display.newImage( "Images/mole.png" , 0, 0 )

	--Scale down the size of the mole
	mole:scale( 0.2, 0.2 )

	--*** MAKE THE MOLE INVISIBLE
	

--Score
local molesWhacked = 0

--Score Text
local score = display.newText( "Score: "..molesWhacked, 0, 0, Arial, 45 )

	--Text Position
	score.x = display.contentWidth/2
	score.y = 40

	--Changing Color of score
	score:setFillColor( 1, 0, 0 )

--------------------------------Functions ------------------------------------

-- This function that makes the mole appear in a random (x,y) position on the screen
-- before calling the Hide function
function PopUp( )

	---***INSERT CODE TO FIND RANDOM X AND Y BETWEEN O AND WIDTH AND HEIGHT OF SCREEN, RESPECTIVELY

	
	--*** INSERT CODE TO MAKE MOLE VISIBLE
	

	--after 500 milliseconds (half a second), call the Hide function
	timer.performWithDelay( 1000, Hide )
end

--This function calls the PopUp function after 3 seconds
function PopUpDelay( )
	--*** INSERT THE CODE TO CALL THE POPUP FUNCTION AFTER 3 SECONDS

end

-- This function makes the mole invisible and then calls the PopUpDelay function
function Hide( )
	
	--*** INSERT CODE TO MAKE MOLE INVISIBLE


	--*** INSERT THE CODE TO CALL THE POPUPDELAY FUNCTION
	
end

-- This function increments the score only if the mole is clicked. It then displays the
-- new score.
function Whacked( event )

	--If touch phase just started
	if (event.phase == "began") then
		--*** INSERT CODE TO PLAY WHACKED SOUND 	
		

		--*** INSERT CODE TO INCREMENT NUMBER OF MOLES WHACKED BY 1
		
		-- Display the updated score
		score.text = "Score: ".. molesWhacked
	end

end

--This function starts the game
function GameStart( )
	PopUpDelay()
end

------------------------------------- Event Listeners --------------------------------------
-- if the mole is touched, the Whacked function is called
mole:addEventListener( "touch", Whacked )

-------------------------------------- Start the Game ---------------------------------------
-- Call the function that starts the game
GameStart()

