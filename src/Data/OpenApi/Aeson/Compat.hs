module Data.OpenApi.Aeson.Compat where

import           Data.Aeson        (Key)
import qualified Data.Aeson.Key    as Key
import qualified Data.Aeson.KeyMap as KeyMap
import           Data.Bifunctor             (first)
import qualified Data.HashMap.Strict.InsOrd as InsOrdHashMap
import qualified Data.Text                  as T

deleteKey :: Key -> KeyMap.KeyMap v -> KeyMap.KeyMap v
deleteKey = KeyMap.delete

objectToList :: KeyMap.KeyMap v -> [(Key, v)]
objectToList = KeyMap.toList

objectKeys :: KeyMap.KeyMap v -> [T.Text]
objectKeys = map Key.toText . KeyMap.keys

stringToKey :: String -> Key
stringToKey = Key.fromString

keyToString :: Key -> String
keyToString = Key.toString

keyToText :: Key -> T.Text
keyToText = Key.toText

toInsOrdHashMap :: KeyMap.KeyMap v -> InsOrdHashMap.InsOrdHashMap T.Text v
toInsOrdHashMap = InsOrdHashMap.fromList . fmap (first Key.toText) . KeyMap.toList

fromInsOrdHashMap :: InsOrdHashMap.InsOrdHashMap T.Text v -> KeyMap.KeyMap v
fromInsOrdHashMap = KeyMap.fromList . fmap (first Key.fromText) . InsOrdHashMap.toList

lookupKey :: T.Text -> KeyMap.KeyMap v -> Maybe v
lookupKey = KeyMap.lookup . Key.fromText

hasKey :: T.Text -> KeyMap.KeyMap a -> Bool
hasKey = KeyMap.member . Key.fromText
