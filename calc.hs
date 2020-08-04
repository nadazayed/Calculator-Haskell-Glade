import Graphics.UI.Gtk
import Graphics.UI.Gtk.Glade

 -- Main Function
main = do
    -- Initialize the GUI
    initGUI
    Just xml    <- xmlNew "calc.glade"
    window      <- xmlGetWidget xml castToWindow "window1"
    onDestroy window mainQuit

    -- Initialize Close-Button
    closeButton <- xmlGetWidget xml castToButton "button18"
    onClicked closeButton $ do
        widgetDestroy window

    -- Initialize text fields
    entry1num       <- xmlGetWidget xml castToEntry "entry1"
    entry2num       <- xmlGetWidget xml castToEntry "entry2"
    entry3result       <- xmlGetWidget xml castToEntry "entry3"


    -- Initialize Operation-Buttons
    
  --Addition
    plus <- xmlGetWidget xml castToButton "button1"
    onClicked plus $ do
        num1 <- get entry1num entryText
        num2 <- get entry2num entryText
        let n1 = (read num1 :: Double)
        let n2 = (read num2 :: Double)
        let totl = n1 + n2
        set entry3result [ entryText := ""++(show totl) ]

  --subtraction
    diff <- xmlGetWidget xml castToButton "button2"
    onClicked diff $ do
        num1 <- get entry1num entryText
        num2 <- get entry2num entryText
        let n1 = (read num1 :: Double)
        let n2 = (read num2 :: Double)
        let totl = n1 - n2
        set entry3result [ entryText := ""++(show totl) ]

  --division
    divi <- xmlGetWidget xml castToButton "button3"
    onClicked divi $ do
        num1 <- get entry1num entryText
        num2 <- get entry2num entryText
        let n1 = (read num1 :: Double)
        let n2 = (read num2 :: Double)
        let totl = n1 / n2
        set entry3result [ entryText := ""++(show totl) ]

  --multiplication
    mult <- xmlGetWidget xml castToButton "button4"
    onClicked mult $ do
        num1 <- get entry1num entryText
        num2 <- get entry2num entryText
        let n1 = (read num1 :: Double)
        let n2 = (read num2 :: Double)
        let totl = n1 * n2
        set entry3result [ entryText := ""++(show totl) ]

  --power
    power <- xmlGetWidget xml castToButton "button5"
    onClicked power $ do
        num1 <- get entry1num entryText
        num2 <- get entry2num entryText
        let n1 = (read num1 :: Double)
        let n2 = (read num2 :: Double)
        let totl = n1 ** n2
        set entry3result [ entryText := ""++(show totl) ]

 --modulus
    modu <- xmlGetWidget xml castToButton "button6"
    onClicked modu $ do
        num1 <- get entry1num entryText
        num2 <- get entry2num entryText
        let n1 = (read num1 :: Int)
        let n2 = (read num2 :: Int)
        let totl = n1 `mod` n2
        set entry3result [ entryText := ""++(show totl) ]

 --sin
    sine <- xmlGetWidget xml castToButton "button7"
    onClicked sine $ do
        num1 <- get entry1num entryText
        let n1 = (read num1 :: Double)
        let totl = sin(n1)
        set entry3result [ entryText := ""++(show totl) ]

 --cos
    cose <- xmlGetWidget xml castToButton "button8"
    onClicked cose $ do
        num1 <- get entry1num entryText
        let n1 = (read num1 :: Double)
        let totl = cos(n1)
        set entry3result [ entryText := ""++(show totl) ]

 --tan
    tane <- xmlGetWidget xml castToButton "button9"
    onClicked tane $ do
        num1 <- get entry1num entryText
        let n1 = (read num1 :: Double)
        let totl = tan(n1)
        set entry3result [ entryText := ""++(show totl) ]

 --sinh
    sinhe <- xmlGetWidget xml castToButton "button10"
    onClicked sinhe $ do
        num1 <- get entry1num entryText
        let n1 = (read num1 :: Double)
        let totl = sinh(n1)
        set entry3result [ entryText := ""++(show totl) ]


 --cosh
    coshe <- xmlGetWidget xml castToButton "button11"
    onClicked coshe $ do
        num1 <- get entry1num entryText
        let n1 = (read num1 :: Double)
        let totl = cosh(n1)
        set entry3result [ entryText := ""++(show totl) ]


 --tanh
    tanhe <- xmlGetWidget xml castToButton "button12"
    onClicked tanhe $ do
        num1 <- get entry1num entryText
        let n1 = (read num1 :: Double)
        let totl = tanh(n1)
        set entry3result [ entryText := ""++(show totl) ]


 --ceil
    ceill <- xmlGetWidget xml castToButton "button13"
    onClicked ceill $ do
        num1 <- get entry3result entryText
        let n1 = (read num1 :: Double)
        let totl=ceiling(n1)
        set entry3result [ entryText := ""++(show totl) ]

 --floor
    floorr <- xmlGetWidget xml castToButton "button14"
    onClicked floorr $ do
        num1 <- get entry3result entryText
        let n1 = (read num1 :: Double)
        let totl=floor(n1)
        set entry3result [ entryText := ""++(show totl) ]

 --abs
    abss <- xmlGetWidget xml castToButton "button15"
    onClicked abss $ do
        num1 <- get entry3result entryText
        let n1 = (read num1 :: Double)
        let totl=abs(n1)
        set entry3result [ entryText := ""++(show totl) ]

 --log
    logg <- xmlGetWidget xml castToButton "button16"
    onClicked logg $ do
        num1 <- get entry1num entryText
        let n1 = (read num1 :: Double)
        let totl=log(n1)
        set entry3result [ entryText := ""++(show totl) ]

 --exp
    expp <- xmlGetWidget xml castToButton "button17"
    onClicked expp $ do
        num1 <- get entry1num entryText
        let n1 = (read num1 :: Double)
        let totl=exp(n1)
        set entry3result [ entryText := ""++(show totl) ]





 -- Show Main GUI Window
    widgetShowAll window
    mainGUI


