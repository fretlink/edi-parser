{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D96A.Simples.S3035
  ( simple3035
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- > * 3035  Party qualifier
-- >
-- >   Desc: Code giving specific meaning to a party.
-- >
-- >   Repr: an..3
-- >
-- >    AA     Party to be billed (AAR Accounting rule 11)
-- >              Party to be billed in accordance with AAR Accounting rule
-- >              11.
-- >    AB     Buyer's agent/representative
-- >              Third party who arranged the purchase of merchandise on
-- >              behalf of the actual buyer.
-- >    AE     Declarant's agent/representative
-- >              Any natural or legal person who makes a declaration to an
-- >              official body on behalf of another natural or legal
-- >              person, where legally permitted (CCC).
-- >    AF     Transit principal
-- >              Natural or legal person responsible for the satisfactory
-- >              performance of a Customs transit operation. Source: CCC.
-- >    AG     Agent/representative
-- >              (3196) Party authorized to act on behalf of another
-- >              party.
-- >    AH     Transit principal's agent/representative
-- >              Agent acting on behalf of the transit principal (CCC).
-- >    AI     Successful job applicant
-- >              Person who has been chosen for a job.
-- > +  AJ     Party issuing mutually agreed codes
-- >              The party which has issued all mutually agreed codes used
-- >              in the message.
-- >    AK     Acknowledgement recipient
-- >              Party to whom acknowledgement should be sent.
-- >    AL     Principal
-- >              (3340) Party accepting liability for goods held or moving
-- >              (e.g. transit) under a Customs authorization and - when
-- >              applicable - a guarantee.
-- >    AM     Authorized official
-- >              Employee of a company or firm authorized to act on behalf
-- >              of that company or firm e.g. to make a Customs
-- >              declaration.
-- >    AN     Approved importer
-- >              Person or company which is authorised by the relevant
-- >              Customs authority to import goods without payment all
-- >              taxes or specific taxes at the point of entry into the
-- >              country.
-- >    AO     Account of
-- >              Party account is assigned to.
-- >    AP     Accepting party
-- >              (3352) Party accepting goods, products, services etc.
-- >    AQ     Approved consignor
-- >              Person or company approved by the relevant authority in
-- >              the country to pack and export specific goods under
-- >              Customs supervision.
-- >    AR     Authorized exporter
-- >              Exporter authorized/approved by Customs for special
-- >              Customs procedures e.g. simplified procedure.
-- >    AT     Authorized importer
-- >              Importer authorized/approved by Customs for special
-- >              Customs procedures e.g. simplified procedure.
-- >    AU     Authorized trader (transit)
-- >              Trader authorized/approved by Customs for special transit
-- >              procedures e.g. simplified procedure.
-- >    AV     Authorizing official
-- >              Party that has delegated the authority to take a certain
-- >              action on behalf of a company or agency.
-- >    AW     Applicant's bank
-- >              Financial institution which is requested to issue the
-- >              documentary credit.
-- >    AX     Authenticating party
-- >              Party which certifies that a document is authentic.
-- >    AZ     Issuing bank
-- >              Financial institution which issues the documentary
-- >              credit, if the applicant's bank is not acting as the
-- >              issuing bank.
-- >    B1     Contact bank 1
-- >              Identifies an additional bank which must be informed of
-- >              certain aspects of the message.
-- >    B2     Contact bank 2
-- >              Identifies an additional bank which must be informed of
-- >              certain aspects of the message.
-- >    BA     Booking agent
-- >              Party acting as a booking office for transport and
-- >              forwarding services.
-- >    BB     Buyer's bank
-- >              [3420] Bank employed by the buyer to make payment.
-- >    BC     Negotiating bank
-- >              Financial institution to whom a negotiable documentary
-- >              credit is directed.
-- >    BD     Documentary credit reimbursing bank
-- >              Self-explanatory.
-- >    BE     Beneficiary
-- >              The ultimate recipient of the funds. Normally the account
-- >              owner who is reimbursed by the payor.
-- >    BF     Beneficiary's bank
-- >              Identifies the account servicer for the beneficiary or
-- >              the payee.
-- >    BG     Employer
-- >              Self-explanatory.
-- >    BH     Previous employer
-- >              Previous employer of a person(s).
-- >    BI     Buyer's financial institution
-- >              Financial institution designated by buyer to make
-- >              payment.
-- >    BK     Financial institution
-- >              Party acting as financial institution.
-- >    BL     Bill of lading recipient
-- >              Party to receive B/L.
-- >    BM     Insured
-- >              Party which is the object of an insurance contract.
-- >    BN     Insurance beneficiary
-- >              Party which benefits from insurance coverage.
-- >    BO     Broker or sales office
-- >              Party acting in the name of the seller as broker or as
-- >              sales office.
-- >    BP     Building site purchaser
-- >              Party at the building site responsible for the purchasing
-- >              of goods and services for that particular site.
-- >    BQ     Cheque drawn bank
-- >              Identifies the bank on which the cheque should be drawn,
-- >              as instructed by the ordering customer.
-- >    BS     Bill and ship to
-- >              Party receiving goods and relevant invoice.
-- >    BT     Party to be billed for other than freight (bill to)
-- >              Party receiving invoice excluding freight costs.
-- >    BU     Service bureau
-- >              Party carrying out service bureau processing work, (e.g.
-- >              a payroll bureau).
-- >    BV     Member
-- >              Member of a group (e.g. of a group of persons or a
-- >              service scheme).
-- >    BW     Borrower
-- >              Self explanatory.
-- >    BX     Building site engineer
-- >              Party at the building site responsible for engineering
-- >              matters for that particular site.
-- >    BY     Buyer
-- >              (3002) Party to which merchandise is sold.
-- >    BZ     Building site forwarder
-- >              Party at the building site responsible for forwarding the
-- >              received goods on that particular site.
-- >    C1     In care of party no. 1
-- >              Description to be provided.
-- >    C2     In care of party no. 2
-- >              Description to be provided.
-- >    CA     Carrier
-- >              (3126) Party undertaking or arranging transport of goods
-- >              between named points.
-- >    CB     Customs broker
-- >              Agent or representative or a professional Customs
-- >              clearing agent who deals directly with Customs on behalf
-- >              of the importer or exporter (CCC).
-- >    CC     Claimant
-- >              Party who claims goods or insurance.
-- >    CD     Agent's bank
-- >              Bank of the agent.
-- >    CE     Ceding company
-- >              Description to be provided.
-- >    CF     Container operator/lessee
-- >              Party to whom the possession of specified property (e.g.
-- >              container) has been conveyed for a period of time in
-- >              return for rental payments.
-- >    CG     Carrier's agent
-- >              Party authorized to act for or on behalf of carrier.
-- >    CH     Connecting carrier
-- >              Owner or operator of a transportation conveyance to which
-- >              goods in a given transaction will be transferred.
-- >    CI     Commission processor
-- >              Party who provides extra treatment to goods on commission
-- >              base.
-- >    CJ     Previous member
-- >              Previous member of a group of persons or a service
-- >              scheme.
-- >    CK     Empty equipment despatch party
-- >              Party from whose premises empty equipment will be or has
-- >              been despatched.
-- >    CL     Container location party
-- >              Party from whose premises container will be or has been
-- >              despatched.
-- >    CM     Customs
-- >              Identification of customs authority relevant to the
-- >              transaction or shipment.
-- >    CN     Consignee
-- >              (3132) Party to which goods are consigned.
-- >    CO     Corporate office
-- >              Identification of the Head Office within a company.
-- >    COP    Convoying party
-- >              Party designated to escort the transported goods.
-- >    CP     Party to receive certificate of compliance
-- >              Party acting for or on behalf of seller in matters
-- >              concerning compliance.
-- >    CPD    Charges payer at destination
-- >              Party, other than the ordering party, which has to pay
-- >              the charges concerning the destination operations.
-- >    CQ     Cheque order
-- >              Party to which the cheque will be ordered, when different
-- >              from the beneficiary.
-- >    CR     Empty equipment return party
-- >              Party to whose premises empty equipment will be or has
-- >              been returned.
-- >    CS     Consolidator
-- >              Party consolidating various consignments, payments etc.
-- >    CT     Consignee to be specified
-- >              Description to be provided.
-- >    CU     Container return company
-- >              Description to be provided.
-- >    CV     Consignee of vessel
-- >              Description to be provided.
-- >    CW     Equipment owner
-- >              Owner of equipment (container, etc.).
-- >    CX     Consignee's agent
-- >              Party authorized to act on behalf of the consignee.
-- >    CY     Commissionable agent
-- >              IATA cargo agent entitled to commission.
-- >    CZ     Consignor
-- >              (3336) Party which, by contract with a carrier, consigns
-- >              or sends goods with the carrier, or has them conveyed by
-- >              him. Synonym: shipper, sender.
-- >    DA     Available with bank (documentary credits)
-- >              Financial institution with whom the documentary credit is
-- >              available.
-- >    DB     Distributor branch
-- >              The affiliate of a retailer or distributor.
-- >    DC     Deconsolidator
-- >              Party that splits up a large consignment composed of
-- >              separate consignments of goods. The smaller consignments
-- >              of goods were grouped together into that large
-- >              consignment for carriage as a larger unit in order to
-- >              obtain a reduced rate.
-- >    DCP    Despatch charge payer
-- >              Party, other than the ordering party, which has to pay
-- >              the charges concerning the despatch operations.
-- >    DD     Documentary credit account party's bank
-- >              Bank of the documentary credit account party.
-- >    DE     Depositor
-- >              Party depositing goods, financial payments or documents.
-- >    DF     Documentary credit applicant
-- >              Party at whose request the applicant's bank/issuing bank
-- >              is to issue a documentary credit.
-- >    DG     Documentary credit beneficiary
-- >              Party in whose favour the documentary credit is to be
-- >              issued and the party that must comply with the credit's
-- >              terms and conditions.
-- >    DH     Documentary credit account party
-- >              Party which is responsible for the payment settlement of
-- >              the documentary credit with the applicant's bank/issuing
-- >              bank, if different from the documentary credit applicant.
-- >    DI     Documentary credit second beneficiary
-- >              Party to whom the documentary credit can be transferred.
-- >    DJ     Party according to documentary credit transaction
-- >              Party related to documentary credit transaction.
-- >    DK     Documentary credit beneficiary's bank
-- >              Financial institution with which the beneficiary of the
-- >              documentary credit maintains an account.
-- >    DL     Factor
-- >              Company offering a financial service whereby a firm sells
-- >              or transfers title to its accounts receivable to the
-- >              factoring company.
-- >    DM     Party to whom documents are to be presented
-- >              Self explanatory.
-- >    DN     Owner of operation
-- >              Owner of the operation.
-- >    DO     Document recipient
-- >              (1370) Party which should receive a specified document.
-- >    DP     Delivery party
-- >              (3144) Party to which goods should be delivered, if not
-- >              identical with consignee.
-- >    DQ     Owner's agent
-- >              Person acting on delegation of powers of the owner.
-- >    DR     Driver
-- >              Person who drives a means of transport.
-- >    DS     Distributor
-- >              Party distributing goods, financial payments or
-- >              documents.
-- >    DT     Declarant
-- >              (3140) Party who makes a declaration to an official body
-- >              or - where legally permitted - in whose name, or on whose
-- >              behalf, a declaration to an official body is made.
-- >    DU     Owner's representative
-- >              Person commissioned by the owner to represent him in
-- >              certain circumstances.
-- >    DV     Project management office
-- >              Party commissioned by the owner to follow through the
-- >              execution of all works.
-- >    DW     Drawee
-- >              Party on whom drafts must be drawn.
-- >    DX     Engineer (construction)
-- >              Party representing the contractor to advise and supervise
-- >              engineering aspects of the works.
-- >    DY     Engineer, resident (construction)
-- >              Party commissioned by the owner to advise and supervise
-- >              engineering aspects of the works.
-- >    DZ     Architect
-- >              Self explanatory.
-- >    EA     Architect-designer
-- >              Designer of the construction project.
-- >    EB     Building inspectorate
-- >              Party controlling the conformity of works to legal and
-- >              regulation rules.
-- >    EC     Exchanger
-- >              Party exchanging currencies or goods.
-- >    ED     Engineer, consultant
-- >              Party providing professional engineering services.
-- >    EE     Location of goods for customs examination before clearance
-- >              SE.
-- >    EF     Project coordination office
-- >              Party responsible for technical coordination of works.
-- >    EG     Surveyor, topographical
-- >              Party responsible for topographical measurements.
-- >    EH     Engineer, measurement
-- >              Party responsible for quantity measurements.
-- >    EI     Controller, quality
-- >              Party controlling the quality of goods and workmanship
-- >              for the project.
-- >    EJ     Surveyor, quantity
-- >              Party responsible for the quantification and valuation of
-- >              the works on behalf of the contractor.
-- >    EK     Surveyor (professional), quantity
-- >              Party responsible to the owner for the quantification and
-- >              valuation of the works.
-- >    EL     Project
-- >              Party responsible for a project, e.g. a construction
-- >              project.
-- >    EM     Party to receive electronic memo of invoice
-- >              Party being informed about invoice issue (via EDI).
-- >    EN     Tenderer
-- >              Firm answering an invitation to tender.
-- >    EO     Owner of equipment
-- >              Self explanatory.
-- >    EP     Equipment drop-off party
-- >              Self explanatory.
-- >    EQ     Empty container responsible party
-- >              Party responsible for the empty container.
-- >    ER     Empty container return agent
-- >              Party, designated by owner of containers, responsible for
-- >              their collection as agreed between the owner and
-- >              customer/ consignee.
-- >    ES     Contractor, lead
-- >              Leader representing a grouping of co-contractors.
-- >    ET     Co-contractor
-- >              Member of a grouping of co-contractors.
-- >    EU     Contractor, general
-- >              Single contractor for the whole construction project,
-- >              working by his own or with subcontractors.
-- >    EV     Subcontractor
-- >              Firm carrying out a part of the works for a contractor.
-- >    EW     Subcontractor with direct payment
-- >              Subcontractor benefiting from direct payments.
-- >    EX     Exporter
-- >              (3030) Party who makes - or on whose behalf a Customs
-- >              clearing agent or other authorized person makes - an
-- >              export declaration. This may include a manufacturer,
-- >              seller or other person. Within a Customs union, consignor
-- >              may have the same meaning as exporter.
-- >    EY     Subcontractor, nominated
-- >              Subcontractor authorized by the owner after having been
-- >              proposed.
-- >    EZ     Operator, essential services
-- >              Operator of essential services e.g. water, sewerage
-- >              system, power.
-- >    FA     Operator, communication channel
-- >              Operator of a communication channel.
-- >    FB     Nominated freight company
-- >              Party nominated to act as transport company or carrier
-- >              for the goods.
-- >    FC     Contractor, main
-- >              Firm or grouping of co-contractors which has been awarded
-- >              the contract.
-- >    FD     Buyer's parent company
-- >              Parent company, e.g. holding company.
-- >    FE     Credit rating agency
-- >              Self explanatory.
-- >    FF     Factor, correspondent
-- >              Factoring company engaged by another factoring company to
-- >              assist the letter with the services provided to the
-- >              clients (sellers).
-- >    FG     Buyer as officially registered
-- >              Buying party as officially registered with government.
-- >    FH     Seller as officially registered
-- >              Selling party as officially registered with government.
-- >    FJ     Trade Union
-- >              Organisation representing employees.
-- >    FK     Previous Trade Union
-- >              Employee organisation who previously represented an
-- >              employee .
-- >    FL     Passenger
-- >              A person conveyed by a means of transport, other than the
-- >              crew.
-- >    FM     Crew member
-- >              A person manning a means of transport.
-- >    FN     Tariff issuer
-- >              The issuer of a tariff, e.g. a freight tariff.
-- >    FO     Party performing inspection
-- >              Self explanatory.
-- >    FP     Freight/charges payer
-- >              Party responsible for the payment of freight.
-- >    FR     Message from
-- >              Party where the message comes from.
-- >    FT     Party responsible for financial settlement
-- >              (3450) Party responsible for either the transfer or
-- >              repatriation of the funds relating to a transaction.
-- >    FW     Freight forwarder
-- >              Party arranging forwarding of goods.
-- >    FX     Current receiver
-- >              Current receiver of the goods in a multi-step
-- >              transportation process (indirect flow) involving at least
-- >              one grouping centre.
-- >    FY     Current sender
-- >              Current sender of the goods in a multi-step
-- >              transportation process (indirect flow) involving at least
-- >              one grouping centre.
-- >    FZ     Grouping centre
-- >              A party in charge of groupage, including degroupage and
-- >              regroupage.
-- >    GA     Road carrier
-- >              A road carrier moving cargo.
-- >    GB     Chamber of commerce
-- >              Name of the Chamber of Commerce of the town where the
-- >              company is registered.
-- >    GC     Goods custodian
-- >              (3024) Party responsible for the keeping of goods.
-- >    GD     Producer
-- >              Party or person who has produced the produce.
-- >    GE     Registration tribunal
-- >              Name of the tribunal where the company is registered.
-- >    GF     Slot charter party
-- >              An identification code of a participant or user that
-- >              books slots (space) on a ship, more likely on a long term
-- >              basis on a series of sailings. He pays for the space
-- >              whether he uses it or not.
-- >    GG     Warehouse
-- >              The name of the warehouse where product is held.
-- >    GH     Applicant for job
-- >              A person who applied for a job.
-- >    GI     Spouse
-- >              Person is a spouse.
-- >    GJ     Mother
-- >              Person is a mother.
-- >    GK     Father
-- >              Person is a father.
-- >    GL     Socially insured person
-- >              A person who is registered in a social security scheme.
-- >    GM     Inventory controller
-- >              To specifically identify the party in charge of inventory
-- >              control.
-- >    GN     Processor
-- >              Party or person who has or will apply a process.
-- >    GO     Goods owner
-- >              The party which owns the goods.
-- >    GP     Packer
-- >              Party or person who has undertaken or will undertake
-- >              packing.
-- >    GQ     Slaughterer
-- >              Party or person who has undertaken or will undertake a
-- >              slaughter.
-- >    GR     Goods releaser
-- >              (3026) Party entitled to authorize release of goods from
-- >              custodian.
-- >    GS     Consignor's representative
-- >              Party authorised to represent the consignor.
-- >    GT     Rail carrier
-- >              A carrier moving cargo, including containers, via rail.
-- > +  GU     Originator of article number
-- >              A code identifying the party which created a specific
-- >              article number.
-- > +  GV     Procurement responsibility for order
-- >              A code used to identify the organization which is
-- >              responsible for the procurement.
-- > +  GW     Party fulfilling all operations
-- >              Code indicating the fact that the party identified
-- >              carries out all operations within that company's
-- >              activities.
-- > +  GX     Central catalogue party
-- >              Party controlling a central catalogue.
-- > +  GY     Inventory reporting party
-- >              Party reporting inventory information.
-- > +  GZ     Substitute supplier
-- >              Party which may be in a position to supply products or
-- >              services should the main usual supplier be unable to do
-- >              so.
-- >    I1     Intermediary bank 1
-- >              A financial institution between the ordered bank and the
-- >              beneficiary's bank.
-- >    I2     Intermediary bank 2
-- >              A financial institution between the ordered bank and the
-- >              beneficiary's bank.
-- >    IB     Intermediary/broker
-- >              Description to be provided.
-- >    IC     Intermediate consignee
-- >              The intermediate consignee.
-- > +  ID     Replacing manufacturer
-- >              A code used to identify a party who replaces the previous
-- >              party for the manufacture of an article.
-- > +  IE     Non-resident third party company with whom financial account
-- >           is held
-- >              Identifies the non-resident third party company with whom
-- >              the financial account is held.
-- > +  IF     Non-resident group company with whom financial account is
-- >           held
-- >              Identifies the non-resident group company with whom the
-- >              financial account is held.
-- > +  IG     Non-resident beneficiary
-- >              The ultimate non-resident recipient of the funds.
-- >              Normally the account owner who is reimbursed by the
-- >              payor.
-- > +  IH     Resident beneficiary
-- >              The ultimate resident recipient of the funds. Normally
-- >              the account owner who is reimbursed by the payor.
-- >    II     Issuer of invoice
-- >              (3028) Party issuing an invoice.
-- > +  IJ     Non-resident instructing party
-- >              Indentifies the non-resident party originating the
-- >              instruction.
-- > +  IL     Resident instructing party
-- >              Identifies the resident party originating the
-- >              instruction.
-- >    IM     Importer
-- >              (3020) Party who makes - or on whose behalf a Customs
-- >              clearing agent or other authorized person makes - an
-- >              import declaration. This may include a person who has
-- >              possession of the goods or to whom the goods are
-- >              consigned.
-- >    IN     Insurer
-- >              Description to be provided.
-- >    IO     Insurance company
-- >              Description to be provided.
-- >    IP     Insurance claim adjuster
-- >              Description to be provided.
-- > +  IQ     Domestic financial institution
-- >              Domestic party acting as financial institution.
-- > +  IR     Non-domestic financial institution
-- >              Non-domestic party acting as financial institution.
-- >    IS     Party to receive certified inspection report
-- >              Party (at buyer) to receive certified inspection report.
-- >    IT     Installation on site
-- >              Description to be provided.
-- > +  IU     Non-resident debtor
-- >              Non-resident party who makes the payment or against whom
-- >              a claim exists.
-- >    IV     Invoicee
-- >              (3006) Party to whom an invoice is issued.
-- > +  IW     Non-resident creditor
-- >              Non-resident party receiving the payment or against whom
-- >              a liability exists.
-- >    LA     Party designated to provide living animal care
-- >              Party responsible to take care of transported living
-- >              animals.
-- > +  LB     Coproducer
-- >              A code used to identify a party who participates in
-- >              production.
-- >    LN     Lender
-- >              Party lending goods or equipments.
-- >    LP     Loading party
-- >              Party responsible for the loading when other than
-- >              carrier.
-- >    MA     Party for whom item is ultimately intended
-- >              Self explanatory.
-- >    MF     Manufacturer of goods
-- >              Party who manufactures the goods.
-- >    MG     Party designated to execute re-icing
-- >              Party designated to execute re-icing, selected in the
-- >              official list of mandatories competent for this kind of
-- >              operation.
-- >    MI     Planning schedule/material release issuer
-- >              Self explanatory.
-- >    MP     Manufacturing plant
-- >              Self explanatory.
-- >    MR     Message recipient
-- >              Self explanatory.
-- >    MS     Document/message issuer/sender
-- >              Issuer of a document and/or sender of a message.
-- >    MT     Party designated to execute sanitary procedures
-- >              Self explanatory.
-- >    N1     Notify party no. 1
-- >              Self explanatory.
-- >    N2     Notify party no. 2
-- >              Self explanatory.
-- >    NI     Notify party
-- >              (3180) Party to be notified of arrival of goods.
-- >    OA     Break bulk berth operator
-- >              Party who offers facilities for berthing of vessels,
-- >              handling and storage of break bulk cargo.
-- >    OB     Ordered by
-- >              Party who issued an order.
-- >    OF     On behalf of
-- >              Party on behalf of which an action is executed.
-- >    OI     Outside inspection agency
-- >              Third party inspecting goods or equipment.
-- >    OO     Order of shipper
-- >              Description to be provided.
-- >    OP     Operator of property or unit
-- >              Self explanatory.
-- >    OR     Ordered bank
-- >              Identifies the account servicer for the ordering customer
-- >              or payor.
-- >    OS     Original shipper
-- >              The original supplier of the goods.
-- >    OT     Outside test agency
-- >              Third party testing goods, equipment or services.
-- >    OV     Owner of means of transport
-- >              (3126) Party owning the means of transport. No synonym of
-- >              carrier = CA.
-- >    OY     Ordering customer
-- >              Identifies the originator of the instruction.
-- >    P1     Contact party 1
-- >              First party to contact.
-- >    P2     Contact party 2
-- >              Second party to contact.
-- >    P3     Contact party 3
-- >              Third party to contact.
-- >    P4     Contact party 4
-- >              Fourth party to contact.
-- >    PA     Party to receive inspection report
-- >              Party to whom the inspection report should be sent.
-- >    PB     Paying financial institution
-- >              Financial institution designated to make payment.
-- >    PC     Actual purchaser's customer
-- >              Party the purchaser within the actual message is selling
-- >              the ordered goods or services to.
-- >    PD     Purchaser's department buyer
-- >              Purchasing department of buyer.
-- >    PE     Payee
-- >              Identifies the credit party when other than the
-- >              beneficiary.
-- >    PF     Party to receive freight bill
-- >              Party to whom the freight bill should be sent.
-- >    PG     Prime contractor
-- >              Party responsible for the whole project if other than the
-- >              buyer.
-- >    PH     Payer's financial institution
-- >              Self explanatory.
-- >    PI     Payee's company name/ID
-- >              Receiving company name/ID (ACH transfers).
-- >    PJ     Party to receive correspondence
-- >              Second party designated by a first party to receive
-- >              certain correspondence in lieu of it being mailed
-- >              directly to this first party.
-- >    PK     Contact party
-- >              Party to contact.
-- >    PL     Payor
-- >              Identifies the debit party when other than the ordering
-- >              customer (for banking purposes).
-- >    PM     Party to receive paper memo of invoice
-- >              Party being informed about invoice issue (via paper).
-- >    PN     Party to receive shipping notice
-- >              Description to be provided.
-- >    PO     Ordering party
-- >              To be used only if ordering party and buyer are not
-- >              identical.
-- >    PQ     Certifying party
-- >              Self explanatory.
-- >    PR     Payer
-- >              (3308) Party initiating payment.
-- >    PS     Payer's company name/ID (Check, Draft or Wire)
-- >              Self explanatory.
-- >    PT     Party to receive test report
-- >              Self explanatory.
-- >    PW     Despatch party
-- >              (3282) Party where goods are collected or taken over by
-- >              the carrier (i.e. if other than consignor).
-- >    PX     Party to receive all documents
-- >              Self explanatory.
-- >    PY     Checking party
-- >              Party or contact designated on behalf of carrier or his
-- >              agent to establish the actual figures for quantities,
-- >              weight, volume and/or (cube) measurements of goods or
-- >              containers which are to appear in the transport contract
-- >              and on which charges will be based.
-- >    PZ     Party to print some document
-- >              The party that is to print a specific document.
-- >    RA     Central bank or regulatory authority
-- >              Identifies central bank or regulatory authority which
-- >              must be informed of certain aspects of a message.
-- >    RB     Receiving financial institution
-- >              Financial institution designated to receive payment.
-- >    RE     Party to receive commercial invoice remittance
-- >              Party to whom payment for a commercial invoice or bill
-- >              should be remitted.
-- >    RF     Received from
-- >              Name of a person or department which actually delivers
-- >              the goods.
-- >    RH     Seller's financial institution
-- >              Financial institution designated by seller to receive
-- >              payment. RDFI (ACH transfers).
-- >    RI     Reinsurance intermediary/broker
-- >              Intermediary party between ceding company and
-- >              reinsurance.
-- >    RL     Reporting carrier (Customs)
-- >              Party who makes the cargo report to Customs.
-- >    RM     Reporting carrier's nominated agent/representative (Customs)
-- >              Agent who formally makes a cargo report to Customs on
-- >              behalf of the carrier.
-- >    RP     Routing party
-- >              Party responsible for the selection of the carrier(s).
-- >    RS     Party to receive statement of account
-- >              Party to whom the statement of account should be sent.
-- >    RV     Receiver of cheque
-- >              Identifies the party which is to receive the actual
-- >              cheque, when different from the receiver of funds.
-- >    RW     Issuer of waybill
-- >              Party issuing the contract (waybill) for carriage.
-- >    SB     Sales responsibility
-- >              Description to be provided.
-- >    SE     Seller
-- >              (3346) Party selling merchandise to a buyer.
-- >    SF     Ship from
-- >              Identification of the party from where goods will be or
-- >              have been shipped.
-- >    SG     Store group
-- >              Description to be provided.
-- >    SI     Shipping schedule issuer
-- >              Self explanatory.
-- >    SK     Plant
-- >              Self explanatory.
-- >    SN     Store keeper
-- >              Self explanatory.
-- >    SO     Sold to if different than bill to
-- >              Self explanatory.
-- >    SR     Seller's agent/representative
-- >              (3254) Party representing the seller for the purpose of
-- >              the trade transaction.
-- >    SS     Social securities collector's office
-- >              Party collecting social securities premiums.
-- >    ST     Ship to
-- >              Identification of the party to where goods will be or
-- >              have been shipped.
-- >    SU     Supplier
-- >              (3280) Party which manufactures or otherwise has
-- >              possession of goods, and consigns or makes them available
-- >              in trade.
-- >    SX     Surety for additions
-- >              Natural of legal person (generally a bank of insurance
-- >              company) who accepts responsibility in due legal form for
-- >              the financial guarantee to Customs of the payment of
-- >              additional duties or fees that become due against a
-- >              particular shipment, which have not previously been
-- >              covered by surety.
-- >    SY     Surety
-- >              Natural or legal person (generally a bank or insurance
-- >              company) who accepts responsibility in due legal form for
-- >              the financial consequences of non-fulfilment of another's
-- >              obligations to the Customs (CCC).
-- >    SZ     Surety for antidumping/countervailing duty
-- >              Natural or legal person that has been contracted by the
-- >              importer to guarantee to Customs the payment of
-- >              antidumping and/or countervailing duties that become due
-- >              against a particular shipment.
-- >    TC     Tax collector's office
-- >              Party collecting taxes.
-- >    TCP    Transit charge payer
-- >              Party, other than the ordering party, which has to pay
-- >              the charges concerning the transit operations.
-- >    TD     Party to receive technical documentation
-- >              Party to whom technical documentation should be sent.
-- >    TR     Terminal operator
-- >              A party which handles the loading and unloading of marine
-- >              vessels.
-- >    TS     Party to receive certified test results
-- >              Party to whom the certified test results should be sent.
-- >    TT     Transfer to
-- >              Self-explanatory.
-- >    UC     Ultimate consignee
-- >              Party who has been designated on the invoice or packing
-- >              list as the final recipient of the stated merchandise.
-- >    UD     Ultimate customer
-- >              The final recipient of goods.
-- >    UHP    Unexpected handling party
-- >              Party authorized (during a voyage) to apply unexpected
-- >              handling procedures or party having applied these
-- >              procedures.
-- >    UP     Unloading party
-- >              Description to be provided.
-- >    VN     Vendor
-- >              Party vending goods or services.
-- >    WD     Warehouse depositor
-- >              (3004) Party depositing goods in a warehouse.
-- >    WH     Warehouse keeper
-- >              (3022) Party taking responsibility for goods entered into
-- >              a warehouse.
-- >    WM     Works manager
-- >              Self explanatory.
-- >    WPA    Weighting party
-- >              Party designated (legally accepted) to ascertain the
-- >              weight.
-- >    WS     Wholesaler
-- >              Seller of articles, often in large quantities, to be
-- >              retailed by others.
-- >    XX     No heading
-- >              Description to be provided.
-- >    ZZZ    Mutually defined
-- >              Party specification mutually agreed between interchanging
-- >              parties.
simple3035 :: Parser Value
simple3035 = simple "3035" (alphaNumeric `upTo` 3)
