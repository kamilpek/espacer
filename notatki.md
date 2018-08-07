# espacer
## wirtualny spacer

### Budowanie aplikacji
```ruby

rails new espacer --database=postgresql
rails generate scaffold place name:string status:boolean desc:text image:string latitude:float longitude:float
rails generate controller pages home control
rails generate migration AddThumbToPlaces thumb:string
rails generate migration AddVisitsToPlaces visits:integer

rails generate uploader PlaceImage
rails generate uploader PlaceThumb

```
