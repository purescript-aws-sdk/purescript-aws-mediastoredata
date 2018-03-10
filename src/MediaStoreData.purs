

-- | <p>An AWS Elemental MediaStore asset is an object, similar to an object in the Amazon S3 service. Objects are the fundamental entities that are stored in AWS Elemental MediaStore.</p>
module AWS.MediaStoreData where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Foreign as Foreign
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined as NullOrUndefined
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap as StrMap

import AWS.Request as Request
import AWS.Request.Types as Types

serviceName = "MediaStoreData" :: String


-- | <p>Deletes an object at the specified path.</p>
deleteObject :: forall eff. DeleteObjectRequest -> Aff (exception :: EXCEPTION | eff) DeleteObjectResponse
deleteObject = Request.request serviceName "deleteObject" 


-- | <p>Gets the headers for an object at the specified path.</p>
describeObject :: forall eff. DescribeObjectRequest -> Aff (exception :: EXCEPTION | eff) DescribeObjectResponse
describeObject = Request.request serviceName "describeObject" 


-- | <p>Downloads the object at the specified path.</p>
getObject :: forall eff. GetObjectRequest -> Aff (exception :: EXCEPTION | eff) GetObjectResponse
getObject = Request.request serviceName "getObject" 


-- | <p>Provides a list of metadata entries about folders and objects in the specified folder.</p>
listItems :: forall eff. ListItemsRequest -> Aff (exception :: EXCEPTION | eff) ListItemsResponse
listItems = Request.request serviceName "listItems" 


-- | <p>Uploads an object to the specified path. Object sizes are limited to 10 MB.</p>
putObject :: forall eff. PutObjectRequest -> Aff (exception :: EXCEPTION | eff) PutObjectResponse
putObject = Request.request serviceName "putObject" 


-- | <p>The specified container was not found for the specified account.</p>
newtype ContainerNotFoundException = ContainerNotFoundException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeContainerNotFoundException :: Newtype ContainerNotFoundException _
derive instance repGenericContainerNotFoundException :: Generic ContainerNotFoundException _
instance showContainerNotFoundException :: Show ContainerNotFoundException where
  show = genericShow
instance decodeContainerNotFoundException :: Decode ContainerNotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeContainerNotFoundException :: Encode ContainerNotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ContainerNotFoundException from required parameters
newContainerNotFoundException :: ContainerNotFoundException
newContainerNotFoundException  = ContainerNotFoundException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ContainerNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContainerNotFoundException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> ContainerNotFoundException
newContainerNotFoundException'  customize = (ContainerNotFoundException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype ContentRangePattern = ContentRangePattern String
derive instance newtypeContentRangePattern :: Newtype ContentRangePattern _
derive instance repGenericContentRangePattern :: Generic ContentRangePattern _
instance showContentRangePattern :: Show ContentRangePattern where
  show = genericShow
instance decodeContentRangePattern :: Decode ContentRangePattern where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeContentRangePattern :: Encode ContentRangePattern where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ContentType = ContentType String
derive instance newtypeContentType :: Newtype ContentType _
derive instance repGenericContentType :: Generic ContentType _
instance showContentType :: Show ContentType where
  show = genericShow
instance decodeContentType :: Decode ContentType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeContentType :: Encode ContentType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DeleteObjectRequest = DeleteObjectRequest 
  { "Path" :: (PathNaming)
  }
derive instance newtypeDeleteObjectRequest :: Newtype DeleteObjectRequest _
derive instance repGenericDeleteObjectRequest :: Generic DeleteObjectRequest _
instance showDeleteObjectRequest :: Show DeleteObjectRequest where
  show = genericShow
instance decodeDeleteObjectRequest :: Decode DeleteObjectRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteObjectRequest :: Encode DeleteObjectRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteObjectRequest from required parameters
newDeleteObjectRequest :: PathNaming -> DeleteObjectRequest
newDeleteObjectRequest _Path = DeleteObjectRequest { "Path": _Path }

-- | Constructs DeleteObjectRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteObjectRequest' :: PathNaming -> ( { "Path" :: (PathNaming) } -> {"Path" :: (PathNaming) } ) -> DeleteObjectRequest
newDeleteObjectRequest' _Path customize = (DeleteObjectRequest <<< customize) { "Path": _Path }



