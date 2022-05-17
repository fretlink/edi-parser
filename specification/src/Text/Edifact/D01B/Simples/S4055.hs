{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D01B.Simples.S4055
  ( simple4055
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- >      4055  Delivery or transport terms function code               [B]
-- >
-- >      Desc: Code specifying the function of delivery or transport
-- >            terms.
-- >
-- >      Repr: an..3
-- >
-- >      1     Price condition
-- >               Specifies a condition related to the price which a
-- >               seller must fulfil before the buyer will complete a
-- >               purchase.
-- >
-- >      2     Despatch condition
-- >               Condition requested by the customer under which the
-- >               supplier shall deliver: Extent of freight costs, means
-- >               of transport.
-- >
-- >      3     Price and despatch condition
-- >               Condition related to price and despatch that the seller
-- >               must complete before the customer will agree payment.
-- >
-- >      4     Collected by customer
-- >               Indicates that the customer will pick up the goods at
-- >               the supplier. He will take care of the means of
-- >               transport.
-- >
-- >      5     Transport condition
-- >               Specifies the conditions under which the transport takes
-- >               place under the responsibility of the carrier.
-- >
-- >      6     Delivery condition
-- >               Specifies the conditions under which the goods must be
-- >               delivered to the consignee.
simple4055 :: Parser Value
simple4055 = simple "4055" (alphaNumeric `upTo` 3)
