## Module AWS.MediaStoreData.Types

#### `options`

``` purescript
options :: Options
```

#### `ContainerNotFoundException`

``` purescript
newtype ContainerNotFoundException
  = ContainerNotFoundException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>The specified container was not found for the specified account.</p>

##### Instances
``` purescript
Newtype ContainerNotFoundException _
Generic ContainerNotFoundException _
Show ContainerNotFoundException
Decode ContainerNotFoundException
Encode ContainerNotFoundException
```

#### `newContainerNotFoundException`

``` purescript
newContainerNotFoundException :: ContainerNotFoundException
```

Constructs ContainerNotFoundException from required parameters

#### `newContainerNotFoundException'`

``` purescript
newContainerNotFoundException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> ContainerNotFoundException
```

Constructs ContainerNotFoundException's fields from required parameters

#### `ContentRangePattern`

``` purescript
newtype ContentRangePattern
  = ContentRangePattern String
```

##### Instances
``` purescript
Newtype ContentRangePattern _
Generic ContentRangePattern _
Show ContentRangePattern
Decode ContentRangePattern
Encode ContentRangePattern
```

#### `ContentType`

``` purescript
newtype ContentType
  = ContentType String
```

##### Instances
``` purescript
Newtype ContentType _
Generic ContentType _
Show ContentType
Decode ContentType
Encode ContentType
```

#### `DeleteObjectRequest`

``` purescript
newtype DeleteObjectRequest
  = DeleteObjectRequest { "Path" :: PathNaming }
```

##### Instances
``` purescript
Newtype DeleteObjectRequest _
Generic DeleteObjectRequest _
Show DeleteObjectRequest
Decode DeleteObjectRequest
Encode DeleteObjectRequest
```

#### `newDeleteObjectRequest`

``` purescript
newDeleteObjectRequest :: PathNaming -> DeleteObjectRequest
```

Constructs DeleteObjectRequest from required parameters

#### `newDeleteObjectRequest'`

``` purescript
newDeleteObjectRequest' :: PathNaming -> ({ "Path" :: PathNaming } -> { "Path" :: PathNaming }) -> DeleteObjectRequest
```

Constructs DeleteObjectRequest's fields from required parameters

#### `DeleteObjectResponse`

``` purescript
newtype DeleteObjectResponse
  = DeleteObjectResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteObjectResponse _
Generic DeleteObjectResponse _
Show DeleteObjectResponse
Decode DeleteObjectResponse
Encode DeleteObjectResponse
```

#### `DescribeObjectRequest`

``` purescript
newtype DescribeObjectRequest
  = DescribeObjectRequest { "Path" :: PathNaming }
```

##### Instances
``` purescript
Newtype DescribeObjectRequest _
Generic DescribeObjectRequest _
Show DescribeObjectRequest
Decode DescribeObjectRequest
Encode DescribeObjectRequest
```

#### `newDescribeObjectRequest`

``` purescript
newDescribeObjectRequest :: PathNaming -> DescribeObjectRequest
```

Constructs DescribeObjectRequest from required parameters

#### `newDescribeObjectRequest'`

``` purescript
newDescribeObjectRequest' :: PathNaming -> ({ "Path" :: PathNaming } -> { "Path" :: PathNaming }) -> DescribeObjectRequest
```

Constructs DescribeObjectRequest's fields from required parameters

#### `DescribeObjectResponse`

``` purescript
newtype DescribeObjectResponse
  = DescribeObjectResponse { "ETag" :: NullOrUndefined (ETag), "ContentType" :: NullOrUndefined (ContentType), "ContentLength" :: NullOrUndefined (NonNegativeLong), "CacheControl" :: NullOrUndefined (StringPrimitive), "LastModified" :: NullOrUndefined (TimeStamp) }
```

##### Instances
``` purescript
Newtype DescribeObjectResponse _
Generic DescribeObjectResponse _
Show DescribeObjectResponse
Decode DescribeObjectResponse
Encode DescribeObjectResponse
```

#### `newDescribeObjectResponse`

``` purescript
newDescribeObjectResponse :: DescribeObjectResponse
```

Constructs DescribeObjectResponse from required parameters

#### `newDescribeObjectResponse'`