newtype DeleteObjectResponse = DeleteObjectResponse Types.NoArguments
derive instance newtypeDeleteObjectResponse :: Newtype DeleteObjectResponse _
derive instance repGenericDeleteObjectResponse :: Generic DeleteObjectResponse _
instance showDeleteObjectResponse :: Show DeleteObjectResponse where
  show = genericShow
instance decodeDeleteObjectResponse :: Decode DeleteObjectResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteObjectResponse :: Encode DeleteObjectResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DescribeObjectRequest = DescribeObjectRequest 
  { "Path" :: (PathNaming)
  }
derive instance newtypeDescribeObjectRequest :: Newtype DescribeObjectRequest _
derive instance repGenericDescribeObjectRequest :: Generic DescribeObjectRequest _
instance showDescribeObjectRequest :: Show DescribeObjectRequest where
  show = genericShow
instance decodeDescribeObjectRequest :: Decode DescribeObjectRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeObjectRequest :: Encode DescribeObjectRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeObjectRequest from required parameters
newDescribeObjectRequest :: PathNaming -> DescribeObjectRequest
newDescribeObjectRequest _Path = DescribeObjectRequest { "Path": _Path }

-- | Constructs DescribeObjectRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeObjectRequest' :: PathNaming -> ( { "Path" :: (PathNaming) } -> {"Path" :: (PathNaming) } ) -> DescribeObjectRequest
newDescribeObjectRequest' _Path customize = (DescribeObjectRequest <<< customize) { "Path": _Path }



newtype DescribeObjectResponse = DescribeObjectResponse 
  { "ETag" :: NullOrUndefined.NullOrUndefined (ETag)
  , "ContentType" :: NullOrUndefined.NullOrUndefined (ContentType)
  , "ContentLength" :: NullOrUndefined.NullOrUndefined (NonNegativeLong)
  , "CacheControl" :: NullOrUndefined.NullOrUndefined (StringPrimitive)
  , "LastModified" :: NullOrUndefined.NullOrUndefined (TimeStamp)
  }
derive instance newtypeDescribeObjectResponse :: Newtype DescribeObjectResponse _
derive instance repGenericDescribeObjectResponse :: Generic DescribeObjectResponse _
instance showDescribeObjectResponse :: Show DescribeObjectResponse where
  show = genericShow
instance decodeDescribeObjectResponse :: Decode DescribeObjectResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeObjectResponse :: Encode DescribeObjectResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeObjectResponse from required parameters
newDescribeObjectResponse :: DescribeObjectResponse
newDescribeObjectResponse  = DescribeObjectResponse { "CacheControl": (NullOrUndefined Nothing), "ContentLength": (NullOrUndefined Nothing), "ContentType": (NullOrUndefined Nothing), "ETag": (NullOrUndefined Nothing), "LastModified": (NullOrUndefined Nothing) }

-- | Constructs DescribeObjectResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeObjectResponse' :: ( { "ETag" :: NullOrUndefined.NullOrUndefined (ETag) , "ContentType" :: NullOrUndefined.NullOrUndefined (ContentType) , "ContentLength" :: NullOrUndefined.NullOrUndefined (NonNegativeLong) , "CacheControl" :: NullOrUndefined.NullOrUndefined (StringPrimitive) , "LastModified" :: NullOrUndefined.NullOrUndefined (TimeStamp) } -> {"ETag" :: NullOrUndefined.NullOrUndefined (ETag) , "ContentType" :: NullOrUndefined.NullOrUndefined (ContentType) , "ContentLength" :: NullOrUndefined.NullOrUndefined (NonNegativeLong) , "CacheControl" :: NullOrUndefined.NullOrUndefined (StringPrimitive) , "LastModified" :: NullOrUndefined.NullOrUndefined (TimeStamp) } ) -> DescribeObjectResponse
newDescribeObjectResponse'  customize = (DescribeObjectResponse <<< customize) { "CacheControl": (NullOrUndefined Nothing), "ContentLength": (NullOrUndefined Nothing), "ContentType": (NullOrUndefined Nothing), "ETag": (NullOrUndefined Nothing), "LastModified": (NullOrUndefined Nothing) }



newtype ETag = ETag String
derive instance newtypeETag :: Newtype ETag _
derive instance repGenericETag :: Generic ETag _
instance showETag :: Show ETag where
  show = genericShow
