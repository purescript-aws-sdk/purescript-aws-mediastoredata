
module AWS.MediaStoreData.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>The specified container was not found for the specified account.</p>
newtype ContainerNotFoundException = ContainerNotFoundException 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeContainerNotFoundException :: Newtype ContainerNotFoundException _
derive instance repGenericContainerNotFoundException :: Generic ContainerNotFoundException _
instance showContainerNotFoundException :: Show ContainerNotFoundException where show = genericShow
instance decodeContainerNotFoundException :: Decode ContainerNotFoundException where decode = genericDecode options
instance encodeContainerNotFoundException :: Encode ContainerNotFoundException where encode = genericEncode options

-- | Constructs ContainerNotFoundException from required parameters
newContainerNotFoundException :: ContainerNotFoundException
newContainerNotFoundException  = ContainerNotFoundException { "Message": Nothing }

-- | Constructs ContainerNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContainerNotFoundException' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> ContainerNotFoundException
newContainerNotFoundException'  customize = (ContainerNotFoundException <<< customize) { "Message": Nothing }



newtype ContentRangePattern = ContentRangePattern String
derive instance newtypeContentRangePattern :: Newtype ContentRangePattern _
derive instance repGenericContentRangePattern :: Generic ContentRangePattern _
instance showContentRangePattern :: Show ContentRangePattern where show = genericShow
instance decodeContentRangePattern :: Decode ContentRangePattern where decode = genericDecode options
instance encodeContentRangePattern :: Encode ContentRangePattern where encode = genericEncode options



newtype ContentType = ContentType String
derive instance newtypeContentType :: Newtype ContentType _
derive instance repGenericContentType :: Generic ContentType _
instance showContentType :: Show ContentType where show = genericShow
instance decodeContentType :: Decode ContentType where decode = genericDecode options
instance encodeContentType :: Encode ContentType where encode = genericEncode options



newtype DeleteObjectRequest = DeleteObjectRequest 
  { "Path" :: (PathNaming)
  }
derive instance newtypeDeleteObjectRequest :: Newtype DeleteObjectRequest _
derive instance repGenericDeleteObjectRequest :: Generic DeleteObjectRequest _
instance showDeleteObjectRequest :: Show DeleteObjectRequest where show = genericShow
instance decodeDeleteObjectRequest :: Decode DeleteObjectRequest where decode = genericDecode options
instance encodeDeleteObjectRequest :: Encode DeleteObjectRequest where encode = genericEncode options

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
instance showDeleteObjectResponse :: Show DeleteObjectResponse where show = genericShow
instance decodeDeleteObjectResponse :: Decode DeleteObjectResponse where decode = genericDecode options
instance encodeDeleteObjectResponse :: Encode DeleteObjectResponse where encode = genericEncode options



newtype DescribeObjectRequest = DescribeObjectRequest 
  { "Path" :: (PathNaming)
  }
derive instance newtypeDescribeObjectRequest :: Newtype DescribeObjectRequest _
derive instance repGenericDescribeObjectRequest :: Generic DescribeObjectRequest _
instance showDescribeObjectRequest :: Show DescribeObjectRequest where show = genericShow
instance decodeDescribeObjectRequest :: Decode DescribeObjectRequest where decode = genericDecode options
instance encodeDescribeObjectRequest :: Encode DescribeObjectRequest where encode = genericEncode options

-- | Constructs DescribeObjectRequest from required parameters
newDescribeObjectRequest :: PathNaming -> DescribeObjectRequest
newDescribeObjectRequest _Path = DescribeObjectRequest { "Path": _Path }

-- | Constructs DescribeObjectRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeObjectRequest' :: PathNaming -> ( { "Path" :: (PathNaming) } -> {"Path" :: (PathNaming) } ) -> DescribeObjectRequest
newDescribeObjectRequest' _Path customize = (DescribeObjectRequest <<< customize) { "Path": _Path }



