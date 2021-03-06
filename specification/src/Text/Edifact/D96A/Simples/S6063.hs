{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D96A.Simples.S6063
  ( simple6063
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- > * 6063  Quantity qualifier
-- >
-- >   Desc: Code giving specific meaning to a quantity.
-- >
-- >   Repr: an..3
-- >
-- >         1 Discrete quantity
-- >              Self explanatory.
-- >         2 Charge
-- >              Quantity relevant for charge.
-- >         3 Cumulative quantity
-- >              Self explanatory.
-- >         8 Inventory quantity at supplier's subject to inspection by
-- >           customer
-- >              Quantity of goods which the customer requires the
-- >              supplier to have in inventory and which may be inspected
-- >              by the customer if desired.
-- >        11 Split quantity
-- >              Part of the whole quantity.
-- >        12 Despatch quantity
-- >              Quantity despatched by the seller.
-- >        17 Quantity on hand
-- >              Self explanatory.
-- >        18 Previous quantity
-- >              Quantity previously referenced.
-- >        20 Unusable quantity
-- >              Self explanatory.
-- >        21 Ordered quantity
-- >              The quantity which has been ordered.
-- >        22 Quantity at 100%
-- >              Equivalent quantity at 100% purity.
-- >        23 Active ingredient
-- >              Quantity at 100% active agent content.
-- >        24 Inventory quantity at supplier's not subject to inspection
-- >           by customer
-- >              Quantity of goods which the customer requires the
-- >              supplier to have in inventory but which will not be
-- >              checked by the customer.
-- >        25 Retail sales
-- >              Quantity of retail point of sale activity.
-- >        26 Promotion quantity
-- >              A quantity associated with a promotional event.
-- >        27 On hold for shipment
-- >              Article received which cannot be shipped in its present
-- >              form.
-- >        28 Military sales quantity
-- >              Quantity of goods or services sold to a military
-- >              organization.
-- >        29 On premises sales
-- >              Sale of product in restaurants or bars.
-- >        30 Off premises sales
-- >              Sale of product directly to a store.
-- >        31 Estimated annual volume
-- >              Self explanatory.
-- >        32 Minimum delivery batch
-- >              Self explanatory.
-- >        33 Maximum delivery batch
-- >              Self explanatory.
-- >        35 Price break from
-- >              The minimum quantity of a quantity range for a specified
-- >              (unit) price.
-- >        36 Price break to
-- >              Description to be provided.
-- >        40 Normal delivery
-- >              Quantity normally delivered by the seller.
-- >        46 Pieces delivered
-- >              Number of pieces actually received at the final
-- >              destination.
-- >        47 Invoiced quantity
-- >              The quantity as per invoice.
-- >        48 Received quantity
-- >              The quantity which has been received.
-- >        49 Chargeable distance
-- >              Distance really charged by tariff appliance.
-- >        50 Disposition undetermined quantity
-- >              Product quantity that has not yet had its disposition
-- >              determined.
-- >        51 Inventory category transfer
-- >              Inventory that has been moved from one inventory category
-- >              to another.
-- >        52 Quantity per pack
-- >              Self explanatory.
-- >        53 Minimum order quantity
-- >              Self explanatory.
-- >        54 Maximum order quantity
-- >              Self explanatory.
-- >        55 Total sales
-- >              The summation of total quantity sales.
-- >        56 Wholesaler to wholesaler sales
-- >              Sale of product to other wholesalers by a wholesaler.
-- >        57 In transit quantity
-- >              A quantity that is enroute.
-- >        58 Quantity withdrawn
-- >              Quantity withdrawn from a location.
-- >        59 Numbers of consumer units in the traded unit
-- >              Self explanatory.
-- >        60 Current inventory quantity available for shipment
-- >              Current inventory quantity available for shipment.
-- >        61 Return quantity
-- >              Self explanatory.
-- >        62 Sorted quantity
-- >              Description to be provided.
-- >        63 Sorted quantity rejected
-- >              Description to be provided.
-- >        64 Scrap quantity
-- >              Remainder of the total quantity after split deliveries.
-- >        65 Destroyed quantity
-- >              Self explanatory.
-- >        66 Committed quantity
-- >              Quantity a party is committed to.
-- > +      67 Estimated reading quantity
-- >              The value that is estimated to be the reading of a
-- >              measuring device (e.g. meter).
-- > +      68 End quantity
-- >              The quantity recorded at the end of an agreement or
-- >              period.
-- > +      69 Start quantity
-- >              The quantity recorded at the start of an agreement or
-- >              period.
-- >        70 Cumulative quantity received
-- >              Cumulative quantity of all deliveries of this article
-- >              received by the buyer.
-- >        71 Cumulative quantity ordered
-- >              Cumulative quantity of all deliveries, outstanding and
-- >              scheduled orders.
-- >        72 Cumulative quantity received end of prior year
-- >              Cumulative quantity of all deliveries of the product
-- >              received by the buyer till end of prior year.
-- >        73 Outstanding quantity
-- >              Difference between quantity ordered and quantity
-- >              received.
-- >        74 Latest cumulative quantity
-- >              Cumulative quantity after complete delivery of all
-- >              scheduled quantities of the product.
-- >        75 Previous highest cumulative quantity
-- >              Cumulative quantity after complete delivery of all
-- >              scheduled quantities of the product from a prior schedule
-- >              period.
-- > +      76 Adjusted corrector reading
-- >              A corrector reading after it has been adjusted.
-- >        77 Work days
-- >              Number of work days, e.g. per respective period.
-- >        78 Cumulative quantity scheduled
-- >              Adding the quantity actually scheduled to previous
-- >              cumulative quantity.
-- >        79 Previous cumulative quantity
-- >              Cumulative quantity prior the actual order.
-- > +      80 Unadjusted corrector reading
-- >              A corrector reading before it has been adjusted.
-- >        81 Extra unplanned delivery
-- >              Non scheduled additional quantity.
-- >        82 Quantity requirement for sample inspection
-- >              Self explanatory.
-- >        83 Backorder quantity
-- >              Self explanatory.
-- >        84 Urgent delivery quantity
-- >              Self explanatory.
-- >        85 Previous order quantity to be cancelled
-- >              Self explanatory.
-- > +      86 Normal reading quantity
-- >              The value recorded or read from a measuring device (e.g.
-- >              meter) in the normal conditions.
-- > +      87 Customer reading quantity
-- >              The value recorded or read from a measuring device (e.g.
-- >              meter) by the customer.
-- > +      88 Information reading quantity
-- >              The value recorded or read from a measuring device (e.g.
-- >              meter) for information purposes.
-- > +      89 Quality control held
-- >              Quantity of goods held pending completion of a quality
-- >              control assessment.
-- >        90 As is quantity
-- >              Self explanatory.
-- >        91 Open quantity
-- >              Quantity remaining after partial delivery.
-- >        92 Final delivery quantity
-- >              Quantity of final delivery to a respective order.
-- >        93 Subsequent delivery quantity
-- >              Quantity delivered to a respective order after it's final
-- >              delivery.
-- >        94 Substitutional quantity
-- >              Quantity delivered replacing previous deliveries.
-- >        95 Redelivery after post processing
-- >              Self explanatory.
-- > +      96 Quality control failed
-- >              Quantity of goods which have failed quality control.
-- > +      97 Minimum inventory
-- >              Minimum stock quantity on which replenishment is based.
-- > +      98 Maximum inventory
-- >              Maximum stock quantity on which replenishment is based.
-- >        99 Estimated quantity
-- >              Self explanatory.
-- >       100 Chargeable weight
-- >              The weight on which charges are based.
-- >       101 Chargeable gross weight
-- >              The gross weight on which charges are based.
-- >       102 Chargeable tare weight
-- >              The tare weight on which charges are based.
-- >       103 Chargeable number of axles
-- >              The number of axles on which charges are based.
-- >       104 Chargeable number of containers
-- >              The number of containers on which charges are based.
-- >       105 Chargeable number of rail wagons
-- >              The number of rail wagons on which charges are based.
-- >       106 Chargeable number of packages
-- >              The number of packages on which charges are based.
-- >       107 Chargeable number of units
-- >              The number of units on which charges are based.
-- >       108 Chargeable period
-- >              The period of time on which charges are based.
-- >       109 Chargeable volume
-- >              The volume on which charges are based.
-- >       110 Chargeable cubic measurements
-- >              The cubic measurements on which charges are based.
-- >       111 Chargeable surface
-- >              The surface area on which charges are based.
-- >       112 Chargeable length
-- >              The length on which charges are based.
-- >       113 Quantity to be delivered
-- >              The quantity to be delivered.
-- >       114 Number of passengers
-- >              Total number of passengers on the conveyance.
-- >       115 Number of crew
-- >              Total number of crew members on the conveyance.
-- >       116 Number of transport documents
-- >              Total number of air waybills, bills of lading, etc.
-- >              being reported for a specific conveyance.
-- >       117 Quantity landed
-- >              Quantity of goods actually arrived.
-- >       118 Quantity manifested
-- >              Quantity of goods contracted for delivery by the carrier.
-- >       119 Short shipped
-- >              Indication that part of the consignment was not shipped.
-- >       120 Split shipment
-- >              Indication that the consignment has been split into two
-- >              or more shipments.
-- >       121 Over shipped
-- >              Indication that more goods have been shipped than
-- >              contracted for delivery.
-- >       122 Short-landed goods
-- >              If quantity of goods actually landed is less than the
-- >              quantity which appears in the documentation. This
-- >              quantity is the difference between these quantities.
-- >       123 Surplus goods
-- >              If quantity of goods actually landed is more than the
-- >              quantity which appears in the documentation. This
-- >              quantity is the difference between these quantities.
-- >       124 Damaged goods
-- >              Quantity of goods which have deteriorated in transport
-- >              such that they cannot be used for the purpose for which
-- >              they were originally intended.
-- >       125 Pilferage goods
-- >              Quantity of goods stolen during transport.
-- >       126 Lost goods
-- >              Quantity of goods that disappeared in transport.
-- >       127 Report difference
-- >              The quantity concerning the same transaction differs
-- >              between two documents/messages and the source of this
-- >              difference is a typing error.
-- >       128 Quantity loaded
-- >              Quantity of goods loaded onto a means of transport.
-- >       129 Units per unit price
-- >              Number of units per unit price.
-- >       130 Allowance
-- >              Quantity relevant for allowance.
-- >       131 Delivery quantity
-- >              Quantity required by buyer to be delivered.
-- >       132 Cumulative quantity, preceding period, planned
-- >              Cumulative quantity originally planned for the preceding
-- >              period.
-- >       133 Cumulative quantity, preceding period, reached
-- >              Cumulative quantity reached in the preceding period.
-- >       134 Cumulative quantity, actual planned
-- >              Cumulative quantity planned for now.
-- >       135 Period quantity, planned
-- >              Quantity planned for this period.
-- >       136 Period quantity, reached
-- >              Quantity reached during this period.
-- >       137 Cumulative quantity, preceding period, estimated
-- >              Estimated cumulative quantity reached in the preceding
-- >              period.
-- >       138 Cumulative quantity, actual estimated
-- >              Estimated cumulative quantity reached now.
-- >       139 Cumulative quantity, preceding period, measured
-- >              Surveyed cumulative quantity reached in the preceding
-- >              period.
-- >       140 Cumulative quantity, actual measured
-- >              Surveyed cumulative quantity reached now.
-- >       141 Period quantity, measured
-- >              Surveyed quantity reached during this period.
-- >       142 Total quantity, planned
-- >              Total quantity planned.
-- >       143 Quantity, remaining
-- >              Quantity remaining.
-- >       144 Tolerance
-- >              Plus or minus tolerance expressed as a monetary amount.
-- >       145 Actual stock
-- >              The stock on hand, undamaged, and available for despatch,
-- >              sale or use.
-- >       146 Model or target stock
-- >              The stock quantity required or planned to have on hand,
-- >              undamaged and available for use.
-- >       147 Direct shipment quantity
-- >              Quantity to be shipped directly to a customer from a
-- >              manufacturing site.
-- >       148 Amortization total quantity
-- >              Indication of final quantity for amortization.
-- >       149 Amortization order quantity
-- >              Indication of actual share of the order quantity for
-- >              amortization.
-- >       150 Amortization cumulated quantity
-- >              Indication of actual cumulated quantity of previous and
-- >              actual amortization order quantity.
-- >       151 Quantity advised
-- >              Quantity advised by supplier or shipper, in contrast to
-- >              quantity actually received.
-- >       152 Quantity on hand
-- >              The total quantity of a product on hand at a location.
-- >              This includes as well units awaiting return to
-- >              manufacturer, units unavailable due to inspection
-- >              procedures and undamaged stock available for despatch,
-- >              resale or use.
-- >       153 Statistical sales quantity
-- >              Quantity of goods sold in a specified period.
-- >       154 Sales quantity planned
-- >              Quantity of goods required to meet future demands. -
-- >              Market intelligence quantity.
-- >       155 Replenishment quantity
-- >              Quantity required to maintain the requisite on-hand stock
-- >              of goods.
-- >       156 Inventory movement quantity
-- >              To specify the quantity of an inventory movement.
-- >       157 Opening stock balance quantity
-- >              To specify the quantity of an opening stock balance.
-- >       158 Closing stock balance quantity
-- >              To specify the quantity of a closing stock balance.
-- >       159 Number of stops
-- >              Number of times a means of transport stops before
-- >              arriving at destination.
-- >       160 Minimum production batch
-- >              The quantity specified is the minimum output from a
-- >              single production run.
-- >       161 Dimensional sample quantity
-- >              The quantity defined is a sample for the purpose of
-- >              validating dimensions.
-- >       162 Functional sample quantity
-- >              The quantity defined is a sample for the purpose of
-- >              validating function and performance.
-- >       163 Pre-production quantity
-- >              Quantity of the referenced item required prior to full
-- >              production.
-- >       164 Delivery batch
-- >              Quantity of the referenced item which constitutes a
-- >              standard batch for deliver purposes.
-- >       165 Delivery batch multiple
-- >              The multiples in which delivery batches can be supplied.
-- >       166 All time buy
-- >              The total quantity of the referenced covering all future
-- >              needs. Further orders of the referenced item are not
-- >              expected.
-- >       167 Total delivery quantity
-- >              The total quantity required by the buyer to be delivered.
-- >       168 Single delivery quantity
-- >              The quantity required by the buyer to be delivered in a
-- >              single shipment.
-- >       169 Supplied quantity
-- >              Quantity of the referenced item actually shipped.
-- >       170 Allocated quantity
-- >              Quantity of the referenced item allocated from available
-- >              stock for delivery.
-- >       171 Maximum stackability
-- >              The number of pallets/handling units which can be safely
-- >              stacked one on top of another.
-- >       172 Amortisation quantity
-- >              The quantity of the referenced item which has a cost for
-- >              tooling amortisation included in the item price.
-- >       173 Previously amortised quantity
-- >              The cumulative quantity of the referenced item which had
-- >              a cost for tooling amortisation included in the item
-- >              price.
-- >       174 Total amortisation quantity
-- >              The total quantity of the referenced item which has a
-- >              cost for tooling amortisation included in the item price.
-- >       175 Number of moulds
-- >              The number of pressing moulds contained within a single
-- >              piece of the referenced tooling.
-- >       176 Concurrent item output of tooling
-- >              The number of related items which can be produced
-- >              simultaneously with a single piece of the referenced
-- >              tooling.
-- >       177 Periodic capacity of tooling
-- >              Maximum production output of the referenced tool over a
-- >              period of time.
-- >       178 Lifetime capacity of tooling
-- >              Maximum production output of the referenced tool over its
-- >              productive lifetime.
-- >       179 Number of deliveries per despatch period
-- >              The number of deliveries normally expected to be
-- >              despatched within each despatch period.
-- >       180 Provided quantity
-- >              The quantity of a referenced component supplied by the
-- >              buyer for manufacturing of an ordered item.
-- >       181 Maximum production batch
-- >              The quantity specified is the maximum output from a
-- >              single production run.
-- >       182 Cancelled quantity
-- >              Quantity of the referenced item which has previously
-- >              been ordered and is now cancelled.
-- >       183 No delivery requirement in this instruction
-- >              This delivery instruction does not contain any delivery
-- >              requirements.
-- >       184 Quantity of material in ordered time
-- >              Quantity of the referenced material within the ordered
-- >              time.
-- >       185 Rejected quantity
-- >              The quantity of received goods rejected for quantity
-- >              reasons.
-- >       186 Cumulative quantity scheduled up to accumulation start date
-- >              The cumulative quantity scheduled up to the accumulation
-- >              start date.
-- >       187 Quantity scheduled
-- >              The quantity scheduled for delivery.
-- >       188 Number of identical handling units
-- >              Number of identical handling units in terms of type and
-- >              contents.
-- >       189 Number of packages in handling unit
-- >              The number of packages contained in one handling unit.
-- >       190 Despatch note quantity
-- >              The item quantity specified on the despatch note.
-- >       191 Adjustment to inventory quantity
-- >              An adjustment to inventory quantity.
-- > +     192 Free goods quantity
-- >              Quantity of goods which are free of charge.
-- > +     193 Free quantity included
-- >              Free quantity included in ordered quantity.
-- > +     194 Received and accepted
-- >              Quantity which has been received and accepted at a given
-- >              location.
-- > +     195 Received, not accepted, to be returned
-- >              Quantity which has been received but not accepted at a
-- >              given location and which will consequently be returned to
-- >              the relevant party.
-- > +     196 Received, not accepted, to be destroyed
-- >              Quantity which has been received but not accepted at a
-- >              given location and which will consequently be destroyed.
-- > +     197 Reordering level
-- >              Quantity at which an order may be triggered to replenish.
-- > +     198 Quantity in transit
-- >              Quantity which is currently in transit.
-- > +     199 Inventory withdrawal quantity
-- >              Quantity which has been withdrawn from inventory since
-- >              the last inventory report.
-- > +     200 Free quantity not included
-- >              Free quantity not included in ordered quantity.
simple6063 :: Parser Value
simple6063 = simple "6063" (alphaNumeric `upTo` 3)
