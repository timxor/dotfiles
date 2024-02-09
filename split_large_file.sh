# file:     split_large_file.sh
# build:    chmod +x split_large_file.sh
# run:      ./split_large_file.sh

split -b 9M sp500_stocks.csv sp500_stocks_smaller_file_part_
for file in sp500_stocks_smaller_file_part_*; do
    mv "$file" "$file.csv"
done

