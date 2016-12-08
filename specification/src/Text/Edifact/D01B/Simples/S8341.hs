{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D01B.Simples.S8341
  ( simple8341
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- >      8341  Haulage arrangements code                               [B]
-- >
-- >      Desc: Code specifying the arrangement for the haulage of
-- >            goods.
-- >
-- >      Repr: an..3
-- >
-- >      1     Carrier
-- >               Haulage arranged by carrier.
-- >
-- >      2     Merchant
-- >               Haulage arranged by merchant (shipper, consignee, or
-- >               their agent).
simple8341 :: Parser Value
simple8341 = simple "8341" (alphaNumeric `upTo` 3)
