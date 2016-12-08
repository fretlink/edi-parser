{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D01B.Simples.S5242
  ( simple5242
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- >      5242  Rate or tariff class description                        [B]
-- >
-- >      Desc: Free form description of an applicable rate or tariff
-- >            class.
-- >
-- >      Repr: an..35
simple5242 :: Parser Value
simple5242 = simple "5242" (alphaNumeric `upTo` 35)
