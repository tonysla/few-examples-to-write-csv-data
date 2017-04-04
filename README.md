# Few examples on how to write csv or tab-delimited
This repo is about how to write `.csv` or `tab-delimited` data output format using `RStudio`. There are a lot of cases when writing csv is needed, I am showing only three ways in here.

## File
All example codes are in the `write_csv.R` file with codes on how to:
* Write `.csv` and `tab-delimited` values.
* `Add a column` to existing data set and write csv.
* `Add two datasets or rows` together and write as a csv or tab-delimited values.

For the examples I am using the classic `Iris` dataset. 
The main function is `write.csv()` or `write.table()`. Then add the arguments. First to add inside parantheses is the name of the
variable or dataset, then inside `" "` write the name you want the data to be stored. And then `row.names = FALSE` means to not add
a column for the names. Change it to `TRUE` if need be. 

    write.csv(test, 'write_test.csv', row.names = F)
    
There are few differences when writing `write.table()` compare to `write.csv()` files. In the example above when the output file is named
it uses `.csv` extention, which is not the case below. Instead, you can add the argument `sep = "\t"` that does the `tab-delimited` formating of the file. The `sep = ","` will not work for `write.csv()` files. 

    write.table(test, 'test_as_table', sep = '\t', row.names = F)
    
Below are some more arguments for `write.table()` function copied from RStudio.

    write.table(x, file = "", append = FALSE, quote = TRUE, sep = " ",
            eol = "\n", na = "NA", dec = ".", row.names = TRUE,
            col.names = TRUE, qmethod = c("escape", "double"),
            fileEncoding = "")

The `fileEncoding = ""` argument above will not work for `write.csv()` function. Read in more details from RStudio documentation. 

Use the below in order to write two different data set/rows into one table or csv file.

        write.csv(rbind(train, test), 'iris_two.csv', row.names = F)
        
You can enter as many variables or datasets inside the `rbind()` function. Just keep in mind that variables or datasets need to share common column names in order to write them into one table/csv file. 
