{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D96A.Simples.S6341
  ( simple6341
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- >   6341  Currency market exchange, coded
-- >
-- >   Desc: Code identifying the market upon which the currency exchange
-- >         rate is based.
-- >
-- >   Repr: an..3
-- >
-- >    AAA    Paris exchange
-- >              Self explanatory.
-- >    AMS    Amsterdam exchange
-- >              Self explanatory.
-- >    ARG    Bolsa de Comercio de Buenos Aires
-- >              Argentina exchange.
-- >    AST    Australian exchange
-- >              Self explanatory.
-- >    AUS    Wien exchange
-- >              Wiener Boersenkammer.
-- >    BEL    Brussel exchange
-- >              Commission de la Bourse Bruxelles.
-- >    CAN    Toronto exchange
-- >              Self explanatory.
-- >    CAR    Contractual agreement exchange rate
-- >              Self explanatory.
-- >    CIE    US Customs Information Exchange
-- >              Currency rates published by the US Customs Information
-- >              Exchange, 6 WTC, New York NY 10048-0945, USA.
-- >    DEN    Copenhagen exchange
-- >              Koebenhavns Fondsboers.
-- >    ECR    European Community period exchange rate
-- >              Description to be provided.
-- >    FIN    Helsinki exchange
-- >              Self explanatory.
-- >    FRA    Frankfurt exchange
-- >              Self explanatory.
-- >    IMF    International Monetary Fund
-- >              Self explanatory.
-- >    LNF    London exchange, first closing
-- >              Self explanatory.
-- >    LNS    London exchange, second closing
-- >              Self explanatory.
-- >    MIL    Milan exchange
-- >              Self explanatory.
-- >    NOR    Oslo exchange
-- >              Self explanatory.
-- >    NYC    New York exchange
-- >              Self explanatory.
-- >    PHI    Philadelphia exchange
-- >              Self explanatory.
-- >    SRE    Specific railway exchange currency
-- >              Self explanatory.
-- >    SWE    Stockholm exchange
-- >              Self explanatory.
-- >    ZUR    Zurich exchange
-- >              Self explanatory.
simple6341 :: Parser Value
simple6341 = simple "6341" (alphaNumeric `upTo` 3)
