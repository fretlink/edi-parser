{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D96A.Simples.S7233
  ( simple7233
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- > * 7233  Packaging related information, coded
-- >
-- >   Desc: Code giving packaging, handling and marking related
-- >         information.
-- >
-- >   Repr: an..3
-- >
-- >        34 Product marking
-- >              Self explanatory.
-- >        35 Type of package
-- >              Self explanatory.
-- >        36 Package specifications
-- >              Self explanatory.
-- >        37 Package protection
-- >              Self explanatory.
-- >        38 Tarping
-- >              Description to be provided.
-- >        39 Platform/skid location
-- >              Description to be provided.
-- >        40 Bearing piece location
-- >              Description to be provided.
-- >        41 Skid/pallet type
-- >              Description to be provided.
-- >        42 Placement on carrier
-- >              Description to be provided.
-- >        43 Spacing directions
-- >              Descriptions to be provided.
-- >        44 Unloading device
-- >              Description to be provided.
-- >        45 Unloading equipment
-- >              Self explanatory.
-- > +      50 Package barcoded EAN-13 or EAN-8
-- >              The package is barcoded with EAN-13 or EAN-8 code.
-- > +      51 Package barcoded ITF-14 or ITF-6
-- >              The package is barcoded with ITF-14 or ITF-6 code.
-- > +      52 Package barcoded UCC or EAN-128
-- >              The package is barcoded with UCC or EAN-128 code.
-- > +      53 Package price marked
-- >              The package is marked with the price.
-- > +      54 Product ingredients marked on package
-- >              The ingredients of the product contained in a package are
-- >              marked on that package.
-- >        60 Product marking pattern
-- >              Self explanatory.
-- >        61 Product marking location
-- >              Self explanatory.
-- >        62 Package/container mark location
-- >              Self explanatory.
-- >        63 Marking method
-- >              Self explanatory.
-- >        66 Receiving facility limitations
-- >              Description to be provided.
-- >        67 Tagging/bar code instructions
-- >              Description to be provided.
-- >        68 Shipping package labelling
-- >              Self explanatory.
-- >        69 Shipping package sealing
-- >              Self explanatory.
simple7233 :: Parser Value
simple7233 = simple "7233" (alphaNumeric `upTo` 3)
