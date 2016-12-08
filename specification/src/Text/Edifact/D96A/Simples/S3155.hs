{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D96A.Simples.S3155
  ( simple3155
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- >   3155  Communication channel qualifier
-- >
-- >   Desc: Code identifying the type of communication channel being used.
-- >
-- >   Repr: an..3
-- >
-- >    AA     Circuit switching
-- >              A process that, on demand, connects two or more data
-- >              terminal equipments and permits the exclusive use of a
-- >              data circuit between them until the connection is
-- >              released (ISO).
-- >    AB     SITA
-- >              Communications number assigned by Societe Internationale
-- >              de Telecommunications Aeronautiques (SITA).
-- >    AC     ARINC
-- >              Communications number assigned by Aeronautical Radio Inc.
-- >    AD     AT&T mailbox
-- >              AT&T mailbox identifier.
-- >    AE     Peripheral device
-- >              Peripheral device identification.
-- >    CA     Cable address
-- >              Self explanatory.
-- >    EI     EDI transmission
-- >              Number identifying the service and service user.
-- >    EM     Electronic mail
-- >              Creating/sending/receiving of unstructured free text
-- >              messages or documents using computer network, a mini-
-- >              computer or an attached modem and regular telephone line
-- >              or other electronic transmission media.
-- >    EX     Extension
-- >              Telephone extension.
-- >    FT     File transfer access method
-- >              According to ISO.
-- >    FX     Telefax
-- >              Device used for transmitting and reproducing fixed
-- >              graphic material (as printing) by means of signals over
-- >              telephone lines or other electronic transmission media.
-- >    GM     GEIS (General Electric Information Service) mailbox
-- >              Self explanatory.
-- >    IE     IBM information exchange
-- >              Self explanatory.
-- >    IM     Internal mail
-- >              Internal mail address/number.
-- >    MA     Mail
-- >              Postal service document delivery.
-- >    PB     Postbox number
-- >              Self explanatory.
-- >    PS     Packet switching
-- >              The process of routing and transferring data by means of
-- >              addressed packets so that a channel is occupied only
-- >              during the transmission; upon completion of the
-- >              transmission the channel is made available for the
-- >              transfer of other packets (ISO).
-- >    SW     S.W.I.F.T.
-- >              Communications address assigned by Society for Worldwide
-- >              Interbank Financial Telecommunications s.c.
-- >    TE     Telephone
-- >              Voice/data transmission by telephone.
-- >    TG     Telegraph
-- >              Text transmission via telegraph.
-- >    TL     Telex
-- >              Transmission of text/data via telex.
-- >    TM     Telemail
-- >              Transmission of text/data via telemail.
-- >    TT     Teletext
-- >              Transmission of text/data via teletext.
-- >    TX     TWX
-- >              Communication service involving Teletypewriter machines
-- >              connected by wire or electronic transmission media.
-- >              Teletypewriter machines are the devices used to send and
-- >              receive signals and produce hardcopy from them.
-- >    XF     X.400
-- >              CCITT Message handling system.
simple3155 :: Parser Value
simple3155 = simple "3155" (alphaNumeric `upTo` 3)
