{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D96A.Simples.S6162
  ( simple6162
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- >    6162  Range minimum
-- >
-- >    Desc: Minimum of a range.
-- >
-- >    Repr: n..18
simple6162 :: Parser Value
simple6162 = simple "6162" (numeric `upTo` 18)
