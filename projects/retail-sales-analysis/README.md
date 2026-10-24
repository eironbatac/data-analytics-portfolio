**# Retail Sales Performance Analysis**



**## Project Overview**

This project analyzes the Sample Superstore retail dataset using MySQL, SQL, Python, and Tableau Public to evaluate sales performance, profitability, customer segments, product categories, and regional trends.

The objective is to transform raw retail transaction data into actionable business insights through structured SQL analysis and interactive data visualizations.

**## Tableau Dashboard Preview**

The dashboard presents an overview of retail sales performance, including monthly sales trends, product category performance, geographic sales distribution, and profitability by product sub-category.

![Retail Sales Performance Dashboard]\(images/dashboard-preview\.png)

**## Visualizations**

**### 1. Monthly Sales Trend**

Displays monthly sales performance from 2023 to 2026, highlighting changes and peaks across the analyzed period.

![Monthly Sales Trend]\(images/monthly-sales-trend.png)

**### 2. Sales by Product Category**

Compares total sales across Technology, Furniture, and Office Supplies.

![Sales by Product Category]\(images/sales-by-category.png)

**### 3. Sales by State and Province**

Visualizes the geographic distribution of sales across the states and provinces represented in the dataset.

![Sales by State and Province]\(images/Sales-by-State-and-Province.png)

**### 4. Profit by Sub-Category**

Compares profitability across product sub-categories, distinguishing profitable categories from those that recorded losses.


![Profit by Sub-Category]\(images/profit-by-subcategory.png)


**## Business Objectives**

\- Evaluate overall sales and profit performance.

\- Compare sales and profitability across product categories and sub-categories.

\- Identify geographic markets with high sales performance.

\- Analyze shipping methods and their relationship with profitability.

\- Investigate discount levels associated with lower profits and losses.

\- Compare customer segment performance and customer-level profitability.

\- Visualize monthly sales trends and identify unusual performance patterns.

\- Develop evidence-based recommendations for further business investigation.

**## Tools and Technologies**

\- **\*\*MySQL\*\*** — Data storage, querying, aggregation, and analysis.

\- **\*\*Visual Studio Code\*\*** — SQL development environment.

\- **\*\*SQLTools\*\*** — Database connection and query execution.

\- **\*\*Python\*\*** — CSV structure validation and preparation for visualization.

\- **\*\*Tableau Public\*\*** — Data visualization and dashboard development.

\- **\*\*Git and GitHub\*\*** — Version control and project documentation.

**## Dataset**

The project uses the Sample Superstore dataset obtained from Tableau's sample data resources.

The dataset contains order dates, shipping information, customer details, geographic fields, product categories, sales, discounts, quantities, and profits.

**### Dataset Summary**

\| Metric | Value |

\|---|---:|
\| Total records | 10,194 |
\| Total sales | $2,326,534.35 |
\| Total profit | $292,296.81 |
\| Distinct customers | 804 |
\| First order date | January 3, 2023 |
\| Last order date | December 30, 2026 |

The totals above were validated against the imported MySQL staging table.

**\*\*Data limitation:\*\*** The source dataset contains records dated after October 19, 2026, including dates in November and December 2026. These records were present in the source data and were retained during analysis. Their validity and intended reporting period have not been independently verified, so the latest months should not automatically be interpreted as completed historical performance.

**## Data Preparation and Validation**

The data preparation and validation process included:

\- Checking the CSV structure and column count.
\- Validating the imported record count.
\- Parsing order and shipping dates into appropriate date fields in MySQL.
\- Comparing aggregate sales and profit figures against the imported data.
\- Investigating discrepancies between raw aggregate totals and totals calculated from individually rounded customer-level results.
\- Checking the dataset's date range and identifying future-dated records.

The validated overall sales and profit figures are based on the raw numeric values before rounding the final aggregate results to two decimal places.

**## Methodology**
The analysis followed a structured workflow from source-data inspection through SQL analysis and Tableau visualization:

1. **Data acquisition** — Obtained the Sample Superstore dataset from Tableau's sample data resources.
2. **Data inspection and preparation** — Used Python to validate the CSV structure and prepare a consistent CSV file for Tableau. Inspected the source columns and date fields before analysis.
3. **MySQL import and validation** — Imported the records into a MySQL staging table, checked the record count and date parsing, and compared aggregate sales and profit with the source data.
4. **SQL analysis** — Wrote SQL queries to evaluate overall performance, product categories and sub-categories, regions, shipping methods, discount levels, customer segments, customer-level profitability, and monthly trends.
5. **Visualization** — Connected Tableau Public to the prepared CSV and created charts for monthly sales, category sales, geographic sales distribution, and profit by sub-category. Combined the worksheets and KPI summaries into a dashboard.
6. **Interpretation and documentation** — Summarized key findings, noted data limitations, and identified areas for further investigation.

Overall totals are calculated from raw numeric values and rounded only for presentation. Because the source contains dates after October 19, 2026, those later records are retained but flagged as requiring validation before they are interpreted as completed historical performance.

**## SQL Analysis and Key Findings**

**### 1. Sales Overview**
Evaluated the total number of records, total sales, total profit, average sales per record, and average profit per record.

**\*\*Validated results:\*\***

\- Total sales: **\*\*$2,326,534.35\*\***
\- Total profit: **\*\*$292,296.81\*\***
\- Records analyzed: **\*\*10,194\*\***

**### 2. Product Category Performance**
Compared sales, profit, record counts, and profit margins across Furniture, Office Supplies, and Technology.
**\*\*Key findings:\*\***

\- Technology generated the highest category sales at **\*\*$839,893.28\*\***.
\- Furniture generated **\*\*$754,747.76\*\*** in sales.
\- Office Supplies generated **\*\*$731,893.31\*\*** in sales.
\- Technology generated the highest total profit among the three categories.
\- Furniture had a substantially lower profit margin than Technology and Office Supplies.

**\*\*Business implication:\*\*** Evaluate product mix, pricing, discounting, and costs to understand why category sales and profitability differ.

**### 3. Regional Performance**
Compared sales, profit, record counts, and profit margins across the East, West, Central, and South regions.

**\*\*Key findings:\*\***

\- West recorded the highest sales at **\*\*$739,813.61\*\*** and the highest profit at **\*\*$110,798.82\*\***.
\- West also recorded the highest regional profit margin at **\*\*14.98%\*\***.
\- East ranked second in sales at **\*\*$691,828.17\*\***.
\- Central had the lowest regional profit margin at **\*\*7.92%\*\***.
\- South recorded the lowest regional sales at **\*\*$391,721.91\*\***, while maintaining a higher margin than Central.

**\*\*Business implication:\*\*** Investigate the factors associated with Central's lower margin and compare product mix, discounts, and costs across regions.

**### 4. Geographic Sales Analysis**
Developed a Tableau filled map to compare sales across geographic areas using state and province information.

**\*\*Key findings:\*\***
\- California recorded the highest state-level sales in the visualization at **\*\*$457,687.63\*\***.
\- Geographic shading highlights differences in sales across mapped locations.
\- The color legend represents total sales, with darker blue indicating higher sales values.

**\*\*Business implication:\*\*** Use the geographic view to identify major sales markets and areas that may warrant additional investigation. Geographic comparisons should be interpreted in the context of the dataset's coverage and the sales values associated with each location.

**### 5. Product Sub-Category Performance**
Compared sales, profit, record counts, and profit margins across 17 product sub-categories.

**\*\*Key findings:\*\***

\- Chairs generated the highest sub-category sales at **\*\*$335,768.25\*\***.
\- Copiers generated the highest total profit at **\*\*$56,093.94\*\***, with a profit margin of **\*\*37.21%\*\***.
\- Tables recorded the largest loss at **\*\*-$17,753.21\*\***, with a negative profit margin of **\*\*-8.53%\*\***.
\- Bookcases and Supplies also recorded negative total profits.
\- High sales do not necessarily translate into high profitability.

