for file in atm_data2023-08-01_to_2023-08-07.csv atm_data2023-08-08_to_2023-08-14.csv atm_data2023-08-15_to_2023-08-21.csv atm_data2023-08-22_to_2023-08-28.csv   
do
	awk '/Toronto/ {print}' "$file" >> Toronto_awk.csv
	awk '/Montreal/ {print}' "$file" >> Montreal_awk.csv
	awk '/Vancouver/ {print}' "$file" >> Vancouver_awk.csv
	awk '/Declined/ {print}' "$file" >> decline_awk.csv
	awk '/JPY/ {print}' "$file" >> jpy_awk.csv
	awk '/RMB/ {print}' "$file" >> rmb_awk.csv
	awk '/USD/ {print}' "$file" >> usd_awk.csv
	awk '/EUR/ {print}' "$file" >> eur_awk.csv
	awk '/GBP/ {print}' "$file" >> gbp_awk.csv
done
