{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D96A.Simples.S9011
  ( simple9011
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- >   9011  Status event, coded
-- >
-- >   Desc: Code identifying a status event.
-- >
-- >   Repr: an..3
-- >
-- >         1 Arrived
-- >              The means of transport has arrived at a location.
-- >         2 Authorized to load
-- >              Permission to load has been given by the responsible
-- >              party.
-- >         3 Arrived in defective condition
-- >              Goods/consignments/equipment have been received or a
-- >              means of transport has arrived in a defective condition.
-- >         4 Defective equipment release
-- >              Equipment previously the subject of a 'defective
-- >              condition' status has been returned to service.
-- >         5 Begun
-- >              The process has begun.
-- >         6 Booked
-- >              Goods/consignments/equipment or means of transport have
-- >              been booked for subsequent movements.
-- >         7 Booking cancelled
-- >              The booking of goods/consignments/equipment or means of
-- >              transport previously booked has been cancelled.
-- >         8 Cleared import restrictions
-- >              Goods/consignments/equipment held for import restriction
-- >              purposes have been released for import.
-- >         9 Cleared export restrictions
-- >              Goods/consignments/equipment held prior to loading have
-- >              now been cleared for export.
-- >        10 Cleared by agriculture, food or fisheries authorities
-- >              Goods/consignments/equipment have been held prior to
-- >              shipment and are now cleared for shipment following
-- >              examination by relevant authority.
-- >        11 Cleared by port authority
-- >              The port authority has given permission for the
-- >              goods/consignments/equipment/means of transport to leave
-- >              the port.
-- >        12 Cleared by customs
-- >              Customs have cleared goods/consignments for
-- >              import/export.
-- >        13 Collected
-- >              Goods/consignments/equipment have been collected from a
-- >              predetermined location.
-- >        14 Completed
-- >              The process has been completed.
-- >        15 Consolidated
-- >              Goods/consignments have been added to other goods/
-- >              consignments to form a larger consignment and/or have
-- >              been incorporated into one or more containers/units.
-- >        16 Crossed border
-- >              Goods/consignments/equipment have crossed a border from
-- >              one country to another.
-- >        17 Customs refusal
-- >              The Customs authorities have refused to clear the
-- >              goods/consignments/equipment.
-- >        18 Damaged
-- >              Goods/consignments/equipment have been damaged in the
-- >              course of transportation.
-- >        19 Damaged equipment quoted
-- >              Damaged equipment has been assessed and the quotation
-- >              sent to lessor.
-- >        20 Delayed
-- >              Goods/consignments/equipment have been delayed in the
-- >              course of transportation.
-- >        21 Delivered
-- >              The goods/consignments/equipment have been delivered to a
-- >              location/party in the transport chain.
-- >        22 Delivery completed
-- >              Delivery of the goods/consignments/equipment has been
-- >              completed as per instructions.
-- >        23 Delivery not completed
-- >              Delivery of the goods/consignments/equipment has not been
-- >              completed in accordance with instructions.
-- >        24 Departed
-- >              The means of transport has departed from a location in
-- >              the transport chain.
-- >        25 Departure delay
-- >              The transport has been delayed in departing on the
-- >              arranged transport action.
-- >        26 Deramped
-- >              Equipment has been removed from a position above other
-- >              equipment on a means of transport.
-- >        27 Despatched
-- >              The goods/consignments/equipment have departed from a
-- >              location in the transport chain.
-- >        28 Stripped
-- >              The goods/consignments/equipment have been unloaded from
-- >              equipment in which they were transported.
-- >        29 Discharged
-- >              The goods/consignments/equipment have been unloaded from
-- >              a means of transport.
-- >        30 Empty on inspection
-- >              The package/equipment has been found to be empty.
-- >        31 En route
-- >              The goods/consignments/equipment are in the normal course
-- >              of transportation to the next destination.
-- >        32 Equipment in from repair
-- >              A piece of equipment has been received in after having
-- >              been sent out for repair.
-- >        33 Equipment out for repair
-- >              A piece of equipment has been sent out for repair.
-- >        34 Equipment repaired
-- >              A damaged piece of equipment has been repaired.
-- >        35 Expedited to destination
-- >              The goods/consignments/equipment have been expedited to
-- >              the next/final destination in the transport chain.
-- >        36 Not found
-- >              The goods/consignments/equipment notified to be missing
-- >              have not been located.
-- >        37 Found
-- >              The goods/consignments/equipment previously notified
-- >              missing have now been located.
-- >        38 Freight paid
-- >              The freight charges on goods/consignments/equipment have
-- >              been paid.
-- >        39 From bond
-- >              The goods/consignments/equipment have been moved/are
-- >              available to be moved from bond.
-- >        40 Goods/consignments/equipment at port
-- >              The goods/consignments/equipment have arrived/are
-- >              available at port.
-- >        41 Handover
-- >              The goods/consignments/equipment have been formally
-- >              passed from one point in the transport chain to another
-- >              under responsibility of the same transporter. (See also
-- >              'handover delivered'.)
-- >        42 Handover delivered
-- >              The goods/consignments/equipment from one transport
-- >              operator have been passed to another transport operator.
-- >              (see also 'handover'.)
-- >        43 Handover received
-- >              The goods/consignments/equipment have been received by
-- >              one transport operator from another transport operator.
-- >        44 Ill-routed consignment reforwarded
-- >              The goods/consignments/equipment which were previously
-- >              sent to a wrong destination are on the way to correct
-- >              destination.
-- >        45 Informed Consignee of arrival
-- >              The consignee has been informed formally of the arrival
-- >              at a transit or final destination of
-- >              goods/consignments/equipment.
-- >        46 Into bond
-- >              The goods/consignments/equipment have been moved/is
-- >              available to be moved into bond.
-- >        47 Into packing depot
-- >              The goods/consignments/equipment have been moved into a
-- >              LCL (less than container load)/packing depot.
-- >        48 Loaded
-- >              The goods/consignments/equipment have been loaded onto a
-- >              means of transport.
-- >        49 Lost
-- >              The goods/consignments/equipment have been lost in the
-- >              course of a movement along the transport chain.
-- >        50 Manifested
-- >              The goods/consignments/equipment have been included on
-- >              the list of units moving from one location to another in
-- >              the transport chain.
-- >        51 Means of transport damaged
-- >              The means of transport on which the
-- >              goods/consignments/equipment was being (was to be) moved
-- >              has been damaged.
-- >        52 Mechanical breakdown
-- >              There has been a mechanical breakdown of the means of
-- >              transport/equipment on which the
-- >              goods/consignments/equipment was being (was to be) moved.
-- >        53 No pick-up
-- >              The goods/consignments/equipment expected to be picked up
-- >              and conveyed from location to location in the transport
-- >              chain have not been picked up.
-- >        54 Not identified
-- >              The goods/consignments/equipment expected to be located
-- >              and identified in the transport chain cannot be
-- >              identified.
-- >        55 Not collected
-- >              The goods/consignments/equipment expected to be collected
-- >              after transportation have not been collected.
-- >        56 Not delivered
-- >              The goods/consignments/equipment have not been delivered.
-- >        57 Not loaded
-- >              The goods/consignments/equipment to be loaded onto a
-- >              means of transport have not been loaded on the expected
-- >              transport.
-- >        58 Off hire
-- >              Equipment previously under hire to a customer has been
-- >              returned to the lessor and the contract has been
-- >              terminated.
-- >        59 Off loaded
-- >              The goods/consignments/equipment previously loaded to a
-- >              means of transport have been removed from that means of
-- >              transport before completion of the planned transport.
-- >        60 On hire
-- >              Equipment has been hired out to a hirer/customer.
-- >        61 Outstanding claims settled
-- >              Outstanding claims in respect of
-- >              goods/consignments/equipment have been settled.
-- >        62 Over landed
-- >              Goods/consignments/equipment have been discharged from a
-- >              means of transport at a specific location when they were
-- >              not expected to be discharged.
-- >        63 Package not ready
-- >              The package was not available for collection.
-- >        64 Pick-up awaited
-- >              Goods/consignments/equipment are awaiting pick-up.
-- >        65 Plugged equipment
-- >              Equipment, e.g. a refrigerated container, has been
-- >              plugged into the power source.
-- >        66 Plundered
-- >              The goods/consignments/equipment have been plundered.
-- >        67 Positioned goods/consignments/equipment
-- >              Goods/consignments/equipment have been positioned on a
-- >              means of transport.
-- >        68 Pre-informed
-- >              The consignor/consignee has been advised in advance of a
-- >              transport action.
-- >        69 Put to refuse
-- >              The goods/consignments/equipment have been written off
-- >              and disposed of.
-- >        70 Ramped equipment
-- >              Equipment has been placed above other equipment and
-- >              placed on a means of transport.
-- >        71 Ready for transportation
-- >              Goods/consignments/equipment have been made ready for
-- >              transportation.
-- >        72 Receipt fully acknowledged
-- >              The consignee has given full acknowledgement for the
-- >              receipt of goods.
-- >        73 Receipt partially acknowledged
-- >              The consignee has not given full acknowledgement for the
-- >              receipt of goods.
-- >        74 Received
-- >              Goods/consignments/equipment have been received at a
-- >              location/party in the transport chain.
-- >        75 Reconsigned
-- >              Goods/consignments/equipment have been consigned to a
-- >              party other than the original or subsequent consignees.
-- >        76 Reforwarding on request
-- >              The goods/consignments/equipment which have been delayed
-- >              will be/have been reforwarded on request by appropriate
-- >              authority.
-- >        77 Refused without reason given
-- >              The transport action/documentation has been refused
-- >              without explanation.
-- >        78 Released
-- >              Goods/consignments/equipment have been released to an
-- >              authorized party.
-- >        79 Reloaded
-- >              Goods/consignments/equipment have been reloaded onto a
-- >              means of transport.
-- >        80 Returned as instructed
-- >              The goods/consignments/equipment have been returned to a
-- >              location as per instructions.
-- >        81 Returned as wreck
-- >              The goods/consignments/equipment have been returned in a
-- >              wrecked condition to a location as per instructions.
-- >        82 Returned
-- >              Goods/consignments/equipment have been returned to a
-- >              previous location.
-- >        83 Sealed equipment
-- >              The equipment has been sealed according to operational
-- >              and governmental requirements.
-- >        84 Service ordered
-- >              A service has been ordered in relation to the
-- >              transportation of goods/consignments/equipment.
-- >        85 Short landed
-- >              Goods/consignments/equipment expected to be discharged
-- >              from a means of transport at a specific location have not
-- >              been discharged.
-- >        86 Short shipped
-- >              The goods/consignments/equipment expected to be sent to a
-- >              specific destination on a selected means of transport
-- >              from a specific location have not been loaded for onward
-- >              delivery.
-- >        87 Sorted wrong route
-- >              The goods/consignments/equipment have been sorted
-- >              erroneously to an incorrect route.
-- >        88 Split
-- >              The consignment of goods has been split into two or more
-- >              consignments.
-- >        89 Steam cleaned
-- >              The equipment, e.g. a container, has been steam cleaned.
-- >        90 Stopped
-- >              The goods/consignments/equipment have been stopped from
-- >              further movement in the transport chain.
-- >        91 Stored
-- >              The goods/consignments/equipment have been stored at a
-- >              location.
-- >        92 Stowed
-- >              The goods/consignments/equipment have been stowed for
-- >              transportation in the selected equipment/means of
-- >              transport.
-- >        93 Stuffed
-- >              The goods/consignments/equipment have been loaded into a
-- >              piece of equipment, e.g. a container.
-- >        94 Stuffed and sealed
-- >              The goods/consignments/equipment have been loaded into a
-- >              piece of equipment and the equipment has been sealed.
-- >        95 Sub-lease in
-- >              In the leasing of equipment a sub-lease has been notified
-- >              to the lessor.
-- >        96 Sub-lease out
-- >              In the leasing of equipment a sub-lease has been notified
-- >              by a lessee.
-- >        97 Surveyed damage
-- >              Damaged goods/consignments/equipment have been officially
-- >              surveyed by a third party to assess the extent of damage.
-- >        98 Transferred in
-- >              The goods/consignments/equipment have been transferred in
-- >              from another location.
-- >        99 Transferred out
-- >              The goods/consignments/equipment have been transferred
-- >              out to another location.
-- >       100 Transhipment
-- >              The goods/consignments/equipment have been transhipped to
-- >              another means of transport.
-- >       101 Transit delay
-- >              The goods/consignments/equipment has been delayed in
-- >              transit.
-- >       102 Unknown goods/consignments/equipment
-- >              The goods/consignments/equipment are not known to the
-- >              source being enquired upon.
-- >       103 Unplugged equipment
-- >              Equipment, e.g. a refrigerated container, has been
-- >              unplugged from the power source at a given location.
simple9011 :: Parser Value
simple9011 = simple "9011" (alphaNumeric `upTo` 3)