**\*\*Business implication:\*\*** Investigate discounting, product costs, and transaction characteristics associated with loss-making sub-categories, particularly Tables.

**### 6. Shipping Method Performance**
Compared record counts, sales, profit, and profit margins across four shipping methods.

**\*\*Key findings:\*\***
\- Standard Class generated the highest sales at **\*\*$1,378,840.55\*\*** and the highest profit at **\*\*$168,161.21\*\***.
\- First Class recorded the highest profit margin at **\*\*13.93%\*\***.
\- Same Day recorded the lowest sales at **\*\*$129,271.96\*\*** and total profit at **\*\*$16,160.75\*\***.
\- Standard Class accounted for the largest number of records, while Same Day accounted for the fewest.

**\*\*Business implication:\*\*** Compare shipping costs, order characteristics, and customer requirements to better understand differences in shipping-method profitability.

**### 7. Discount and Profitability Analysis**
Evaluated sales, total profit, average profit per record, and profit margins across discount levels.

**\*\*Key findings:\*\***
\- Transactions with no discount generated **\*\*$326,718.59\*\*** in total profit and a profit margin of **\*\*29.56%\*\***.
\- The 10% and 20% discount groups remained profitable in the analysis.
\- Discount levels of 30% and above showed negative total profit.
\- The 70% discount group recorded a total loss of **\*\*$40,300.57\*\*** and a profit margin of **\*\*-98.76%\*\***.
\- The 80% discount group recorded a total loss of **\*\*$30,565.27\*\*** and a profit margin of **\*\*-180.01%\*\***.

**\*\*Business implication:\*\*** Review high-discount transactions and investigate their product mix, costs, and order characteristics before recommending pricing changes. These results indicate associations, not proof that discounts alone caused the losses.

**### 8. Customer Segment Analysis**
Compared sales, profit, order counts, and profit margins across Consumer, Corporate, and Home Office segments.

**\*\*Key findings:\*\***
\- Consumer generated the highest sales at **\*\*$1,170,659.79\*\*** and the highest profit at **\*\*$136,371.45\*\***.
\- Corporate generated **\*\*$715,806.13\*\*** in sales and **\*\*$94,249.64\*\*** in profit.
\- Home Office generated **\*\*$440,068.43\*\*** in sales and **\*\*$61,675.73\*\*** in profit.
\- Home Office recorded the highest segment profit margin at **\*\*14.02%\*\***, followed by Corporate at **\*\*13.17%\*\*** and Consumer at **\*\*11.65%\*\***.

**\*\*Business implication:\*\*** Consumer is the largest contributor to sales and profit, while Home Office has the highest profit margin. Investigating product mix, order size, and discounts could help explain these differences.

**### 9. Customer-Level Profitability Analysis**
Analyzed customer-level sales, profit, order counts, and margins to identify customers associated with positive and negative profitability.

**\*\*Key findings:\*\***
\- The analysis covered **\*\*804 distinct customers\*\***.
\- 645 customers generated positive total profit, while 159 generated negative total profit.
\- Tamara Chand was the most profitable customer, generating **\*\*$8,981.32\*\*** in profit across five distinct orders.
\- Cindy Stewart recorded the largest customer-level loss at **\*\*$6,626.39\*\*** across six distinct orders.

**\*\*Business implication:\*\*** Investigate the products, discounts, and transactions associated with substantial customer-level losses before considering changes to customer relationships or sales strategies.

*\*Note: Customer-level totals calculated by summing individually rounded customer figures can differ slightly from the validated overall dataset totals. Overall sales and profit are therefore reported using the raw aggregate values.\**

**### 10. Monthly Sales and Profit Trends**
Analyzed monthly sales, total profit, and profit margins using the parsed order dates.

**\*\*Key findings:\*\***
\- Monthly sales and profitability varied throughout the analyzed period.
\- November 2026 recorded the highest monthly sales in the dataset at **\*\*$118,454.51\*\***.
\- December 2025 recorded the highest monthly profit at **\*\*$17,926.30\*\***.
\- October 2025 recorded the highest monthly profit margin at **\*\*27.17%\*\***.
\- January 2024 recorded a negative profit of **\*\*$3,189.80\*\*** and a profit margin of **\*\*-17.28%\*\***.

