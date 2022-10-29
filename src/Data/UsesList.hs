module Data.UsesList () where

-- $setup
-- >>> import Data.UsesList

-- |
--
-- >>> inferParamSchemaTypes
-- []

inferParamSchemaTypes :: [Int]
inferParamSchemaTypes = (concat :: Foldable f => f [Int] -> [Int]) []
