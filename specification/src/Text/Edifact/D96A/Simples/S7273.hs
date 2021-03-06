{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D96A.Simples.S7273
  ( simple7273
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- >   7273  Service requirement, coded
-- >
-- >   Desc: Identification of a service requirement (which may constitute
-- >         an additional component to a basic contract).
-- >
-- >   Repr: an..3
-- >
-- >         1 Carrier loads
-- >              The cargo is loaded in the equipment by the carrier.
-- >         2 Full loads
-- >              Container to be stuffed or stripped under responsibility
-- >              and for account of the shipper or the consignee.
-- >         3 Less than full loads
-- >              Container to be stuffed and stripped for account and risk
-- >              of the carrier.
-- >         4 Shipper loads
-- >              The cargo is loaded in the equipment by the shipper.
-- >         5 To be delivered
-- >              The cargo is to be delivered as instructed.
-- >         6 To be kept
-- >              The cargo is to be retained awaiting further
-- >              instructions.
-- >         7 Transhipment allowed
-- >              Transhipment of goods is allowed.
-- >         8 Transhipment not allowed
-- >              Transhipment of goods is not allowed.
-- >         9 Partial shipment allowed
-- >              Partial shipment is allowed.
-- >        10 Partial shipment not allowed
-- >              Partial shipment is not allowed.
-- >        11 Partial shipment and/or drawing allowed
-- >              Partial shipment and/or drawing is allowed.
-- >        12 Partial shipment and/or drawing not allowed
-- >              Partial shipment and/or drawing is not allowed.
-- >        13 Carrier unloads
-- >              The cargo is to be unloaded from the equipment by the
-- >              carrier.
-- >        14 Shipper unloads
-- >              The cargo is to be unloaded from the equipment by the
-- >              shipper.
-- >        15 Consignee unloads
-- >              The cargo is to be unloaded from the equipment by the
-- >              consignee.
-- >        16 Consignee loads
-- >              The cargo is to be loaded in the equipment by the
-- >              consignee.
-- >        17 Exclusive usage of equipment
-- >              Usage of the equipment is reserved for exclusive use.
-- >        18 Non exclusive usage of equipment
-- >              Usage of the equipment is not reserved for exclusive use.
simple7273 :: Parser Value
simple7273 = simple "7273" (alphaNumeric `upTo` 3)