instance decodeETag :: Decode ETag where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeETag :: Encode ETag where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where
  show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeErrorMessage :: Encode ErrorMessage where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype GetObjectRequest = GetObjectRequest 
  { "Path" :: (PathNaming)
  , "Range" :: NullOrUndefined.NullOrUndefined (RangePattern)
  }
derive instance newtypeGetObjectRequest :: Newtype GetObjectRequest _
derive instance repGenericGetObjectRequest :: Generic GetObjectRequest _
instance showGetObjectRequest :: Show GetObjectRequest where
  show = genericShow
instance decodeGetObjectRequest :: Decode GetObjectRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetObjectRequest :: Encode GetObjectRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetObjectRequest from required parameters
newGetObjectRequest :: PathNaming -> GetObjectRequest
newGetObjectRequest _Path = GetObjectRequest { "Path": _Path, "Range": (NullOrUndefined Nothing) }

-- | Constructs GetObjectRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetObjectRequest' :: PathNaming -> ( { "Path" :: (PathNaming) , "Range" :: NullOrUndefined.NullOrUndefined (RangePattern) } -> {"Path" :: (PathNaming) , "Range" :: NullOrUndefined.NullOrUndefined (RangePattern) } ) -> GetObjectRequest
newGetObjectRequest' _Path customize = (GetObjectRequest <<< customize) { "Path": _Path, "Range": (NullOrUndefined Nothing) }