``` purescript
newDescribeObjectResponse' :: ({ "ETag" :: NullOrUndefined (ETag), "ContentType" :: NullOrUndefined (ContentType), "ContentLength" :: NullOrUndefined (NonNegativeLong), "CacheControl" :: NullOrUndefined (StringPrimitive), "LastModified" :: NullOrUndefined (TimeStamp) } -> { "ETag" :: NullOrUndefined (ETag), "ContentType" :: NullOrUndefined (ContentType), "ContentLength" :: NullOrUndefined (NonNegativeLong), "CacheControl" :: NullOrUndefined (StringPrimitive), "LastModified" :: NullOrUndefined (TimeStamp) }) -> DescribeObjectResponse
```

Constructs DescribeObjectResponse's fields from required parameters

#### `ETag`

``` purescript
newtype ETag
  = ETag String
```

##### Instances
``` purescript
Newtype ETag _
Generic ETag _
Show ETag
Decode ETag
Encode ETag
```

#### `ErrorMessage`

``` purescript
newtype ErrorMessage
  = ErrorMessage String
```

##### Instances
``` purescript
Newtype ErrorMessage _
Generic ErrorMessage _
Show ErrorMessage
Decode ErrorMessage
Encode ErrorMessage
```

#### `GetObjectRequest`

``` purescript
newtype GetObjectRequest
  = GetObjectRequest { "Path" :: PathNaming, "Range" :: NullOrUndefined (RangePattern) }
```

##### Instances
``` purescript
Newtype GetObjectRequest _
Generic GetObjectRequest _
Show GetObjectRequest
Decode GetObjectRequest
Encode GetObjectRequest
```

#### `newGetObjectRequest`

``` purescript
newGetObjectRequest :: PathNaming -> GetObjectRequest
```

Constructs GetObjectRequest from required parameters

#### `newGetObjectRequest'`

``` purescript
newGetObjectRequest' :: PathNaming -> ({ "Path" :: PathNaming, "Range" :: NullOrUndefined (RangePattern) } -> { "Path" :: PathNaming, "Range" :: NullOrUndefined (RangePattern) }) -> GetObjectRequest
```

Constructs GetObjectRequest's fields from required parameters

#### `GetObjectResponse`

``` purescript
newtype GetObjectResponse
  = GetObjectResponse { "Body" :: NullOrUndefined (PayloadBlob), "CacheControl" :: NullOrUndefined (StringPrimitive), "ContentRange" :: NullOrUndefined (ContentRangePattern), "ContentLength" :: NullOrUndefined (NonNegativeLong), "ContentType" :: NullOrUndefined (ContentType), "ETag" :: NullOrUndefined (ETag), "LastModified" :: NullOrUndefined (TimeStamp), "StatusCode" :: StatusCode' }
```

##### Instances
``` purescript
Newtype GetObjectResponse _
Generic GetObjectResponse _
Show GetObjectResponse
Decode GetObjectResponse
Encode GetObjectResponse
```

#### `newGetObjectResponse`

``` purescript
newGetObjectResponse :: StatusCode' -> GetObjectResponse
```

Constructs GetObjectResponse from required parameters

#### `newGetObjectResponse'`

``` purescript
newGetObjectResponse' :: StatusCode' -> ({ "Body" :: NullOrUndefined (PayloadBlob), "CacheControl" :: NullOrUndefined (StringPrimitive), "ContentRange" :: NullOrUndefined (ContentRangePattern), "ContentLength" :: NullOrUndefined (NonNegativeLong), "ContentType" :: NullOrUndefined (ContentType), "ETag" :: NullOrUndefined (ETag), "LastModified" :: NullOrUndefined (TimeStamp), "StatusCode" :: StatusCode' } -> { "Body" :: NullOrUndefined (PayloadBlob), "CacheControl" :: NullOrUndefined (StringPrimitive), "ContentRange" :: NullOrUndefined (ContentRangePattern), "ContentLength" :: NullOrUndefined (NonNegativeLong), "ContentType" :: NullOrUndefined (ContentType), "ETag" :: NullOrUndefined (ETag), "LastModified" :: NullOrUndefined (TimeStamp), "StatusCode" :: StatusCode' }) -> GetObjectResponse
```

