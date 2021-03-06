{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D96A.Segments.LOC
  ( -- * Definition
    segmentLOC
    -- * Dependencies
  , compositeC517
  , compositeC519
  , compositeC553
  , simple3227
  , simple5479
  ) where

import           Text.Edifact.D96A.Composites (compositeC517, compositeC519,
                                               compositeC553)
import           Text.Edifact.D96A.Simples    (simple3227, simple5479)

import           Text.Edifact.Parsing
import           Text.Edifact.Types           (Value)

-- | Derived from this specification:
--
-- >       LOC    PLACE/LOCATION IDENTIFICATION
-- >
-- >       Function: To identify a country/place/location/related location
-- >                 one/related location two.
-- >
-- > 010   3227  PLACE/LOCATION QUALIFIER                       M  an..3
-- >
-- > 020   C517  LOCATION IDENTIFICATION                        C
-- >       3225   Place/location identification                 C  an..25
-- >       1131   Code list qualifier                           C  an..3
-- >       3055   Code list responsible agency, coded           C  an..3
-- >       3224   Place/location                                C  an..70
-- >
-- > 030   C519  RELATED LOCATION ONE IDENTIFICATION            C
-- >       3223   Related place/location one identification     C  an..25
-- >       1131   Code list qualifier                           C  an..3
-- >       3055   Code list responsible agency, coded           C  an..3
-- >       3222   Related place/location one                    C  an..70
-- >
-- > 040   C553  RELATED LOCATION TWO IDENTIFICATION            C
-- >       3233   Related place/location two identification     C  an..25
-- >       1131   Code list qualifier                           C  an..3
-- >       3055   Code list responsible agency, coded           C  an..3
-- >       3232   Related place/location two                    C  an..70
-- >
-- > 050   5479  RELATION, CODED                                C  an..3
--
-- Dependencies: 'compositeC517', 'compositeC519', 'compositeC553', 'simple3227', 'simple5479'.
segmentLOC :: Parser Value
segmentLOC =
  segment "LOC"
    [ "010" .@ mandatory simple3227
    , "020" .@ optional  compositeC517
    , "030" .@ optional  compositeC519
    , "040" .@ optional  compositeC553
    , "050" .@ optional  simple5479
    ]
