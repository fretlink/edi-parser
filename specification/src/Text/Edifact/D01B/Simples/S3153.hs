{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D01B.Simples.S3153
  ( simple3153
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- >      3153  Communication medium type code                          [C]
-- >
-- >      Desc: Code specifying the type of communication medium.
-- >
-- >      Repr: an..3
-- >
-- >      AA    Circuit switching
-- >               A process that, on demand, connects two or more data
-- >               terminal equipments and permits the exclusive use of a
-- >               data circuit between them until the connection is
-- >               released (ISO).
-- >
-- >      AB    SITA
-- >               Communications number assigned by Societe Internationale
-- >               de Telecommunications Aeronautiques (SITA).
-- >
-- >      AC    ARINC
-- >               Communications number assigned by Aeronautical Radio
-- >               Inc.
-- >
-- >      AD    Courier
-- >               A communication channel identifying a courier.
-- >
-- >      CA    Cable address
-- >               The cable is used as communication medium.
-- >
-- >      EI    EDI transmission
-- >               Number identifying the service and service user.
-- >
-- >      EM    Electronic mail
-- >               Exchange of mail by electronic means.
-- >
-- >      EX    Extension
-- >               Telephone extension.
-- >
-- >      FT    File transfer access method
-- >               According to ISO.
-- >
-- >      FX    Telefax
-- >               Device used for transmitting and reproducing fixed
-- >               graphic material (as printing) by means of signals over
-- >               telephone lines or other electronic transmission media.
-- >
-- >      GM    GEIS (General Electric Information Service) mailbox
-- >               GEIS mailbox system is used as communication medium.
-- >
-- >      IE    IBM information exchange
-- >               IBM IE is used as communication medium.
-- >
-- >      IM    Internal mail
-- >               Internal mail address/number.
-- >
-- >      MA    Mail
-- >               Postal service document delivery.
-- >
-- >      PB    Postbox no.
-- >               Postbox system is used as communication medium.
-- >
-- >      PS    Packet switching
-- >               The process of routing and transferring data by means of
-- >               addressed packets so that a channel is occupied only
-- >               during the transmission; upon completion of the
-- >               transmission the channel is made available for the
-- >               transfer of other packets (ISO).
-- >
-- >      SW    S.W.I.F.T.
-- >               Communications address assigned by Society for Worldwide
-- >               Interbank Financial Telecommunications s.c.
-- >
-- >      TE    Telephone
-- >               Voice/data transmission by telephone.
-- >
-- >      TG    Telegraph
-- >               Text transmission via telegraph.
-- >
-- >      TL    Telex
-- >               Transmission of text/data via telex.
-- >
-- >      TM    Telemail
-- >               Transmission of text/data via telemail.
-- >
-- >      TT    Teletext
-- >               Transmission of text/data via teletext.
-- >
-- >      TX    TWX
-- >               Communication service involving Teletypewriter machines
-- >               connected by wire or electronic transmission media.
-- >               Teletypewriter machines are the devices used to send and
-- >               receive signals and produce hardcopy from them.
-- >
-- >      XF    X.400
-- >               CCITT Message handling system.
simple3153 :: Parser Value
simple3153 = simple "3153" (alphaNumeric `upTo` 3)
