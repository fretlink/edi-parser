{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D96A.Simples.S6348
  ( simple6348
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- >    6348  Currency rate base
-- >
-- >    Desc: Multiplying factor used in expressing the number of currency
-- >          units.
-- >
-- >    Repr: n..4
simple6348 :: Parser Value
simple6348 = simple "6348" (numeric `upTo` 4)