newtype DescribeObjectResponse = DescribeObjectResponse 
  { "ETag" :: Maybe (ETag)
  , "ContentType" :: Maybe (ContentType)
  , "ContentLength" :: Maybe (NonNegativeLong)
  , "CacheControl" :: Maybe (StringPrimitive)
  , "LastModified" :: Maybe (TimeStamp)
  }
derive instance newtypeDescribeObjectResponse :: Newtype DescribeObjectResponse _
derive instance repGenericDescribeObjectResponse :: Generic DescribeObjectResponse _
instance showDescribeObjectResponse :: Show DescribeObjectResponse where show = genericShow
instance decodeDescribeObjectResponse :: Decode DescribeObjectResponse where decode = genericDecode options
instance encodeDescribeObjectResponse :: Encode DescribeObjectResponse where encode = genericEncode options

-- | Constructs DescribeObjectResponse from required parameters
newDescribeObjectResponse :: DescribeObjectResponse
newDescribeObjectResponse  = DescribeObjectResponse { "CacheControl": Nothing, "ContentLength": Nothing, "ContentType": Nothing, "ETag": Nothing, "LastModified": Nothing }

-- | Constructs DescribeObjectResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeObjectResponse' :: ( { "ETag" :: Maybe (ETag) , "ContentType" :: Maybe (ContentType) , "ContentLength" :: Maybe (NonNegativeLong) , "CacheControl" :: Maybe (StringPrimitive) , "LastModified" :: Maybe (TimeStamp) } -> {"ETag" :: Maybe (ETag) , "ContentType" :: Maybe (ContentType) , "ContentLength" :: Maybe (NonNegativeLong) , "CacheControl" :: Maybe (StringPrimitive) , "LastModified" :: Maybe (TimeStamp) } ) -> DescribeObjectResponse
newDescribeObjectResponse'  customize = (DescribeObjectResponse <<< customize) { "CacheControl": Nothing, "ContentLength": Nothing, "ContentType": Nothing, "ETag": Nothing, "LastModified": Nothing }



newtype ETag = ETag String
derive instance newtypeETag :: Newtype ETag _
derive instance repGenericETag :: Generic ETag _
instance showETag :: Show ETag where show = genericShow
instance decodeETag :: Decode ETag where decode = genericDecode options
instance encodeETag :: Encode ETag where encode = genericEncode options



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where decode = genericDecode options
instance encodeErrorMessage :: Encode ErrorMessage where encode = genericEncode options



newtype GetObjectRequest = GetObjectRequest 
  { "Path" :: (PathNaming)
  , "Range" :: Maybe (RangePattern)
  }
derive instance newtypeGetObjectRequest :: Newtype GetObjectRequest _
derive instance repGenericGetObjectRequest :: Generic GetObjectRequest _
instance showGetObjectRequest :: Show GetObjectRequest where show = genericShow
instance decodeGetObjectRequest :: Decode GetObjectRequest where decode = genericDecode options
instance encodeGetObjectRequest :: Encode GetObjectRequest where encode = genericEncode options

-- | Constructs GetObjectRequest from required parameters
newGetObjectRequest :: PathNaming -> GetObjectRequest
newGetObjectRequest _Path = GetObjectRequest { "Path": _Path, "Range": Nothing }

-- | Constructs GetObjectRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetObjectRequest' :: PathNaming -> ( { "Path" :: (PathNaming) , "Range" :: Maybe (RangePattern) } -> {"Path" :: (PathNaming) , "Range" :: Maybe (RangePattern) } ) -> GetObjectRequest
newGetObjectRequest' _Path customize = (GetObjectRequest <<< customize) { "Path": _Path, "Range": Nothing }



