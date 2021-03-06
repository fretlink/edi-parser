{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D96A.Simples.S6167
  ( simple6167
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- >   6167  Range type qualifier
-- >
-- >   Desc: Identification of the type of range.
-- >
-- >   Repr: an..3
-- >
-- >         1 Allowance range
-- >              Self explanatory.
-- >         2 Charge range
-- >              Self explanatory.
-- >         3 Monetary range
-- >              Self explanatory.
-- >         4 Quantity range
-- >              Self explanatory.
-- >         5 Temperature range
-- >              The range of a temperature.
-- >         6 Order quantity range
-- >              The minimum to maximum order quantity.
-- >         7 Delivery quantity range
-- >              The minimum to maximum delivery quantity.
-- >         8 Production batch range
-- >              The minimum to maximum quantity in a single production
-- >              run.
-- >         9 Monthly quantity range
-- >              The minimum to maximum monthly quantity.
-- >        10 Annual quantity range
-- >              The minimum to maximum yearly quantity.
simple6167 :: Parser Value
simple6167 = simple "6167" (alphaNumeric `upTo` 3)
