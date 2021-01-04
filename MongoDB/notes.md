Connect to the database
-----------------------
mongo "mongodb+srv://m001-student:m001-mongodb-basics@sandbox.2qmag.mongodb.net/admin"



Importing/Exporting
-------------------

|        | JSON        | BSON         |
|--------|-------------|--------------|
| import | mongoimport | mongorestore |
| export | mongoimport | mongodump    |

```
mongodump --uri "mongodb+srv://<your username>:<your password>@<your cluster>.mongodb.net/sample_supplies"

mongoexport --uri="mongodb+srv://<your username>:<your password>@<your cluster>.mongodb.net/sample_supplies" --collection=sales --out=sales.json

mongorestore --uri "mongodb+srv://<your username>:<your password>@<your cluster>.mongodb.net/sample_supplies"  --drop dump

mongoimport --uri="mongodb+srv://<your username>:<your password>@<your cluster>.mongodb.net/sample_supplies" --drop sales.json
```


Display Commands
----------------
|   |   |
|---|---|
| `show dbs`            | Displays the databases in a cluster  |
| `show collections`    | Displays the collections in a database  |
| `use <database name>` | Switches to a database|
		
Find Commands (and helper commands)
-----------------------------------
|   |   |   |
|---|---|---|
| `findOne()/find()`    | Finds value(s) based on queried collection                | `db.<collection>.find({ queryfield: queryvalue })`  |
| `count()`             | Displays number of matching documents                     |   |
| `pretty()`            | Displays documents in indented format (easier to read)    |   |



Modifier Commands
-----------------

|   |   |   |
|---|---|---|
| `insert()`                    | Inserts a document(s) into a collection | `db.collection.insert({ documentObject })`<br/>`db.collection.insert([ { documentObject1 }, { documentObject2 } ], { "ordered": false })`<br/><br/>ordered:<br/>&nbsp;&nbsp;&nbsp;&nbsp;true&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;stops inserting after first error<br/>&nbsp;&nbsp;&nbsp;&nbsp;false&nbsp;&nbsp;&nbsp;&nbsp;continues inserting after errors
| `updateOne()/updateMany()`    | Updates value(s) with specified query and modification | `db.collection.updateOne({ queryfield:queryvalue }, { modification })`

| Modifications     |   |
|-------------------|---|
|`$inc`             |Increments field by given amount<br/>`{ "$inc": { fieldName: amountToIncrementBy } }`
|`$set`             |Sets field to given new value<br/>`{ "$set": { fieldName: newValueToSet } }`
|`$push`            |Pushes a value to an array<br/>`{ "$push": { arrayFieldName: { newArrayValueToInsert } } }`

deleteOne()|deleteMany()	Delete document(s) that matches the given query
					db.collection.deleteOne({ queryfield: queryvalue })

drop()				Deletes an entire collection
					db.collection.drop()



Query Operators
---------------
{ field: { operator: value } }

$eq*	=	EQual to			$neq	!=	Not EQual to
$gt	>	Greater Than			$lt	<	Less Than
$gte	>=	Greater Than or Equal to	$lte	>=	Less Than or Equal to

*the $eq is used by default when no operator is specified 



Logic Operators
--------------

$and*		Match all of the specified query clause
$or		At least one of the query clauses is matched
$nor		Fail to match both given clauses
$not		Negates the query requirement

*the $and is used by default when no operator is specified

Array Syntax (for $and, $or, $nor)
	{ operator: [{ statement1 }, { statement2 }]}

Non Array Syntax (for $not)
	{ $not: { statement } }

 