newtype GetObjectResponse = GetObjectResponse 
  { "Body" :: NullOrUndefined.NullOrUndefined (PayloadBlob)
  , "CacheControl" :: NullOrUndefined.NullOrUndefined (StringPrimitive)
  , "ContentRange" :: NullOrUndefined.NullOrUndefined (ContentRangePattern)
  , "ContentLength" :: NullOrUndefined.NullOrUndefined (NonNegativeLong)
  , "ContentType" :: NullOrUndefined.NullOrUndefined (ContentType)
  , "ETag" :: NullOrUndefined.NullOrUndefined (ETag)
  , "LastModified" :: NullOrUndefined.NullOrUndefined (TimeStamp)
  , "StatusCode" :: (StatusCode')
  }
derive instance newtypeGetObjectResponse :: Newtype GetObjectResponse _
derive instance repGenericGetObjectResponse :: Generic GetObjectResponse _
instance showGetObjectResponse :: Show GetObjectResponse where
  show = genericShow
instance decodeGetObjectResponse :: Decode GetObjectResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetObjectResponse :: Encode GetObjectResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetObjectResponse from required parameters
newGetObjectResponse :: StatusCode' -> GetObjectResponse
newGetObjectResponse _StatusCode = GetObjectResponse { "StatusCode": _StatusCode, "Body": (NullOrUndefined Nothing), "CacheControl": (NullOrUndefined Nothing), "ContentLength": (NullOrUndefined Nothing), "ContentRange": (NullOrUndefined Nothing), "ContentType": (NullOrUndefined Nothing), "ETag": (NullOrUndefined Nothing), "LastModified": (NullOrUndefined Nothing) }

-- | Constructs GetObjectResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetObjectResponse' :: StatusCode' -> ( { "Body" :: NullOrUndefined.NullOrUndefined (PayloadBlob) , "CacheControl" :: NullOrUndefined.NullOrUndefined (StringPrimitive) , "ContentRange" :: NullOrUndefined.NullOrUndefined (ContentRangePattern) , "ContentLength" :: NullOrUndefined.NullOrUndefined (NonNegativeLong) , "ContentType" :: NullOrUndefined.NullOrUndefined (ContentType) , "ETag" :: NullOrUndefined.NullOrUndefined (ETag) , "LastModified" :: NullOrUndefined.NullOrUndefined (TimeStamp) , "StatusCode" :: (StatusCode') } -> {"Body" :: NullOrUndefined.NullOrUndefined (PayloadBlob) , "CacheControl" :: NullOrUndefined.NullOrUndefined (StringPrimitive) , "ContentRange" :: NullOrUndefined.NullOrUndefined (ContentRangePattern) , "ContentLength" :: NullOrUndefined.NullOrUndefined (NonNegativeLong) , "ContentType" :: NullOrUndefined.NullOrUndefined (ContentType) , "ETag" :: NullOrUndefined.NullOrUndefined (ETag) , "LastModified" :: NullOrUndefined.NullOrUndefined (TimeStamp) , "StatusCode" :: (StatusCode') } ) -> GetObjectResponse
newGetObjectResponse' _StatusCode customize = (GetObjectResponse <<< customize) { "StatusCode": _StatusCode, "Body": (NullOrUndefined Nothing), "CacheControl": (NullOrUndefined Nothing), "ContentLength": (NullOrUndefined Nothing), "ContentRange": (NullOrUndefined Nothing), "ContentType": (NullOrUndefined Nothing), "ETag": (NullOrUndefined Nothing), "LastModified": (NullOrUndefined Nothing) }



-- | <p>The service is temporarily unavailable.</p>
newtype InternalServerError = InternalServerError 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInternalServerError :: Newtype InternalServerError _
derive instance repGenericInternalServerError :: Generic InternalServerError _
instance showInternalServerError :: Show InternalServerError where
  show = genericShow
instance decodeInternalServerError :: Decode InternalServerError where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInternalServerError :: Encode InternalServerError where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InternalServerError from required parameters
newInternalServerError :: InternalServerError
newInternalServerError  = InternalServerError { "Message": (NullOrUndefined Nothing) }

-- | Constructs InternalServerError's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalServerError' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> InternalServerError
newInternalServerError'  customize = (InternalServerError <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>A metadata entry for a folder or object.</p>
newtype Item = Item 
  { "Name" :: NullOrUndefined.NullOrUndefined (ItemName)
  , "Type" :: NullOrUndefined.NullOrUndefined (ItemType)
  , "ETag" :: NullOrUndefined.NullOrUndefined (ETag)
  , "LastModified" :: NullOrUndefined.NullOrUndefined (TimeStamp)
  , "ContentType" :: NullOrUndefined.NullOrUndefined (ContentType)
  , "ContentLength" :: NullOrUndefined.NullOrUndefined (NonNegativeLong)
  }
derive instance newtypeItem :: Newtype Item _
derive instance repGenericItem :: Generic Item _
instance showItem :: Show Item where
  show = genericShow
instance decodeItem :: Decode Item where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeItem :: Encode Item where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Item from required parameters
newItem :: Item
newItem  = Item { "ContentLength": (NullOrUndefined Nothing), "ContentType": (NullOrUndefined Nothing), "ETag": (NullOrUndefined Nothing), "LastModified": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs Item's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newItem' :: ( { "Name" :: NullOrUndefined.NullOrUndefined (ItemName) , "Type" :: NullOrUndefined.NullOrUndefined (ItemType) , "ETag" :: NullOrUndefined.NullOrUndefined (ETag) , "LastModified" :: NullOrUndefined.NullOrUndefined (TimeStamp) , "ContentType" :: NullOrUndefined.NullOrUndefined (ContentType) , "ContentLength" :: NullOrUndefined.NullOrUndefined (NonNegativeLong) } -> {"Name" :: NullOrUndefined.NullOrUndefined (ItemName) , "Type" :: NullOrUndefined.NullOrUndefined (ItemType) , "ETag" :: NullOrUndefined.NullOrUndefined (ETag) , "LastModified" :: NullOrUndefined.NullOrUndefined (TimeStamp) , "ContentType" :: NullOrUndefined.NullOrUndefined (ContentType) , "ContentLength" :: NullOrUndefined.NullOrUndefined (NonNegativeLong) } ) -> Item
newItem'  customize = (Item <<< customize) { "ContentLength": (NullOrUndefined Nothing), "ContentType": (NullOrUndefined Nothing), "ETag": (NullOrUndefined Nothing), "LastModified": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



newtype ItemList = ItemList (Array Item)
derive instance newtypeItemList :: Newtype ItemList _
derive instance repGenericItemList :: Generic ItemList _
instance showItemList :: Show ItemList where
  show = genericShow
instance decodeItemList :: Decode ItemList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeItemList :: Encode ItemList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ItemName = ItemName String
derive instance newtypeItemName :: Newtype ItemName _
derive instance repGenericItemName :: Generic ItemName _
instance showItemName :: Show ItemName where
  show = genericShow
instance decodeItemName :: Decode ItemName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeItemName :: Encode ItemName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ItemType = ItemType String
derive instance newtypeItemType :: Newtype ItemType _
derive instance repGenericItemType :: Generic ItemType _
instance showItemType :: Show ItemType where
  show = genericShow
instance decodeItemType :: Decode ItemType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeItemType :: Encode ItemType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ListItemsRequest = ListItemsRequest 
  { "Path" :: NullOrUndefined.NullOrUndefined (ListPathNaming)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (ListLimit)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken)
  }
derive instance newtypeListItemsRequest :: Newtype ListItemsRequest _
derive instance repGenericListItemsRequest :: Generic ListItemsRequest _
instance showListItemsRequest :: Show ListItemsRequest where
  show = genericShow
instance decodeListItemsRequest :: Decode ListItemsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListItemsRequest :: Encode ListItemsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListItemsRequest from required parameters
newListItemsRequest :: ListItemsRequest
newListItemsRequest  = ListItemsRequest { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "Path": (NullOrUndefined Nothing) }

-- | Constructs ListItemsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListItemsRequest' :: ( { "Path" :: NullOrUndefined.NullOrUndefined (ListPathNaming) , "MaxResults" :: NullOrUndefined.NullOrUndefined (ListLimit) , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) } -> {"Path" :: NullOrUndefined.NullOrUndefined (ListPathNaming) , "MaxResults" :: NullOrUndefined.NullOrUndefined (ListLimit) , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) } ) -> ListItemsRequest
newListItemsRequest'  customize = (ListItemsRequest <<< customize) { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "Path": (NullOrUndefined Nothing) }



newtype ListItemsResponse = ListItemsResponse 
  { "Items" :: NullOrUndefined.NullOrUndefined (ItemList)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken)
  }
