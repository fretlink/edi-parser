{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D01B.Simples.S6353
  ( simple6353
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- > *    6353  Unit type code qualifier                                [C]
-- >
-- >      Desc: Code qualifying the type of unit.
-- >
-- >      Repr: an..3
-- >
-- >      1     Number of pricing units
-- >               Number of units which multiplied by the unit price gives
-- >               price.
-- >
-- >      2     Transportable unit
-- >               A unit that is capable of being transported.
-- >
-- >      3     Number of debit units
-- >               The number of units which are debited by the sender of
-- >               the consignment to the receiving party.
-- >
-- >      4     Number of received units
-- >               The number of units which are received by the receiving
-- >               party of the consignment.
-- >
-- >      5     Number of free days for container availability
-- >               Number of days within which the container will be made
-- >               available at no charge.
-- >
-- >      6     Number of structure components
-- >               Number of components in a structure.
-- >
-- >      7     Number of asset units
-- >               The number of units of an asset.
-- >
-- >      8     Number of consignments
-- >               The number of consignments.
-- >
-- > +    9     Adult
-- >               The unit is an adult.
-- >
-- > +    10    Child
-- >               The unit is a child.
-- >
-- > +    11    Number of trial balance accounts
-- >               The unit is trial balance account.
-- >
-- > +    12    Number of lines
-- >               Unit is line.
simple6353 :: Parser Value
simple6353 = simple "6353" (alphaNumeric `upTo` 3)
