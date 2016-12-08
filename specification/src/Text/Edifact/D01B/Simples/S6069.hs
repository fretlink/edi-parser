{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D01B.Simples.S6069
  ( simple6069
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- >      6069  Control total type code qualifier                       [B]
-- >
-- >      Desc: Code qualifying the type of control of hash total.
-- >
-- >      Repr: an..3
-- >
-- >      1     Algebraic total of the quantity values in line items in a
-- >            message
-- >               Self-explanatory.
-- >
-- >      2     Number of line items in message
-- >               Self-explanatory.
-- >
-- >      3     Number of line and sub items in message
-- >               Total number of line and sub items in the message.
-- >
-- >      4     Number of invoice lines
-- >               Number of lines on an invoice.
-- >
-- >      5     Number of Customs item detail lines
-- >               Total number of occurrences of the Customs item detail
-- >               section within a single Customs declaration message.
-- >
-- >      6     Number of Customs entries
-- >               Number of entries which are subject to the same Customs
-- >               procedures, and have the same tariff or statistical
-- >               heading, country and duty regime.
-- >
-- >      7     Total gross weight
-- >               Code to indicate total gross weight of a consignment.
-- >
-- >      8     Total pieces
-- >               Total number of pieces.
-- >
-- >      9     Total number of ULD (Unit Load Device)
-- >               The total number of Unit Load Devices mentioned in the
-- >               message.
-- >
-- >      10    Total number of consignments
-- >               The total number of consignments.
-- >
-- >      11    Total number of packages
-- >               [7370] Total number of packages of the entire
-- >               consignment.
-- >
-- >      12    Invoice total amount
-- >               [5444] Total sum charged in respect of one or more
-- >               Invoices in accordance with the terms of delivery.
-- >
-- >      13    Number of loading lists
-- >               [1166] Number of loading lists, manifests or other
-- >               similar specifications attached to a document.
-- >
-- >      14    Number of Customs commercial detail lines
-- >               Commercial detail section within a single Customs
-- >               declaration message.
-- >
-- >      15    Total consignment, cube
-- >               The total cube of consignment.
-- >
-- >      16    Total number of equipment
-- >               Total number of equipment mentioned in the message.
-- >
-- >      17    Declared total Customs value
-- >               [5070] Total value declared for Customs purposes of all
-- >               goods in a consignment, whether or not they are subject
-- >               to the same Customs procedure, or have the same
-- >               tariff/statistical heading, country information, and
-- >               duty regime.
-- >
-- >      18    Total reported quantity in net weight
-- >               Total reported quantity in net weight.
-- >
-- >      19    Total reported quantity in supplementary units
-- >               Total reported quantity in supplementary units.
-- >
-- >      20    Total reported invoice(s) value
-- >               Hash total of the total monetary amounts reported on the
-- >               invoices.
-- >
-- >      21    Total reported ancillary costs
-- >               Hash total of the reported total extra costs (e.g.
-- >               carriage, freight, insurance) of all invoices.
-- >
-- >      22    Total reported statistical value
-- >               The total reported statistical value.
-- >
-- >      23    Total ordered quantity
-- >               Total quantity ordered in this message.
-- >
-- >      24    Number of orders referenced in this message
-- >               Total number of order messages or documents referenced
-- >               in this message.
-- >
-- >      25    Number of rejected order lines
-- >               Total number of rejected order lines in this message.
-- >
-- >      26    Total gross measurement/cube
-- >               Total gross cubic measurement of the goods, including
-- >               packing but excluding transport equipment.
-- >
-- >      27    Total number of credit items given for control purposes
-- >               Total number of credit items given for control purposes.
-- >
-- >      28    Total number of debit items given for control purposes
-- >               Total number of debit items given for control purposes.
-- >
-- >      29    Total net weight of consignment
-- >               A code to indicate the total net weight of a
-- >               consignment.
-- >
-- >      30    Total number of empty containers
-- >               The total number of empty containers mentioned in the
-- >               message.
-- >
-- >      31    Number of messages
-- >               Control count of the number of messages referenced.
-- >
-- >      32    Total gross weight of the goods within the means of
-- >            transport
-- >               Weight (mass) of the goods within the means of
-- >               transport, including packing and excluding the carrier's
-- >               equipment.
-- >
-- >      33    Total number of original Bills of Lading
-- >               Total number of the original Bills of Lading required
-- >               for the consignment.
-- >
-- >      34    Total number of copy Bills of Lading
-- >               Total number of copy Bills of Lading required for the
-- >               consignment.
-- >
-- >      35    Number of containers to be discharged
-- >               Number of containers to be discharged from the means of
-- >               transport.
-- >
-- >      36    Number of containers to be loaded
-- >               Number of containers to be loaded in or on the means of
-- >               transport.
-- >
-- >      37    Number of containers to be restowed
-- >               Number of containers to be restowed from one cell
-- >               position to another.
-- >
-- >      38    Number of containers to be shifted
-- >               Number of containers to be shifted from one cell
-- >               position to another.
-- >
-- >      39    Total number of individual transactions
-- >               The total number of individual transactions.
-- >
-- >      40    Total number of sequence details in message
-- >               The total number of sequence details in the message.
-- >
-- >      41    Total number of crew
-- >               The total number of crew.
-- >
-- >      42    Total number of passengers
-- >               The total number of passengers aboard the conveyance.
-- >
-- >      43    Total number of work tasks
-- >               Total number of work tasks in the message.
-- >
-- >      44    Total number of milestones
-- >               Total number of milestones in the message.
-- >
-- >      45    Total number of available resources
-- >               Total number of available resources in the message.
-- >
-- >      46    Total number of constraints
-- >               Total number of constraints in the message.
-- >
-- >      47    Total wholesaler unsold quantity
-- >               Total quantity of unsold goods held by the wholesaler.
-- >
-- >      48    Total quantity held by delivery vehicles
-- >               Total quantity held by the delivery vehicles.
-- >
-- >      49    Total quantity held by retail outlets
-- >               Total quantity held by the retail outlets.
-- >
-- >      50    Total rejected return quantity
-- >               The total quantity for return which have been rejected.
-- >
-- >      51    Number of goods items in the message
-- >               The total number of goods items in a message.
-- >
-- >      52    Number of patients
-- >               The number of patients reported in a message.
-- >
-- >      53    Hash total of reported debit items
-- >               Hash total of the values of all the debit item amounts
-- >               reported in the message.
-- >
-- >      54    Hash total of reported credit items
-- >               Hash total of the values of all the credit item amounts
-- >               reported in the message.
-- >
-- >      55    Total number of errors reported
-- >               Total number of errors reported.
-- >
-- >      56    Total number of transport units
-- >               Number of separate units of cargo handled during
-- >               transportation of a consignment.
-- >
-- >      57    Total loading metres
-- >               The total number of loading metres.
simple6069 :: Parser Value
simple6069 = simple "6069" (alphaNumeric `upTo` 3)
