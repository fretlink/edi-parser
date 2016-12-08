{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D96A.Simples.S4237
  ( simple4237
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- >   4237  Prepaid/collect indicator, coded
-- >
-- >   Desc: Code indicating whether freight item amount is prepaid or to
-- >         be collected.
-- >
-- >   Repr: an..3
-- >
-- >    A      Payable elsewhere
-- >              Responsibility for payment of transport charges unknown
-- >              at time of departure.
-- >    B      Third party to pay
-- >              A third party to pay the freight bill is known at the
-- >              time of shipment.
-- >    C      Collect
-- >              Charges are (to be) collected from the consignee at the
-- >              destination.
-- >    P      Prepaid
-- >              Charges are (to be) prepaid before the transport actually
-- >              leaves.
simple4237 :: Parser Value
simple4237 = simple "4237" (alphaNumeric `upTo` 3)
