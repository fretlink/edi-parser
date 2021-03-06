{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D96A.Simples.S5237
  ( simple5237
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- >   5237  Charge category, coded
-- >
-- >   Desc: To indicate the category or zone of charges.
-- >
-- >   Repr: an..3
-- >
-- >         1 All charges
-- >              All amounts calculated by the carrier in accordance with
-- >              tariffs or in case of special events during the voyage
-- >              (e.g. Rail - freights costs - additional costs).
-- >         2 Additional charges
-- >              Charges calculated by the carrier for specific events
-- >              like re-weighting, re-loading, unexpected operations,
-- >              services required during the voyage, etc.
-- >         3 Transport charges + additional charges
-- >              Transport charges plus Additional charges (e.g. for re-
-- >              loading, re-weighting or unexpected operations) that must
-- >              be precised in the payment conditions by the consignor
-- >              (other charges must be taken in account by the
-- >              consignee).
-- >         4 Basic freight
-- >              The basic freight payable on the cargo as per tariff.
-- >         5 Destination haulage charges
-- >              Self explanatory.
-- >         6 Disbursement
-- >              Sums paid out by ship's agent at a port and recovered
-- >              from the carrier.
-- >         7 Destination port charges
-- >              Charges payable at the port of destination.
-- >         8 Miscellaneous charges
-- >              Miscellaneous charges not otherwise categorized.
-- >         9 Transport charges up to a specified location
-- >              Transport charges to be paid by the consignor for a part
-- >              of the voyage, i.e. up to a location that must be
-- >              precised.
-- >        10 Origin port charges
-- >              Charges payable at the port of origin.
-- >        11 Origin haulage charges
-- >              Self explanatory.
-- >        12 Other charges
-- >              Self explanatory.
-- >        13 Specific amount payable
-- >              Amount that the consignor agrees to be invoiced or to
-- >              pay. This amount is part of the total charges applied to
-- >              the consignment.
-- >        14 Transport costs (carriage charges)
-- >              Monetary amount calculated on the basis of the transport
-- >              tariffs or contract eventually including charges or other
-- >              costs.
-- >        15 All costs up to a specified location
-- >              All amounts to be paid by the consignor for a part of the
-- >              voyage, i.e. up to a location that must be precised. (The
-- >              remaining part of the voyage to be paid by the consignee)
-- >              The amounts are calculated by the carrier in accordance
-- >              with tariffs or in case of special events during the
-- >              voyage (e.g. rail - freight costs - additional costs).
-- >        16 Weight/valuation charge
-- >              Code to indicate weight/valuation charges to be either
-- >              wholly prepaid or wholly collect.
-- >        17 All costs
-- >              Description to be provided.
-- >        18 Transport costs and supplementary costs
-- >              Description to be provided.
simple5237 :: Parser Value
simple5237 = simple "5237" (alphaNumeric `upTo` 3)
