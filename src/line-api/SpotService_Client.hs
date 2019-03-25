{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-missing-fields #-}
{-# OPTIONS_GHC -fno-warn-missing-signatures #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-----------------------------------------------------------------
-- Autogenerated by Thrift Compiler (0.11.0)                      --
--                                                             --
-- DO NOT EDIT UNLESS YOU ARE SURE YOU KNOW WHAT YOU ARE DOING --
-----------------------------------------------------------------

module SpotService_Client(lookupByPhoneNumber,lookupNearby) where
import qualified Data.IORef as R
import Prelude (($), (.), (>>=), (==), (++))
import qualified Prelude as P
import qualified Control.Exception as X
import qualified Control.Monad as M ( liftM, ap, when )
import Data.Functor ( (<$>) )
import qualified Data.ByteString.Lazy as LBS
import qualified Data.Hashable as H
import qualified Data.Int as I
import qualified Data.Maybe as M (catMaybes)
import qualified Data.Text.Lazy.Encoding as E ( decodeUtf8, encodeUtf8 )
import qualified Data.Text.Lazy as LT
import qualified GHC.Generics as G (Generic)
import qualified Data.Typeable as TY ( Typeable )
import qualified Data.HashMap.Strict as Map
import qualified Data.HashSet as Set
import qualified Data.Vector as Vector
import qualified Test.QuickCheck.Arbitrary as QC ( Arbitrary(..) )
import qualified Test.QuickCheck as QC ( elements )

import qualified Thrift as T
import qualified Thrift.Types as T
import qualified Thrift.Arbitraries as T


import Line_Types
import SpotService
seqid = R.newIORef 0
lookupByPhoneNumber (ip,op) arg_countryAreaCode arg_phoneNumber = do
  send_lookupByPhoneNumber op arg_countryAreaCode arg_phoneNumber
  recv_lookupByPhoneNumber ip
send_lookupByPhoneNumber op arg_countryAreaCode arg_phoneNumber = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("lookupByPhoneNumber", T.M_CALL, seqn) $
    write_LookupByPhoneNumber_args op (LookupByPhoneNumber_args{lookupByPhoneNumber_args_countryAreaCode=arg_countryAreaCode,lookupByPhoneNumber_args_phoneNumber=arg_phoneNumber})
recv_lookupByPhoneNumber ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_LookupByPhoneNumber_result ip
    P.maybe (P.return ()) X.throw (lookupByPhoneNumber_result_e res)
    P.return $ lookupByPhoneNumber_result_success res
lookupNearby (ip,op) arg_location arg_category arg_query arg_countryAreaCode = do
  send_lookupNearby op arg_location arg_category arg_query arg_countryAreaCode
  recv_lookupNearby ip
send_lookupNearby op arg_location arg_category arg_query arg_countryAreaCode = do
  seq <- seqid
  seqn <- R.readIORef seq
  T.writeMessage op ("lookupNearby", T.M_CALL, seqn) $
    write_LookupNearby_args op (LookupNearby_args{lookupNearby_args_location=arg_location,lookupNearby_args_category=arg_category,lookupNearby_args_query=arg_query,lookupNearby_args_countryAreaCode=arg_countryAreaCode})
recv_lookupNearby ip = do
  T.readMessage ip $ \(fname, mtype, rseqid) -> do
    M.when (mtype == T.M_EXCEPTION) $ do { exn <- T.readAppExn ip ; X.throw exn }
    res <- read_LookupNearby_result ip
    P.maybe (P.return ()) X.throw (lookupNearby_result_e res)
    P.return $ lookupNearby_result_success res
