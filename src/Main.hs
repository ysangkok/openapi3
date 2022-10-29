module Main (
  module EmptyModule,
  main
) where

import EmptyModule

main :: IO ()
main = pure ()

-- $setup
-- >>> import Data.UsesList
-- >>> :set -XOverloadedLists