derive instance newtypeListItemsResponse :: Newtype ListItemsResponse _
derive instance repGenericListItemsResponse :: Generic ListItemsResponse _
instance showListItemsResponse :: Show ListItemsResponse where
  show = genericShow
instance decodeListItemsResponse :: Decode ListItemsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListItemsResponse :: Encode ListItemsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListItemsResponse from required parameters
newListItemsResponse :: ListItemsResponse
newListItemsResponse  = ListItemsResponse { "Items": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListItemsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListItemsResponse' :: ( { "Items" :: NullOrUndefined.NullOrUndefined (ItemList) , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) } -> {"Items" :: NullOrUndefined.NullOrUndefined (ItemList) , "NextToken" :: NullOrUndefined.NullOrUndefined (PaginationToken) } ) -> ListItemsResponse
newListItemsResponse'  customize = (ListItemsResponse <<< customize) { "Items": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListLimit = ListLimit Int
derive instance newtypeListLimit :: Newtype ListLimit _
derive instance repGenericListLimit :: Generic ListLimit _
instance showListLimit :: Show ListLimit where
  show = genericShow
instance decodeListLimit :: Decode ListLimit where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListLimit :: Encode ListLimit where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ListPathNaming = ListPathNaming String
derive instance newtypeListPathNaming :: Newtype ListPathNaming _
derive instance repGenericListPathNaming :: Generic ListPathNaming _
instance showListPathNaming :: Show ListPathNaming where
  show = genericShow
instance decodeListPathNaming :: Decode ListPathNaming where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListPathNaming :: Encode ListPathNaming where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype NonNegativeLong = NonNegativeLong Number
derive instance newtypeNonNegativeLong :: Newtype NonNegativeLong _
derive instance repGenericNonNegativeLong :: Generic NonNegativeLong _
instance showNonNegativeLong :: Show NonNegativeLong where
  show = genericShow
instance decodeNonNegativeLong :: Decode NonNegativeLong where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNonNegativeLong :: Encode NonNegativeLong where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Could not perform an operation on an object that does not exist.</p>
newtype ObjectNotFoundException = ObjectNotFoundException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeObjectNotFoundException :: Newtype ObjectNotFoundException _
derive instance repGenericObjectNotFoundException :: Generic ObjectNotFoundException _
instance showObjectNotFoundException :: Show ObjectNotFoundException where
  show = genericShow
instance decodeObjectNotFoundException :: Decode ObjectNotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeObjectNotFoundException :: Encode ObjectNotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ObjectNotFoundException from required parameters
newObjectNotFoundException :: ObjectNotFoundException
newObjectNotFoundException  = ObjectNotFoundException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ObjectNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newObjectNotFoundException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> ObjectNotFoundException
newObjectNotFoundException'  customize = (ObjectNotFoundException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype PaginationToken = PaginationToken String
derive instance newtypePaginationToken :: Newtype PaginationToken _
derive instance repGenericPaginationToken :: Generic PaginationToken _
instance showPaginationToken :: Show PaginationToken where
  show = genericShow
instance decodePaginationToken :: Decode PaginationToken where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePaginationToken :: Encode PaginationToken where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PathNaming = PathNaming String
derive instance newtypePathNaming :: Newtype PathNaming _
derive instance repGenericPathNaming :: Generic PathNaming _
instance showPathNaming :: Show PathNaming where
  show = genericShow
instance decodePathNaming :: Decode PathNaming where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePathNaming :: Encode PathNaming where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PayloadBlob = PayloadBlob String
derive instance newtypePayloadBlob :: Newtype PayloadBlob _
derive instance repGenericPayloadBlob :: Generic PayloadBlob _
instance showPayloadBlob :: Show PayloadBlob where
  show = genericShow
instance decodePayloadBlob :: Decode PayloadBlob where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePayloadBlob :: Encode PayloadBlob where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PutObjectRequest = PutObjectRequest 
  { "Body" :: (PayloadBlob)
  , "Path" :: (PathNaming)
  , "ContentType" :: NullOrUndefined.NullOrUndefined (ContentType)
  , "CacheControl" :: NullOrUndefined.NullOrUndefined (StringPrimitive)
  , "StorageClass" :: NullOrUndefined.NullOrUndefined (StorageClass)
  }
derive instance newtypePutObjectRequest :: Newtype PutObjectRequest _
derive instance repGenericPutObjectRequest :: Generic PutObjectRequest _
instance showPutObjectRequest :: Show PutObjectRequest where
  show = genericShow
instance decodePutObjectRequest :: Decode PutObjectRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePutObjectRequest :: Encode PutObjectRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PutObjectRequest from required parameters
newPutObjectRequest :: PayloadBlob -> PathNaming -> PutObjectRequest
newPutObjectRequest _Body _Path = PutObjectRequest { "Body": _Body, "Path": _Path, "CacheControl": (NullOrUndefined Nothing), "ContentType": (NullOrUndefined Nothing), "StorageClass": (NullOrUndefined Nothing) }

-- | Constructs PutObjectRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutObjectRequest' :: PayloadBlob -> PathNaming -> ( { "Body" :: (PayloadBlob) , "Path" :: (PathNaming) , "ContentType" :: NullOrUndefined.NullOrUndefined (ContentType) , "CacheControl" :: NullOrUndefined.NullOrUndefined (StringPrimitive) , "StorageClass" :: NullOrUndefined.NullOrUndefined (StorageClass) } -> {"Body" :: (PayloadBlob) , "Path" :: (PathNaming) , "ContentType" :: NullOrUndefined.NullOrUndefined (ContentType) , "CacheControl" :: NullOrUndefined.NullOrUndefined (StringPrimitive) , "StorageClass" :: NullOrUndefined.NullOrUndefined (StorageClass) } ) -> PutObjectRequest
newPutObjectRequest' _Body _Path customize = (PutObjectRequest <<< customize) { "Body": _Body, "Path": _Path, "CacheControl": (NullOrUndefined Nothing), "ContentType": (NullOrUndefined Nothing), "StorageClass": (NullOrUndefined Nothing) }



newtype PutObjectResponse = PutObjectResponse 
  { "ContentSHA256" :: NullOrUndefined.NullOrUndefined (SHA256Hash)
  , "ETag" :: NullOrUndefined.NullOrUndefined (ETag)
  , "StorageClass" :: NullOrUndefined.NullOrUndefined (StorageClass)
  }
derive instance newtypePutObjectResponse :: Newtype PutObjectResponse _
derive instance repGenericPutObjectResponse :: Generic PutObjectResponse _
instance showPutObjectResponse :: Show PutObjectResponse where
  show = genericShow
instance decodePutObjectResponse :: Decode PutObjectResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePutObjectResponse :: Encode PutObjectResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PutObjectResponse from required parameters
newPutObjectResponse :: PutObjectResponse
newPutObjectResponse  = PutObjectResponse { "ContentSHA256": (NullOrUndefined Nothing), "ETag": (NullOrUndefined Nothing), "StorageClass": (NullOrUndefined Nothing) }

-- | Constructs PutObjectResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutObjectResponse' :: ( { "ContentSHA256" :: NullOrUndefined.NullOrUndefined (SHA256Hash) , "ETag" :: NullOrUndefined.NullOrUndefined (ETag) , "StorageClass" :: NullOrUndefined.NullOrUndefined (StorageClass) } -> {"ContentSHA256" :: NullOrUndefined.NullOrUndefined (SHA256Hash) , "ETag" :: NullOrUndefined.NullOrUndefined (ETag) , "StorageClass" :: NullOrUndefined.NullOrUndefined (StorageClass) } ) -> PutObjectResponse
newPutObjectResponse'  customize = (PutObjectResponse <<< customize) { "ContentSHA256": (NullOrUndefined Nothing), "ETag": (NullOrUndefined Nothing), "StorageClass": (NullOrUndefined Nothing) }



newtype RangePattern = RangePattern String
derive instance newtypeRangePattern :: Newtype RangePattern _
derive instance repGenericRangePattern :: Generic RangePattern _
instance showRangePattern :: Show RangePattern where
  show = genericShow
instance decodeRangePattern :: Decode RangePattern where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRangePattern :: Encode RangePattern where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The requested content range is not valid.</p>
newtype RequestedRangeNotSatisfiableException = RequestedRangeNotSatisfiableException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeRequestedRangeNotSatisfiableException :: Newtype RequestedRangeNotSatisfiableException _
derive instance repGenericRequestedRangeNotSatisfiableException :: Generic RequestedRangeNotSatisfiableException _
instance showRequestedRangeNotSatisfiableException :: Show RequestedRangeNotSatisfiableException where
  show = genericShow
instance decodeRequestedRangeNotSatisfiableException :: Decode RequestedRangeNotSatisfiableException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRequestedRangeNotSatisfiableException :: Encode RequestedRangeNotSatisfiableException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RequestedRangeNotSatisfiableException from required parameters
newRequestedRangeNotSatisfiableException :: RequestedRangeNotSatisfiableException
newRequestedRangeNotSatisfiableException  = RequestedRangeNotSatisfiableException { "Message": (NullOrUndefined Nothing) }

-- | Constructs RequestedRangeNotSatisfiableException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRequestedRangeNotSatisfiableException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> RequestedRangeNotSatisfiableException
newRequestedRangeNotSatisfiableException'  customize = (RequestedRangeNotSatisfiableException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype SHA256Hash = SHA256Hash String
derive instance newtypeSHA256Hash :: Newtype SHA256Hash _
derive instance repGenericSHA256Hash :: Generic SHA256Hash _
instance showSHA256Hash :: Show SHA256Hash where
  show = genericShow
instance decodeSHA256Hash :: Decode SHA256Hash where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSHA256Hash :: Encode SHA256Hash where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype StorageClass = StorageClass String
derive instance newtypeStorageClass :: Newtype StorageClass _
derive instance repGenericStorageClass :: Generic StorageClass _
instance showStorageClass :: Show StorageClass where
  show = genericShow
instance decodeStorageClass :: Decode StorageClass where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStorageClass :: Encode StorageClass where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype StringPrimitive = StringPrimitive String
derive instance newtypeStringPrimitive :: Newtype StringPrimitive _
derive instance repGenericStringPrimitive :: Generic StringPrimitive _
instance showStringPrimitive :: Show StringPrimitive where
  show = genericShow
instance decodeStringPrimitive :: Decode StringPrimitive where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStringPrimitive :: Encode StringPrimitive where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype TimeStamp = TimeStamp Types.Timestamp
derive instance newtypeTimeStamp :: Newtype TimeStamp _
derive instance repGenericTimeStamp :: Generic TimeStamp _
instance showTimeStamp :: Show TimeStamp where
  show = genericShow
instance decodeTimeStamp :: Decode TimeStamp where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTimeStamp :: Encode TimeStamp where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype StatusCode' = StatusCode' Int
derive instance newtypeStatusCode' :: Newtype StatusCode' _
derive instance repGenericStatusCode' :: Generic StatusCode' _
instance showStatusCode' :: Show StatusCode' where
  show = genericShow
instance decodeStatusCode' :: Decode StatusCode' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStatusCode' :: Encode StatusCode' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