Constructs GetObjectResponse's fields from required parameters

#### `InternalServerError`

``` purescript
newtype InternalServerError
  = InternalServerError { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>The service is temporarily unavailable.</p>

##### Instances
``` purescript
Newtype InternalServerError _
Generic InternalServerError _
Show InternalServerError
Decode InternalServerError
Encode InternalServerError
```

#### `newInternalServerError`

``` purescript
newInternalServerError :: InternalServerError
```

Constructs InternalServerError from required parameters

#### `newInternalServerError'`

``` purescript
newInternalServerError' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> InternalServerError
```

Constructs InternalServerError's fields from required parameters

#### `Item`

``` purescript
newtype Item
  = Item { "Name" :: NullOrUndefined (ItemName), "Type" :: NullOrUndefined (ItemType), "ETag" :: NullOrUndefined (ETag), "LastModified" :: NullOrUndefined (TimeStamp), "ContentType" :: NullOrUndefined (ContentType), "ContentLength" :: NullOrUndefined (NonNegativeLong) }
```

<p>A metadata entry for a folder or object.</p>

##### Instances
``` purescript
Newtype Item _
Generic Item _
Show Item
Decode Item
Encode Item
```

#### `newItem`

``` purescript
newItem :: Item
```

Constructs Item from required parameters

#### `newItem'`

``` purescript
newItem' :: ({ "Name" :: NullOrUndefined (ItemName), "Type" :: NullOrUndefined (ItemType), "ETag" :: NullOrUndefined (ETag), "LastModified" :: NullOrUndefined (TimeStamp), "ContentType" :: NullOrUndefined (ContentType), "ContentLength" :: NullOrUndefined (NonNegativeLong) } -> { "Name" :: NullOrUndefined (ItemName), "Type" :: NullOrUndefined (ItemType), "ETag" :: NullOrUndefined (ETag), "LastModified" :: NullOrUndefined (TimeStamp), "ContentType" :: NullOrUndefined (ContentType), "ContentLength" :: NullOrUndefined (NonNegativeLong) }) -> Item
```

Constructs Item's fields from required parameters

#### `ItemList`

``` purescript
newtype ItemList
  = ItemList (Array Item)
```

##### Instances
``` purescript
Newtype ItemList _
Generic ItemList _
Show ItemList
Decode ItemList
Encode ItemList
```

#### `ItemName`

``` purescript
newtype ItemName
  = ItemName String
```

##### Instances
``` purescript
Newtype ItemName _
Generic ItemName _
Show ItemName
Decode ItemName
Encode ItemName
```

#### `ItemType`

``` purescript
newtype ItemType
  = ItemType String
```

##### Instances
``` purescript
Newtype ItemType _
Generic ItemType _
Show ItemType
Decode ItemType
Encode ItemType
```

#### `ListItemsRequest`

``` purescript
newtype ListItemsRequest
  = ListItemsRequest { "Path" :: NullOrUndefined (ListPathNaming), "MaxResults" :: NullOrUndefined (ListLimit), "NextToken" :: NullOrUndefined (PaginationToken) }
```

##### Instances
``` purescript
Newtype ListItemsRequest _
Generic ListItemsRequest _
Show ListItemsRequest
Decode ListItemsRequest
Encode ListItemsRequest
```

#### `newListItemsRequest`

``` purescript
newListItemsRequest :: ListItemsRequest
```

Constructs ListItemsRequest from required parameters

#### `newListItemsRequest'`

``` purescript
newListItemsRequest' :: ({ "Path" :: NullOrUndefined (ListPathNaming), "MaxResults" :: NullOrUndefined (ListLimit), "NextToken" :: NullOrUndefined (PaginationToken) } -> { "Path" :: NullOrUndefined (ListPathNaming), "MaxResults" :: NullOrUndefined (ListLimit), "NextToken" :: NullOrUndefined (PaginationToken) }) -> ListItemsRequest
```

Constructs ListItemsRequest's fields from required parameters

#### `ListItemsResponse`

``` purescript
newtype ListItemsResponse
  = ListItemsResponse { "Items" :: NullOrUndefined (ItemList), "NextToken" :: NullOrUndefined (PaginationToken) }
```

