
module AWS.MediaStoreData.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.MediaStoreData as MediaStoreData
import AWS.MediaStoreData.Types as MediaStoreDataTypes


-- | <p>Deletes an object at the specified path.</p>
deleteObject :: forall eff. MediaStoreData.Service -> MediaStoreDataTypes.DeleteObjectRequest -> Aff (exception :: EXCEPTION | eff) MediaStoreDataTypes.DeleteObjectResponse
deleteObject (MediaStoreData.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteObject"


-- | <p>Gets the headers for an object at the specified path.</p>
describeObject :: forall eff. MediaStoreData.Service -> MediaStoreDataTypes.DescribeObjectRequest -> Aff (exception :: EXCEPTION | eff) MediaStoreDataTypes.DescribeObjectResponse
describeObject (MediaStoreData.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeObject"


-- | <p>Downloads the object at the specified path.</p>
getObject :: forall eff. MediaStoreData.Service -> MediaStoreDataTypes.GetObjectRequest -> Aff (exception :: EXCEPTION | eff) MediaStoreDataTypes.GetObjectResponse
getObject (MediaStoreData.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getObject"


-- | <p>Provides a list of metadata entries about folders and objects in the specified folder.</p>
listItems :: forall eff. MediaStoreData.Service -> MediaStoreDataTypes.ListItemsRequest -> Aff (exception :: EXCEPTION | eff) MediaStoreDataTypes.ListItemsResponse
listItems (MediaStoreData.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listItems"


-- | <p>Uploads an object to the specified path. Object sizes are limited to 10 MB.</p>
putObject :: forall eff. MediaStoreData.Service -> MediaStoreDataTypes.PutObjectRequest -> Aff (exception :: EXCEPTION | eff) MediaStoreDataTypes.PutObjectResponse
putObject (MediaStoreData.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "putObject"