newtype GetObjectResponse = GetObjectResponse 
  { "Body" :: Maybe (PayloadBlob)
  , "CacheControl" :: Maybe (StringPrimitive)
  , "ContentRange" :: Maybe (ContentRangePattern)
  , "ContentLength" :: Maybe (NonNegativeLong)
  , "ContentType" :: Maybe (ContentType)
  , "ETag" :: Maybe (ETag)
  , "LastModified" :: Maybe (TimeStamp)
  , "StatusCode" :: (StatusCode')
  }
derive instance newtypeGetObjectResponse :: Newtype GetObjectResponse _
derive instance repGenericGetObjectResponse :: Generic GetObjectResponse _
instance showGetObjectResponse :: Show GetObjectResponse where show = genericShow
instance decodeGetObjectResponse :: Decode GetObjectResponse where decode = genericDecode options
instance encodeGetObjectResponse :: Encode GetObjectResponse where encode = genericEncode options

-- | Constructs GetObjectResponse from required parameters
newGetObjectResponse :: StatusCode' -> GetObjectResponse
newGetObjectResponse _StatusCode = GetObjectResponse { "StatusCode": _StatusCode, "Body": Nothing, "CacheControl": Nothing, "ContentLength": Nothing, "ContentRange": Nothing, "ContentType": Nothing, "ETag": Nothing, "LastModified": Nothing }

-- | Constructs GetObjectResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetObjectResponse' :: StatusCode' -> ( { "Body" :: Maybe (PayloadBlob) , "CacheControl" :: Maybe (StringPrimitive) , "ContentRange" :: Maybe (ContentRangePattern) , "ContentLength" :: Maybe (NonNegativeLong) , "ContentType" :: Maybe (ContentType) , "ETag" :: Maybe (ETag) , "LastModified" :: Maybe (TimeStamp) , "StatusCode" :: (StatusCode') } -> {"Body" :: Maybe (PayloadBlob) , "CacheControl" :: Maybe (StringPrimitive) , "ContentRange" :: Maybe (ContentRangePattern) , "ContentLength" :: Maybe (NonNegativeLong) , "ContentType" :: Maybe (ContentType) , "ETag" :: Maybe (ETag) , "LastModified" :: Maybe (TimeStamp) , "StatusCode" :: (StatusCode') } ) -> GetObjectResponse
newGetObjectResponse' _StatusCode customize = (GetObjectResponse <<< customize) { "StatusCode": _StatusCode, "Body": Nothing, "CacheControl": Nothing, "ContentLength": Nothing, "ContentRange": Nothing, "ContentType": Nothing, "ETag": Nothing, "LastModified": Nothing }



-- | <p>The service is temporarily unavailable.</p>
newtype InternalServerError = InternalServerError 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeInternalServerError :: Newtype InternalServerError _
derive instance repGenericInternalServerError :: Generic InternalServerError _
instance showInternalServerError :: Show InternalServerError where show = genericShow
instance decodeInternalServerError :: Decode InternalServerError where decode = genericDecode options
instance encodeInternalServerError :: Encode InternalServerError where encode = genericEncode options

-- | Constructs InternalServerError from required parameters
newInternalServerError :: InternalServerError
newInternalServerError  = InternalServerError { "Message": Nothing }

-- | Constructs InternalServerError's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalServerError' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> InternalServerError
newInternalServerError'  customize = (InternalServerError <<< customize) { "Message": Nothing }



-- | <p>A metadata entry for a folder or object.</p>
newtype Item = Item 
  { "Name" :: Maybe (ItemName)
  , "Type" :: Maybe (ItemType)
  , "ETag" :: Maybe (ETag)
  , "LastModified" :: Maybe (TimeStamp)
  , "ContentType" :: Maybe (ContentType)
  , "ContentLength" :: Maybe (NonNegativeLong)
  }
derive instance newtypeItem :: Newtype Item _
derive instance repGenericItem :: Generic Item _
instance showItem :: Show Item where show = genericShow
instance decodeItem :: Decode Item where decode = genericDecode options
instance encodeItem :: Encode Item where encode = genericEncode options

-- | Constructs Item from required parameters
newItem :: Item
newItem  = Item { "ContentLength": Nothing, "ContentType": Nothing, "ETag": Nothing, "LastModified": Nothing, "Name": Nothing, "Type": Nothing }

-- | Constructs Item's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newItem' :: ( { "Name" :: Maybe (ItemName) , "Type" :: Maybe (ItemType) , "ETag" :: Maybe (ETag) , "LastModified" :: Maybe (TimeStamp) , "ContentType" :: Maybe (ContentType) , "ContentLength" :: Maybe (NonNegativeLong) } -> {"Name" :: Maybe (ItemName) , "Type" :: Maybe (ItemType) , "ETag" :: Maybe (ETag) , "LastModified" :: Maybe (TimeStamp) , "ContentType" :: Maybe (ContentType) , "ContentLength" :: Maybe (NonNegativeLong) } ) -> Item
newItem'  customize = (Item <<< customize) { "ContentLength": Nothing, "ContentType": Nothing, "ETag": Nothing, "LastModified": Nothing, "Name": Nothing, "Type": Nothing }



newtype ItemList = ItemList (Array Item)
derive instance newtypeItemList :: Newtype ItemList _
derive instance repGenericItemList :: Generic ItemList _
instance showItemList :: Show ItemList where show = genericShow
instance decodeItemList :: Decode ItemList where decode = genericDecode options
instance encodeItemList :: Encode ItemList where encode = genericEncode options



newtype ItemName = ItemName String
derive instance newtypeItemName :: Newtype ItemName _
derive instance repGenericItemName :: Generic ItemName _
instance showItemName :: Show ItemName where show = genericShow
instance decodeItemName :: Decode ItemName where decode = genericDecode options
instance encodeItemName :: Encode ItemName where encode = genericEncode options



newtype ItemType = ItemType String
derive instance newtypeItemType :: Newtype ItemType _
derive instance repGenericItemType :: Generic ItemType _
instance showItemType :: Show ItemType where show = genericShow
instance decodeItemType :: Decode ItemType where decode = genericDecode options
instance encodeItemType :: Encode ItemType where encode = genericEncode options



newtype ListItemsRequest = ListItemsRequest 
  { "Path" :: Maybe (ListPathNaming)
  , "MaxResults" :: Maybe (ListLimit)
  , "NextToken" :: Maybe (PaginationToken)
  }
derive instance newtypeListItemsRequest :: Newtype ListItemsRequest _
derive instance repGenericListItemsRequest :: Generic ListItemsRequest _
instance showListItemsRequest :: Show ListItemsRequest where show = genericShow
instance decodeListItemsRequest :: Decode ListItemsRequest where decode = genericDecode options
instance encodeListItemsRequest :: Encode ListItemsRequest where encode = genericEncode options

-- | Constructs ListItemsRequest from required parameters
newListItemsRequest :: ListItemsRequest
newListItemsRequest  = ListItemsRequest { "MaxResults": Nothing, "NextToken": Nothing, "Path": Nothing }

-- | Constructs ListItemsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListItemsRequest' :: ( { "Path" :: Maybe (ListPathNaming) , "MaxResults" :: Maybe (ListLimit) , "NextToken" :: Maybe (PaginationToken) } -> {"Path" :: Maybe (ListPathNaming) , "MaxResults" :: Maybe (ListLimit) , "NextToken" :: Maybe (PaginationToken) } ) -> ListItemsRequest
newListItemsRequest'  customize = (ListItemsRequest <<< customize) { "MaxResults": Nothing, "NextToken": Nothing, "Path": Nothing }



newtype ListItemsResponse = ListItemsResponse 
  { "Items" :: Maybe (ItemList)
  , "NextToken" :: Maybe (PaginationToken)
  }
derive instance newtypeListItemsResponse :: Newtype ListItemsResponse _
derive instance repGenericListItemsResponse :: Generic ListItemsResponse _
instance showListItemsResponse :: Show ListItemsResponse where show = genericShow
instance decodeListItemsResponse :: Decode ListItemsResponse where decode = genericDecode options
instance encodeListItemsResponse :: Encode ListItemsResponse where encode = genericEncode options

-- | Constructs ListItemsResponse from required parameters
newListItemsResponse :: ListItemsResponse
newListItemsResponse  = ListItemsResponse { "Items": Nothing, "NextToken": Nothing }

-- | Constructs ListItemsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListItemsResponse' :: ( { "Items" :: Maybe (ItemList) , "NextToken" :: Maybe (PaginationToken) } -> {"Items" :: Maybe (ItemList) , "NextToken" :: Maybe (PaginationToken) } ) -> ListItemsResponse
newListItemsResponse'  customize = (ListItemsResponse <<< customize) { "Items": Nothing, "NextToken": Nothing }



newtype ListLimit = ListLimit Int
derive instance newtypeListLimit :: Newtype ListLimit _
derive instance repGenericListLimit :: Generic ListLimit _
instance showListLimit :: Show ListLimit where show = genericShow
instance decodeListLimit :: Decode ListLimit where decode = genericDecode options
instance encodeListLimit :: Encode ListLimit where encode = genericEncode options



newtype ListPathNaming = ListPathNaming String
derive instance newtypeListPathNaming :: Newtype ListPathNaming _
derive instance repGenericListPathNaming :: Generic ListPathNaming _
instance showListPathNaming :: Show ListPathNaming where show = genericShow
instance decodeListPathNaming :: Decode ListPathNaming where decode = genericDecode options
instance encodeListPathNaming :: Encode ListPathNaming where encode = genericEncode options



newtype NonNegativeLong = NonNegativeLong Number
derive instance newtypeNonNegativeLong :: Newtype NonNegativeLong _
derive instance repGenericNonNegativeLong :: Generic NonNegativeLong _
instance showNonNegativeLong :: Show NonNegativeLong where show = genericShow
instance decodeNonNegativeLong :: Decode NonNegativeLong where decode = genericDecode options
instance encodeNonNegativeLong :: Encode NonNegativeLong where encode = genericEncode options



-- | <p>Could not perform an operation on an object that does not exist.</p>
newtype ObjectNotFoundException = ObjectNotFoundException 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeObjectNotFoundException :: Newtype ObjectNotFoundException _
derive instance repGenericObjectNotFoundException :: Generic ObjectNotFoundException _
instance showObjectNotFoundException :: Show ObjectNotFoundException where show = genericShow
instance decodeObjectNotFoundException :: Decode ObjectNotFoundException where decode = genericDecode options
instance encodeObjectNotFoundException :: Encode ObjectNotFoundException where encode = genericEncode options

-- | Constructs ObjectNotFoundException from required parameters
newObjectNotFoundException :: ObjectNotFoundException
newObjectNotFoundException  = ObjectNotFoundException { "Message": Nothing }

-- | Constructs ObjectNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newObjectNotFoundException' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> ObjectNotFoundException
newObjectNotFoundException'  customize = (ObjectNotFoundException <<< customize) { "Message": Nothing }



newtype PaginationToken = PaginationToken String
derive instance newtypePaginationToken :: Newtype PaginationToken _
derive instance repGenericPaginationToken :: Generic PaginationToken _
instance showPaginationToken :: Show PaginationToken where show = genericShow
instance decodePaginationToken :: Decode PaginationToken where decode = genericDecode options
instance encodePaginationToken :: Encode PaginationToken where encode = genericEncode options



newtype PathNaming = PathNaming String
derive instance newtypePathNaming :: Newtype PathNaming _
derive instance repGenericPathNaming :: Generic PathNaming _
instance showPathNaming :: Show PathNaming where show = genericShow
instance decodePathNaming :: Decode PathNaming where decode = genericDecode options
instance encodePathNaming :: Encode PathNaming where encode = genericEncode options



newtype PayloadBlob = PayloadBlob String
derive instance newtypePayloadBlob :: Newtype PayloadBlob _
derive instance repGenericPayloadBlob :: Generic PayloadBlob _
instance showPayloadBlob :: Show PayloadBlob where show = genericShow
instance decodePayloadBlob :: Decode PayloadBlob where decode = genericDecode options
instance encodePayloadBlob :: Encode PayloadBlob where encode = genericEncode options



newtype PutObjectRequest = PutObjectRequest 
  { "Body" :: (PayloadBlob)
  , "Path" :: (PathNaming)
  , "ContentType" :: Maybe (ContentType)
  , "CacheControl" :: Maybe (StringPrimitive)
  , "StorageClass" :: Maybe (StorageClass)
  }
derive instance newtypePutObjectRequest :: Newtype PutObjectRequest _
derive instance repGenericPutObjectRequest :: Generic PutObjectRequest _
instance showPutObjectRequest :: Show PutObjectRequest where show = genericShow
instance decodePutObjectRequest :: Decode PutObjectRequest where decode = genericDecode options
instance encodePutObjectRequest :: Encode PutObjectRequest where encode = genericEncode options

-- | Constructs PutObjectRequest from required parameters
newPutObjectRequest :: PayloadBlob -> PathNaming -> PutObjectRequest
newPutObjectRequest _Body _Path = PutObjectRequest { "Body": _Body, "Path": _Path, "CacheControl": Nothing, "ContentType": Nothing, "StorageClass": Nothing }

-- | Constructs PutObjectRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutObjectRequest' :: PayloadBlob -> PathNaming -> ( { "Body" :: (PayloadBlob) , "Path" :: (PathNaming) , "ContentType" :: Maybe (ContentType) , "CacheControl" :: Maybe (StringPrimitive) , "StorageClass" :: Maybe (StorageClass) } -> {"Body" :: (PayloadBlob) , "Path" :: (PathNaming) , "ContentType" :: Maybe (ContentType) , "CacheControl" :: Maybe (StringPrimitive) , "StorageClass" :: Maybe (StorageClass) } ) -> PutObjectRequest
newPutObjectRequest' _Body _Path customize = (PutObjectRequest <<< customize) { "Body": _Body, "Path": _Path, "CacheControl": Nothing, "ContentType": Nothing, "StorageClass": Nothing }



newtype PutObjectResponse = PutObjectResponse 
  { "ContentSHA256" :: Maybe (SHA256Hash)
  , "ETag" :: Maybe (ETag)
  , "StorageClass" :: Maybe (StorageClass)
  }
derive instance newtypePutObjectResponse :: Newtype PutObjectResponse _
derive instance repGenericPutObjectResponse :: Generic PutObjectResponse _
instance showPutObjectResponse :: Show PutObjectResponse where show = genericShow
instance decodePutObjectResponse :: Decode PutObjectResponse where decode = genericDecode options
instance encodePutObjectResponse :: Encode PutObjectResponse where encode = genericEncode options

-- | Constructs PutObjectResponse from required parameters
newPutObjectResponse :: PutObjectResponse
newPutObjectResponse  = PutObjectResponse { "ContentSHA256": Nothing, "ETag": Nothing, "StorageClass": Nothing }

-- | Constructs PutObjectResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutObjectResponse' :: ( { "ContentSHA256" :: Maybe (SHA256Hash) , "ETag" :: Maybe (ETag) , "StorageClass" :: Maybe (StorageClass) } -> {"ContentSHA256" :: Maybe (SHA256Hash) , "ETag" :: Maybe (ETag) , "StorageClass" :: Maybe (StorageClass) } ) -> PutObjectResponse
newPutObjectResponse'  customize = (PutObjectResponse <<< customize) { "ContentSHA256": Nothing, "ETag": Nothing, "StorageClass": Nothing }



newtype RangePattern = RangePattern String
derive instance newtypeRangePattern :: Newtype RangePattern _
derive instance repGenericRangePattern :: Generic RangePattern _
instance showRangePattern :: Show RangePattern where show = genericShow
instance decodeRangePattern :: Decode RangePattern where decode = genericDecode options
instance encodeRangePattern :: Encode RangePattern where encode = genericEncode options



-- | <p>The requested content range is not valid.</p>
newtype RequestedRangeNotSatisfiableException = RequestedRangeNotSatisfiableException 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeRequestedRangeNotSatisfiableException :: Newtype RequestedRangeNotSatisfiableException _
derive instance repGenericRequestedRangeNotSatisfiableException :: Generic RequestedRangeNotSatisfiableException _
instance showRequestedRangeNotSatisfiableException :: Show RequestedRangeNotSatisfiableException where show = genericShow
instance decodeRequestedRangeNotSatisfiableException :: Decode RequestedRangeNotSatisfiableException where decode = genericDecode options
instance encodeRequestedRangeNotSatisfiableException :: Encode RequestedRangeNotSatisfiableException where encode = genericEncode options

-- | Constructs RequestedRangeNotSatisfiableException from required parameters
newRequestedRangeNotSatisfiableException :: RequestedRangeNotSatisfiableException
newRequestedRangeNotSatisfiableException  = RequestedRangeNotSatisfiableException { "Message": Nothing }

-- | Constructs RequestedRangeNotSatisfiableException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRequestedRangeNotSatisfiableException' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> RequestedRangeNotSatisfiableException
newRequestedRangeNotSatisfiableException'  customize = (RequestedRangeNotSatisfiableException <<< customize) { "Message": Nothing }



newtype SHA256Hash = SHA256Hash String
derive instance newtypeSHA256Hash :: Newtype SHA256Hash _
derive instance repGenericSHA256Hash :: Generic SHA256Hash _
instance showSHA256Hash :: Show SHA256Hash where show = genericShow
instance decodeSHA256Hash :: Decode SHA256Hash where decode = genericDecode options
instance encodeSHA256Hash :: Encode SHA256Hash where encode = genericEncode options



newtype StorageClass = StorageClass String
derive instance newtypeStorageClass :: Newtype StorageClass _
derive instance repGenericStorageClass :: Generic StorageClass _
instance showStorageClass :: Show StorageClass where show = genericShow
instance decodeStorageClass :: Decode StorageClass where decode = genericDecode options
instance encodeStorageClass :: Encode StorageClass where encode = genericEncode options



newtype StringPrimitive = StringPrimitive String
derive instance newtypeStringPrimitive :: Newtype StringPrimitive _
derive instance repGenericStringPrimitive :: Generic StringPrimitive _
instance showStringPrimitive :: Show StringPrimitive where show = genericShow
instance decodeStringPrimitive :: Decode StringPrimitive where decode = genericDecode options
instance encodeStringPrimitive :: Encode StringPrimitive where encode = genericEncode options



newtype TimeStamp = TimeStamp Types.Timestamp
derive instance newtypeTimeStamp :: Newtype TimeStamp _
derive instance repGenericTimeStamp :: Generic TimeStamp _
instance showTimeStamp :: Show TimeStamp where show = genericShow
instance decodeTimeStamp :: Decode TimeStamp where decode = genericDecode options
instance encodeTimeStamp :: Encode TimeStamp where encode = genericEncode options



newtype StatusCode' = StatusCode' Int
derive instance newtypeStatusCode' :: Newtype StatusCode' _
derive instance repGenericStatusCode' :: Generic StatusCode' _
instance showStatusCode' :: Show StatusCode' where show = genericShow
instance decodeStatusCode' :: Decode StatusCode' where decode = genericDecode options
instance encodeStatusCode' :: Encode StatusCode' where encode = genericEncode options

