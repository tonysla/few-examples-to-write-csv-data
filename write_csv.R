# read Iris data
iris <- read.csv('Iris.csv')

# divide data into train and test sets
indices <- sample(2, nrow(iris), replace = T, prob = c(0.75, 0.25))
train <- iris[indices == 1,]
test <- iris[indices == 2,]

# write test as csv file
write.csv(test, 'write_test.csv', row.names = F)
# write test as tab-delimited values 
write.table(test, 'test_as_table', sep = '\t', row.names = F)

# add another column to current data
# assume we trained the train set and now 
# want to add the results in the existing test set
pred_model <- predict(mod_fit, newdata = test, type = 'response')
# add the predictions as a new column in test data
test$new_column <- pred_model

# write the test set with the new column as csv, or 
# as tab-delimited values example shown above
write.csv(test, 'added_column.csv', row.names = F)

# write two different data set/rows into one table
write.csv(rbind(train, test), 'iris_two.csv', row.names = F)