##### Instances
``` purescript
Newtype ListItemsResponse _
Generic ListItemsResponse _
Show ListItemsResponse
Decode ListItemsResponse
Encode ListItemsResponse
```

#### `newListItemsResponse`

``` purescript
newListItemsResponse :: ListItemsResponse
```

Constructs ListItemsResponse from required parameters

#### `newListItemsResponse'`

``` purescript
newListItemsResponse' :: ({ "Items" :: NullOrUndefined (ItemList), "NextToken" :: NullOrUndefined (PaginationToken) } -> { "Items" :: NullOrUndefined (ItemList), "NextToken" :: NullOrUndefined (PaginationToken) }) -> ListItemsResponse
```

Constructs ListItemsResponse's fields from required parameters

#### `ListLimit`

``` purescript
newtype ListLimit
  = ListLimit Int
```

##### Instances
``` purescript
Newtype ListLimit _
Generic ListLimit _
Show ListLimit
Decode ListLimit
Encode ListLimit
```

#### `ListPathNaming`

``` purescript
newtype ListPathNaming
  = ListPathNaming String
```

##### Instances
``` purescript
Newtype ListPathNaming _
Generic ListPathNaming _
Show ListPathNaming
Decode ListPathNaming
Encode ListPathNaming
```

#### `NonNegativeLong`

``` purescript
newtype NonNegativeLong
  = NonNegativeLong Number
```

##### Instances
``` purescript
Newtype NonNegativeLong _
Generic NonNegativeLong _
Show NonNegativeLong
Decode NonNegativeLong
Encode NonNegativeLong
```

#### `ObjectNotFoundException`

``` purescript
newtype ObjectNotFoundException
  = ObjectNotFoundException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>Could not perform an operation on an object that does not exist.</p>

##### Instances
``` purescript
Newtype ObjectNotFoundException _
Generic ObjectNotFoundException _
Show ObjectNotFoundException
Decode ObjectNotFoundException
Encode ObjectNotFoundException
```

#### `newObjectNotFoundException`

``` purescript
newObjectNotFoundException :: ObjectNotFoundException
```

Constructs ObjectNotFoundException from required parameters

#### `newObjectNotFoundException'`

``` purescript
newObjectNotFoundException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> ObjectNotFoundException
```

Constructs ObjectNotFoundException's fields from required parameters

#### `PaginationToken`

``` purescript
newtype PaginationToken
  = PaginationToken String
```

##### Instances
``` purescript
Newtype PaginationToken _
Generic PaginationToken _
Show PaginationToken
Decode PaginationToken
Encode PaginationToken
```

#### `PathNaming`

``` purescript
newtype PathNaming
  = PathNaming String
```

##### Instances
``` purescript
Newtype PathNaming _
Generic PathNaming _
Show PathNaming
Decode PathNaming
Encode PathNaming
```

#### `PayloadBlob`

``` purescript
newtype PayloadBlob
  = PayloadBlob String
```

##### Instances
``` purescript
Newtype PayloadBlob _
Generic PayloadBlob _
Show PayloadBlob
Decode PayloadBlob
Encode PayloadBlob
```

#### `PutObjectRequest`

``` purescript
newtype PutObjectRequest
  = PutObjectRequest { "Body" :: PayloadBlob, "Path" :: PathNaming, "ContentType" :: NullOrUndefined (ContentType), "CacheControl" :: NullOrUndefined (StringPrimitive), "StorageClass" :: NullOrUndefined (StorageClass) }
```

##### Instances
``` purescript
Newtype PutObjectRequest _
Generic PutObjectRequest _
Show PutObjectRequest
Decode PutObjectRequest
Encode PutObjectRequest
```

#### `newPutObjectRequest`

``` purescript
newPutObjectRequest :: PayloadBlob -> PathNaming -> PutObjectRequest
```

Constructs PutObjectRequest from required parameters

#### `newPutObjectRequest'`

