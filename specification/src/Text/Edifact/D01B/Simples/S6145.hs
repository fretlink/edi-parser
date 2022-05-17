{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D01B.Simples.S6145
  ( simple6145
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- >      6145  Dimension type code qualifier                           [B]
-- >
-- >      Desc: Code qualifying the type of the dimension.
-- >
-- >      Repr: an..3
-- >
-- >      1     Gross dimensions
-- >               The dimension expressed in a gross value.
-- >
-- >      2     Package dimensions (including goods)
-- >               The dimension of the goods including the packaging.
-- >
-- >      3     Pallet dimensions (excluding goods)
-- >               The dimension of a pallet excluding the goods.
-- >
-- >      4     Pallet dimensions (including goods)
-- >               The dimension of a pallet including the goods.
-- >
-- >      5     Off-standard dimension front
-- >               The dimension in the length that the cargo exceeds the
-- >               standard length at the front of an equipment.
-- >
-- >      6     Off-standard dimension back
-- >               The dimension in the length that the cargo exceeds the
-- >               standard length at the back of an equipment.
-- >
-- >      7     Off-standard dimension right
-- >               The dimension in the width that the cargo exceeds the
-- >               standard width at the right side of an equipment.
-- >
-- >      8     Off-standard dimension left
-- >               The dimension in the width that the cargo exceeds the
-- >               standard width at the left side of an equipment.
-- >
-- >      9     Off-standard dimension general
-- >               The dimensions that the cargo exceeds the standard
-- >               dimensions.
-- >
-- >      10    External equipment dimension
-- >               The external dimensions of transport equipment.
-- >
-- >      11    Internal equipment dimensions
-- >               The internal dimensions of equipment.
-- >
-- >      12    Damage dimensions
-- >               Dimensions of the damaged area.
-- >
-- >      13    Off-standard dimensions height
-- >               The dimension in the height that the cargo exceeds the
-- >               standard height at the top of a piece of equipment.
-- >
-- >      14    Equipment door dimensions
-- >               Dimensions (width and height) of the equipment door.
simple6145 :: Parser Value
simple6145 = simple "6145" (alphaNumeric `upTo` 3)
