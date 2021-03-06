{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D01B.Segments.DGS
  ( -- * Definition
    segmentDGS
    -- * Dependencies
  , compositeC205
  , compositeC223
  , compositeC234
  , compositeC235
  , compositeC236
  , simple8126
  , simple8211
  , simple8255
  , simple8273
  , simple8325
  , simple8339
  , simple8364
  , simple8410
  ) where

import           Text.Edifact.D01B.Composites (compositeC205, compositeC223,
                                               compositeC234, compositeC235,
                                               compositeC236)
import           Text.Edifact.D01B.Simples    (simple8126, simple8211,
                                               simple8255, simple8273,
                                               simple8325, simple8339,
                                               simple8364, simple8410)

import           Text.Edifact.Parsing
import           Text.Edifact.Types           (Value)

-- | Derived from this specification:
--
-- >        DGS  DANGEROUS GOODS
-- >
-- >        Function: To identify dangerous goods.
-- >
-- > 010    8273 DANGEROUS GOODS REGULATIONS CODE           C    1 an..3
-- >
-- > 020    C205 HAZARD CODE                                C    1
-- >        8351  Hazard identification code                M      an..7
-- >        8078  Additional hazard classification
-- >              identifier                                C      an..7
-- >        8092  Hazard code version identifier            C      an..10
-- >
-- > 030    C234 UNDG INFORMATION                           C    1
-- >        7124  United Nations Dangerous Goods (UNDG)
-- >              identifier                                C      n4
-- >        7088  Dangerous goods flashpoint value          C      an..8
-- >
-- > 040    C223 DANGEROUS GOODS SHIPMENT FLASHPOINT        C    1
-- >        7106  Shipment flashpoint value                 C      n3
-- >        6411  Measurement unit code                     C      an..3
-- >
-- > 050    8339 PACKAGING DANGER LEVEL CODE                C    1 an..3
-- >
-- > 060    8364 EMERGENCY PROCEDURE FOR SHIPS IDENTIFIER   C    1 an..6
-- >
-- > 070    8410 HAZARD MEDICAL FIRST AID GUIDE IDENTIFIER  C    1 an..4
-- >
-- > 080    8126 TRANSPORT EMERGENCY CARD IDENTIFIER        C    1 an..10
-- >
-- > 090    C235 HAZARD IDENTIFICATION PLACARD DETAILS      C    1
-- >        8158  Orange hazard placard upper part
-- >              identifier                                C      an..4
-- >        8186  Orange hazard placard lower part
-- >              identifier                                C      an4
-- >
-- > 100    C236 DANGEROUS GOODS LABEL                      C    1
-- >        8246  Dangerous goods marking identifier        C      an..4
-- >        8246  Dangerous goods marking identifier        C      an..4
-- >        8246  Dangerous goods marking identifier        C      an..4
-- >
-- > 110    8255 PACKING INSTRUCTION TYPE CODE              C    1 an..3
-- >
-- > 120    8325 HAZARDOUS MEANS OF TRANSPORT CATEGORY CODE C    1 an..3
-- >
-- > 130    8211 HAZARDOUS CARGO TRANSPORT AUTHORISATION
-- >             CODE                                       C    1 an..3
--
-- Dependencies: 'compositeC205', 'compositeC223', 'compositeC234', 'compositeC235', 'compositeC236', 'simple8126', 'simple8211', 'simple8255', 'simple8273', 'simple8325', 'simple8339', 'simple8364', 'simple8410'.
segmentDGS :: Parser Value
segmentDGS =
  segment "DGS"
    [ "010" .@ optional  simple8273
    , "020" .@ optional  compositeC205
    , "030" .@ optional  compositeC234
    , "040" .@ optional  compositeC223
    , "050" .@ optional  simple8339
    , "060" .@ optional  simple8364
    , "070" .@ optional  simple8410
    , "080" .@ optional  simple8126
    , "090" .@ optional  compositeC235
    , "100" .@ optional  compositeC236
    , "110" .@ optional  simple8255
    , "120" .@ optional  simple8325
    , "130" .@ optional  simple8211
    ]
