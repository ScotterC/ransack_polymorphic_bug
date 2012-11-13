This shows a bug with the excellent Ransack Gem by Ernie Miller

When trying to search a polymorphic model by it's polymorphically associated id for type will error with an uninitialized constant.

## To demonstrate:

migrate the database with

`rake db:migrate`

Start up the server

### Page without bug:
`localhost:3000/data_errors`

### Page with bug
`localhost:3000/data_errors/index_with_bug`