**\*\*Business implication:\*\*** Evaluate sales, profit, and profit margins together to distinguish revenue growth from sustainable profitability. Investigate unusually profitable or loss-making months for differences in product mix, discounts, and transaction characteristics.

**\*\*Data limitation:\*\*** Monthly results include future-dated source records beyond October 19, 2026. Findings for those periods require additional validation before being interpreted as historical performance.

**## Tableau Visualizations**

The project includes the following Tableau visualizations:

1\. **\*\*Monthly Sales Trend (2023–2026)\*\*** — Tracks monthly sales over time.

2\. **\*\*Total Sales by Product Category\*\*** — Compares sales across the three major product categories.

3\. **\*\*Sales by State and Province\*\*** — Uses geographic shading to compare sales across mapped locations.

4\. **\*\*Profit by Sub-Category\*\*** — Compares sub-category profitability, with orange highlighting negative-profit sub-categories and blue highlighting profitable ones.



The visualizations use currency formatting, descriptive titles, and labels to make the results easier to interpret.

**## Recommendations for Further Investigation**
Based on the current analysis:

\- Investigate Tables, Bookcases, and Supplies to understand the drivers of negative profitability.
\- Review transactions with high discounts, especially those associated with substantial losses.
\- Examine Central region performance to identify potential differences in product mix, pricing, and costs.
\- Compare product mix and profitability in high-sales geographic markets.
\- Investigate the factors associated with differences in customer segment margins.
\- Validate the intended reporting period for future-dated records before using monthly results for historical comparisons.

These are analytical recommendations for further investigation, not claims of proven causation.
**## Project Structure**

```text
DataAnalyticsPortfolio/
├── assets/
├── docs/
├── projects/
│   ├── customer-churn-analysis/
│   ├── hr-analytics-employee-attrition/
│   └── retail-sales-analysis/
│       ├── data/
│       │   ├── orders.csv
│       │   ├── orders_tableau.csv
│       │   └── sample_-_superstore.xls
│       ├── images/
│       │   ├── dashboard-preview.png
│       │   ├── monthly-sales-trend.png
│       │   ├── profit-by-subcategory.png
│       │   ├── sales-by-category.png
│       │   └── Sales-by-State-and-Province.png
│       ├── python/
│       │   └── clean_sales_data.py
│       ├── sql/
│       │   ├── 01_create_database.sql
│       │   ├── 02_sales_overview.sql
│       │   ├── 03_category_performance.sql
│       │   ├── 04_regional_performance.sql
│       │   ├── 05_subcategory_performance.sql
│       │   ├── 06_shipping_performance.sql
│       │   ├── 07_discount_analysis.sql
│       │   ├── 08_monthly_sales_trends.sql
│       │   ├── 09_check_date_format.sql
│       │   ├── 10_check_import.sql
│       │   ├── 11_repair_missing_dates.sql
│       │   ├── 12_create_staging_table.sql
│       │   ├── 13_validate_profitability.sql
│       │   ├── 14_validate_profit_margins.sql
│       │   ├── 15_discount_profitability_analysis.sql
│       │   ├── 16_customer_segment_analysis.sql
│       │   ├── 17_segment_discount_analysis.sql
│       │   ├── 18_customer_profitability_analysis.sql
│       │   └── 19_final_data_validation.sql
│       ├── tableau/
│       │   └── Retail_Sales_Performance_Analysis.twbx
│       └── README.md
├── .gitignore
└── README.md
```
**Note:** The temporary `random_cheking.sql` file shown in the local folder is omitted from this project structure. If it is only a troubleshooting file and is no longer needed, remove it from the project before the next commit. The structure above reflects the intended project files, including the existing customer churn and HR attrition project folders.

## Author

**Eiron T. Batac**
Bachelor of Science in Computer Science