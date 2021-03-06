{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D96A.Segments.DGS
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

import           Text.Edifact.D96A.Composites (compositeC205, compositeC223,
                                               compositeC234, compositeC235,
                                               compositeC236)
import           Text.Edifact.D96A.Simples    (simple8126, simple8211,
                                               simple8255, simple8273,
                                               simple8325, simple8339,
                                               simple8364, simple8410)

import           Text.Edifact.Parsing
import           Text.Edifact.Types           (Value)

-- | Derived from this specification:
--
-- >       DGS    DANGEROUS GOODS
-- >
-- >       Function: To identify dangerous goods.
-- >
-- > 010   8273  DANGEROUS GOODS REGULATIONS, CODED             C  an..3
-- >
-- > 020   C205  HAZARD CODE                                    C
-- >       8351   Hazard code identification                    M  an..7
-- >       8078   Hazard substance/item/page number             C  an..7
-- >       8092   Hazard code version number                    C  an..10
-- >
-- > 030   C234  UNDG INFORMATION                               C
-- >       7124   UNDG number                                   C  n4
-- >       7088   Dangerous goods flashpoint                    C  an..8
-- >
-- > 040   C223  DANGEROUS GOODS SHIPMENT FLASHPOINT            C
-- >       7106   Shipment flashpoint                           C  n3
-- >       6411   Measure unit qualifier                        C  an..3
-- >
-- > 050   8339  PACKING GROUP, CODED                           C  an..3
-- >
-- > 060   8364  EMS NUMBER                                     C  an..6
-- >
-- > 070   8410  MFAG                                           C  an..4
-- >
-- > 080   8126  TREM CARD NUMBER                               C  an..10
-- >
-- > 090   C235  HAZARD IDENTIFICATION                          C
-- >       8158   Hazard identification number, upper part      C  an..4
-- >       8186   Substance identification number, lower part   C  an4
-- >
-- > 100   C236  DANGEROUS GOODS LABEL                          C
-- >       8246   Dangerous goods label marking                 C  an..4
-- >       8246   Dangerous goods label marking                 C  an..4
-- >       8246   Dangerous goods label marking                 C  an..4
-- >
-- > 110   8255  PACKING INSTRUCTION, CODED                     C  an..3
-- >
-- > 120   8325  CATEGORY OF MEANS OF TRANSPORT, CODED          C  an..3
-- >
-- > 130   8211  PERMISSION FOR TRANSPORT, CODED                C  an..3
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
