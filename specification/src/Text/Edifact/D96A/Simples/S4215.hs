{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D96A.Simples.S4215
  ( simple4215
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- >   4215  Transport charges method of payment, coded
-- >
-- >   Desc: Identification of method of payment for transport charges.
-- >
-- >   Repr: an..3
-- >
-- >    A      Account
-- >              The charges are to be charged to an account.
-- >    CA     Advance collect
-- >              The amount of freight or other charge on a shipment
-- >              advanced by one transportation line to another or to the
-- >              shipper, to be collected from consignee.
-- >    CC     Collect
-- >              A shipment on which freight charges will be paid by
-- >              consignee.
-- >    CF     Collect, freight credited to payment customer
-- >              Self explanatory.
-- >    DF     Defined by buyer and seller
-- >              Self explanatory.
-- >    FO     FOB port of call
-- >              Title and control of goods pass to the buyer at port of
-- >              call. Responsibility for export taxes and cost of
-- >              documents for overseas shipments have not been specified.
-- >    IC     Information copy, no payment due
-- >              Transaction set has been provided for information only.
-- >    MX     Mixed
-- >              Self explanatory.
-- >    NC     Service freight, no charge
-- >              Self explanatory.
-- >    NS     Not specified
-- >              Self explanatory.
-- >    PA     Advance prepaid
-- >              Costs have been paid in advance.
-- >    PB     Customer pick-up/backhaul
-- >              Buyer's private carriage picks up the goods as a return
-- >              load to the buyer's facility.
-- >    PC     Prepaid but charged to customer
-- >              shipping charges have been paid in advance of shipment
-- >              but are charged back to consignee usually as line item on
-- >              invoice for the purchased goods.
-- >    PE     Payable elsewhere
-- >              Place of payment not known at the begin of conveyance.
-- >    PO     Prepaid only
-- >              Payment in advance of freight and/or other charges prior
-- >              to delivery of shipment at destination, usually by
-- >              shipper at point of origin.
-- >    PP     Prepaid (by seller)
-- >              Seller of goods makes payment to carrier for freight
-- >              charges prior to shipment.
-- >    PU     Pickup
-- >              Customer is responsible for payment of pickup charges at
-- >              shipping point.
-- >    RC     Return container freight paid by customer
-- >              Self explanatory.
-- >    RF     Return container freight free
-- >              Self explanatory.
-- >    RS     Return container freight paid by supplier
-- >              Self explanatory.
-- >    TP     Third party pay
-- >              A third party, someone other than buyer or seller, is
-- >              identified as responsible for payment of shipping
-- >              charges.
-- >    WC     Weight condition
-- >              Description to be provided.
-- >    ZZZ    Mutually defined
-- >              Self explanatory.
simple4215 :: Parser Value
simple4215 = simple "4215" (alphaNumeric `upTo` 3)
