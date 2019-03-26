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

module ChannelApplicationProvidedService_Iface where
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

class ChannelApplicationProvidedService_Iface a where
  activeBuddySubscriberCount :: a -> P.IO I.Int64
  addOperationForChannel :: a -> OpType -> LT.Text -> LT.Text -> LT.Text -> P.IO ()
  displayBuddySubscriberCount :: a -> P.IO I.Int64
  findContactByUseridWithoutAbuseBlockForChannel :: a -> LT.Text -> P.IO Contact
  getAllContactIdsForChannel :: a -> P.IO (Vector.Vector LT.Text)
  getCompactContacts :: a -> I.Int64 -> P.IO (Vector.Vector CompactContact)
  getContactsForChannel :: a -> (Vector.Vector LT.Text) -> P.IO (Vector.Vector Contact)
  getDisplayName :: a -> LT.Text -> P.IO LT.Text
  getFavoriteMidsForChannel :: a -> P.IO (Vector.Vector LT.Text)
  getFriendMids :: a -> P.IO (Vector.Vector LT.Text)
  getGroupMemberMids :: a -> LT.Text -> P.IO (Vector.Vector LT.Text)
  getGroupsForChannel :: a -> (Vector.Vector LT.Text) -> P.IO (Vector.Vector Group)
  getIdentityCredential :: a -> P.IO IdentityCredential
  getJoinedGroupIdsForChannel :: a -> P.IO (Vector.Vector LT.Text)
  getMetaProfile :: a -> P.IO MetaProfile
  getMid :: a -> P.IO LT.Text
  getPrimaryClientForChannel :: a -> P.IO SimpleChannelClient
  getProfileForChannel :: a -> P.IO Profile
  getSimpleChannelContacts :: a -> (Vector.Vector LT.Text) -> P.IO (Vector.Vector SimpleChannelContact)
  getUserCountryForBilling :: a -> LT.Text -> LT.Text -> P.IO LT.Text
  getUserCreateTime :: a -> P.IO I.Int64
  getUserIdentities :: a -> P.IO (Map.HashMap RegistrationType LT.Text)
  getUserLanguage :: a -> P.IO LT.Text
  getUserMidsWhoAddedMe :: a -> P.IO (Vector.Vector LT.Text)
  isGroupMember :: a -> LT.Text -> P.IO P.Bool
  isInContact :: a -> LT.Text -> P.IO P.Bool
  registerChannelCP :: a -> LT.Text -> LT.Text -> P.IO LT.Text
  removeNotificationStatus :: a -> NotificationStatus -> P.IO ()
  sendMessageForChannel :: a -> Message -> P.IO Message
  sendPinCodeOperation :: a -> LT.Text -> P.IO ()
  updateProfileAttributeForChannel :: a -> ProfileAttribute -> LT.Text -> P.IO ()