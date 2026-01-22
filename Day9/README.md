Form validations
Validations are used to ensure the data entering to the database must be correct before it get stored.

Importance of validations

1. prevent invalid data from being stored
2. Improve user experience with helpful error messages
3. protect database integrity

Validations are written in the models, not controller or views
Can write validations in 2 ways

1. Inside the view files using erb tags
2. Inside the models

There are set of pre-written methods for validations
some example are : presence, uniqueness, numericity, length.
In order to use pre-written validation methods we must use => validates :columnName, pre-written_method:true (validates is plural)

User can develop his own custom validation methods inside the models
In order to use the custom-validation methods => validate :methodName ( validate is singular)
Loggers are used to write the custom errors and display on front end if the validations is not satisfied
errors.add(column name, "message")
