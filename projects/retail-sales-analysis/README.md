# Retail Sales Performance Analysis

## Project Overview

This project analyzes retail sales data using SQL to evaluate sales performance, profitability, and product category performance. The goal is to identify meaningful business insights that can support data-driven decision-making.

## Objectives

- Analyze overall sales and profit performance.
- Compare sales and profitability across product categories.
- Identify categories with strong sales and low profit margins.
- Explore sales trends and opportunities for improvement.

## Tools and Technologies

- **MySQL** — Data querying and analysis
- **Visual Studio Code** — SQL development environment
- **SQLTools** — Database connection and query execution
- **Tableau** — Data visualization and dashboard development (planned)

## Dataset

The project uses the Sample Superstore retail dataset, containing order details, customer information, product categories, sales, discounts, quantities, and profits.

The dataset contains **10,194 records** in the imported MySQL table.

## Analysis Progress

### 1. Sales Overview

Analyzed total records, total sales, total profit, average sales per record, and average profit per record.

### 2. Category Performance

Compared total records, sales, profit, and profit margin across product categories.

**Preliminary Findings**

- Technology generated the highest sales and total profit among the three categories.
- Furniture had a substantially lower profit margin than Technology and Office Supplies.
- Office Supplies accounted for the largest number of records.

### 3. Regional Performance

Compared total records, sales, profit, and profit margin across the four regions.

**Key Findings**

- The West region generated the highest sales ($739,813.61) and profit ($110,798.82).
- The West also recorded the highest profit margin at 14.98%.
- The Central region had the lowest profit margin at 7.92%, indicating a need to investigate its product mix, discounting, and costs.
- The South generated the lowest sales ($391,721.91), while maintaining a higher profit margin than Central.

### 4. Product Sub-Category Performance

Analyzed total records, sales, profit, and profit margin across 17 product sub-categories.

**Key Findings**

- Chairs generated the highest sales at $335,768.25.
- Copiers generated the highest total profit at $56,093.94 and a profit margin of 37.21%.
- Tables recorded the largest loss at $17,753.21, with a negative profit margin of -8.53%.
- Bookcases and Supplies also recorded negative profits.
- The results show that high sales do not always translate into high profitability.

**Business Implication**

Investigate discounting, product costs, and other relevant expenses for loss-making sub-categories, particularly Tables. Further analysis is needed before recommending specific changes.

### 5. Shipping Method Performance

Compared total records, sales, profit, and profit margin across four shipping methods.

**Key Findings**

- Standard Class generated the highest sales ($1,378,840.55) and total profit ($168,161.21).
- First Class recorded the highest profit margin at 13.93%.
- Same Day had the lowest sales ($129,271.96) and total profit ($16,160.75).
- Standard Class accounted for the largest number of records, while Same Day accounted for the fewest.

**Business Implication**

Compare shipping costs, order characteristics, and customer requirements to understand how each shipping method affects profitability. The current results show associations, not proof that a shipping method causes a particular profit outcome.

### 6. Discount and Profitability Analysis

Compared sales, total profit, average profit per record, and profit margin across discount levels.

**Key Findings**

- Orders with no discount generated the highest total profit at $326,718.59 and a profit margin of 29.56%.
- The 10% and 20% discount groups remained profitable in the results.
- Discount levels of 30% and above showed negative total profit.
- The 80% discount group recorded a profit margin of -180.01%, the lowest among the discount levels analyzed.

**Business Implication**

Review high-discount transactions to understand their impact on profitability. Consider product costs, product mix, and discount policies before recommending changes. The observed relationship does not, by itself, prove that discounts caused the losses.





## Next Steps

These findings will be investigated further as the analysis progresses. Additional SQL queries, data visualizations, and business recommendations will be added as the project develops.

## Project Status

**In Progress** — Additional SQL analysis, data visualization, and business recommendations are planned.