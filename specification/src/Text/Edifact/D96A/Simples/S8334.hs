{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D96A.Simples.S8334
  ( simple8334
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- >    8334  Movement type
-- >
-- >    Desc: Description of the type of movement.
-- >
-- >    Repr: an..35
simple8334 :: Parser Value
simple8334 = simple "8334" (alphaNumeric `upTo` 35)