``` purescript
newPutObjectRequest' :: PayloadBlob -> PathNaming -> ({ "Body" :: PayloadBlob, "Path" :: PathNaming, "ContentType" :: NullOrUndefined (ContentType), "CacheControl" :: NullOrUndefined (StringPrimitive), "StorageClass" :: NullOrUndefined (StorageClass) } -> { "Body" :: PayloadBlob, "Path" :: PathNaming, "ContentType" :: NullOrUndefined (ContentType), "CacheControl" :: NullOrUndefined (StringPrimitive), "StorageClass" :: NullOrUndefined (StorageClass) }) -> PutObjectRequest
```

Constructs PutObjectRequest's fields from required parameters

#### `PutObjectResponse`

``` purescript
newtype PutObjectResponse
  = PutObjectResponse { "ContentSHA256" :: NullOrUndefined (SHA256Hash), "ETag" :: NullOrUndefined (ETag), "StorageClass" :: NullOrUndefined (StorageClass) }
```

##### Instances
``` purescript
Newtype PutObjectResponse _
Generic PutObjectResponse _
Show PutObjectResponse
Decode PutObjectResponse
Encode PutObjectResponse
```

#### `newPutObjectResponse`

``` purescript
newPutObjectResponse :: PutObjectResponse
```

Constructs PutObjectResponse from required parameters

#### `newPutObjectResponse'`

``` purescript
newPutObjectResponse' :: ({ "ContentSHA256" :: NullOrUndefined (SHA256Hash), "ETag" :: NullOrUndefined (ETag), "StorageClass" :: NullOrUndefined (StorageClass) } -> { "ContentSHA256" :: NullOrUndefined (SHA256Hash), "ETag" :: NullOrUndefined (ETag), "StorageClass" :: NullOrUndefined (StorageClass) }) -> PutObjectResponse
```

Constructs PutObjectResponse's fields from required parameters

#### `RangePattern`

``` purescript
newtype RangePattern
  = RangePattern String
```

##### Instances
``` purescript
Newtype RangePattern _
Generic RangePattern _
Show RangePattern
Decode RangePattern
Encode RangePattern
```

#### `RequestedRangeNotSatisfiableException`

``` purescript
newtype RequestedRangeNotSatisfiableException
  = RequestedRangeNotSatisfiableException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>The requested content range is not valid.</p>

##### Instances
``` purescript
Newtype RequestedRangeNotSatisfiableException _
Generic RequestedRangeNotSatisfiableException _
Show RequestedRangeNotSatisfiableException
Decode RequestedRangeNotSatisfiableException
Encode RequestedRangeNotSatisfiableException
```

#### `newRequestedRangeNotSatisfiableException`

``` purescript
newRequestedRangeNotSatisfiableException :: RequestedRangeNotSatisfiableException
```

Constructs RequestedRangeNotSatisfiableException from required parameters

#### `newRequestedRangeNotSatisfiableException'`

``` purescript
newRequestedRangeNotSatisfiableException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> RequestedRangeNotSatisfiableException
```

Constructs RequestedRangeNotSatisfiableException's fields from required parameters

#### `SHA256Hash`

``` purescript
newtype SHA256Hash
  = SHA256Hash String
```

##### Instances
``` purescript
Newtype SHA256Hash _
Generic SHA256Hash _
Show SHA256Hash
Decode SHA256Hash
Encode SHA256Hash
```

#### `StorageClass`

``` purescript
newtype StorageClass
  = StorageClass String
```

##### Instances
``` purescript
Newtype StorageClass _
Generic StorageClass _
Show StorageClass
Decode StorageClass
Encode StorageClass
```

#### `StringPrimitive`

``` purescript
newtype StringPrimitive
  = StringPrimitive String
```

##### Instances
``` purescript
Newtype StringPrimitive _
Generic StringPrimitive _
Show StringPrimitive
Decode StringPrimitive
Encode StringPrimitive
```

#### `TimeStamp`

``` purescript
newtype TimeStamp
  = TimeStamp Timestamp
```

##### Instances
``` purescript
Newtype TimeStamp _
Generic TimeStamp _
Show TimeStamp
Decode TimeStamp
Encode TimeStamp
```

#### `StatusCode'`

``` purescript
newtype StatusCode'
  = StatusCode' Int
```

##### Instances
``` purescript
Newtype StatusCode' _
Generic StatusCode' _
Show StatusCode'
Decode StatusCode'
Encode StatusCode'
```


