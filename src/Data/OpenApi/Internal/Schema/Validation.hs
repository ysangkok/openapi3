module Data.OpenApi.Internal.Schema.Validation () where

-- $setup
-- >>> import Data.OpenApi.Internal.Schema.Validation

-- |
--
-- >>> inferParamSchemaTypes
-- []

inferParamSchemaTypes :: [Int]
inferParamSchemaTypes = (concat :: Foldable f => f [Int] -> [Int]) []
