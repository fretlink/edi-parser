{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D01B.Simples.S6152
  ( simple6152
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- >      6152  Range maximum value                                     [C]
-- >
-- >      Desc: To specify the maximum value of a range.
-- >
-- >      Repr: n..18
simple6152 :: Parser Value
simple6152 = simple "6152" (numeric `upTo` 18)
