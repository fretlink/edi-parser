{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D96A.Simples.S8325
  ( simple8325
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- >   8325  Category of means of transport, coded
-- >
-- >   Desc: Identification of the type of means of transport determined to
-- >         carry particular goods, not necessarily being hazardous.
-- >
-- >   Repr: an..3
-- >
-- >         1 ADNR code, OS
-- >              Description to be provided.
-- >         2 ADNR code, 1N
-- >              Description to be provided.
-- >         3 ADNR code, 1S
-- >              Description to be provided.
-- >         4 ADNR code, 2
-- >              Description to be provided.
-- >         5 ADNR code, 3
-- >              Description to be provided.
-- >         6 ADNR code, F
-- >              Description to be provided.
-- >         7 ADNR code, NF
-- >              Description to be provided.
-- >         8 ADNR code, ON
-- >              Description to be provided.
-- >         9 ADNR code, X
-- >              Description to be provided.
simple8325 :: Parser Value
simple8325 = simple "8325" (alphaNumeric `upTo` 3)
