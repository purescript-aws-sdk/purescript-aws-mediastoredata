## Module AWS.MediaStoreData.Requests

#### `deleteObject`

``` purescript
deleteObject :: forall eff. Service -> DeleteObjectRequest -> Aff (exception :: EXCEPTION | eff) DeleteObjectResponse
```

<p>Deletes an object at the specified path.</p>

#### `describeObject`

``` purescript
describeObject :: forall eff. Service -> DescribeObjectRequest -> Aff (exception :: EXCEPTION | eff) DescribeObjectResponse
```

<p>Gets the headers for an object at the specified path.</p>

#### `getObject`

``` purescript
getObject :: forall eff. Service -> GetObjectRequest -> Aff (exception :: EXCEPTION | eff) GetObjectResponse
```

<p>Downloads the object at the specified path.</p>

#### `listItems`

``` purescript
listItems :: forall eff. Service -> ListItemsRequest -> Aff (exception :: EXCEPTION | eff) ListItemsResponse
```

<p>Provides a list of metadata entries about folders and objects in the specified folder.</p>

#### `putObject`

``` purescript
putObject :: forall eff. Service -> PutObjectRequest -> Aff (exception :: EXCEPTION | eff) PutObjectResponse
```

<p>Uploads an object to the specified path. Object sizes are limited to 10 MB.</p>


