
{-# LANGUAGE OverloadedStrings #-}

import Network.Wai (responseLBS, Application)
import Network.Wai.Handler.Warp (run)
import Network.HTTP.Types (status200)
import Network.HTTP.Types.Header (hContentType)

main = do
    let port = 3000
    run port app

app :: Application
app req f =  f $ responseLBS status200 [(hContentType, "text/plain")] "Hello world!"
