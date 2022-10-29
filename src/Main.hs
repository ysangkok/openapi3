module Main (
  module EmptyModule,
  main
) where

import EmptyModule

main :: IO ()
main = pure ()

-- $setup
-- >>> import Data.OpenApi.Internal.Schema.Validation
-- >>> :set -XOverloadedLists

