{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D01B.Simples.S5118
  ( simple5118
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- >      5118  Price amount                                            [C]
-- >
-- >      Desc: To specify a price.
-- >
-- >      Repr: n..15
simple5118 :: Parser Value
simple5118 = simple "5118" (numeric `upTo` 15)
