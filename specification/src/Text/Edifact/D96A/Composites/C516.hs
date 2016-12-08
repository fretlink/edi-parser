{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D96A.Composites.C516
  ( -- * Definition
    compositeC516
    -- * Dependencies
  , simple4405
  , simple5004
  , simple5025
  , simple6343
  , simple6345
  ) where

import           Text.Edifact.D96A.Simples (simple4405, simple5004, simple5025,
                                            simple6343, simple6345)

import           Text.Edifact.Parsing
import           Text.Edifact.Types        (Value)

-- | Derived from this specification:
--
-- >       C516  MONETARY AMOUNT
-- >
-- >       Desc: Amount of goods or services stated as a monetary amount in
-- >             a specified currency.
-- >
-- > 010   5025   Monetary amount type qualifier                M  an..3
-- > 020   5004   Monetary amount                               C  n..18
-- > 030   6345   Currency, coded                               C  an..3
-- > 040   6343   Currency qualifier                            C  an..3
-- > 050   4405   Status, coded                                 C  an..3
--
-- Dependencies: 'simple4405', 'simple5004', 'simple5025', 'simple6343', 'simple6345'.
compositeC516 :: Parser Value
compositeC516 =
  composite "C516"
    [ "010" .@ mandatory simple5025
    , "020" .@ optional  simple5004
    , "030" .@ optional  simple6345
    , "040" .@ optional  simple6343
    , "050" .@ optional  simple4405
    ]
