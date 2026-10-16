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
- The 70% discount group recorded a profit margin of -98.76%, with a total loss of $40,300.57.
- The 80% discount group had the lowest profit margin at -180.01%, with a total loss of $30,565.27.

**Business Implication**

Review high-discount transactions to understand their relationship with profitability. Consider product costs, product mix, and discount policies before recommending changes. These results show an association between discount levels and profitability, but they do not, by themselves, prove that discounts caused the losses.

### 7. Customer Segment Analysis

Compared sales, total profit, order counts, and profit margins across the Consumer, Corporate, and Home Office customer segments.

**Key Findings**

- The **Consumer** segment generated the highest total sales at **$1,170,659.79** and the highest total profit at **$136,371.45**.
- The **Corporate** segment generated **$715,806.13** in sales and **$94,249.64** in profit.
- The **Home Office** segment generated **$440,068.43** in sales and **$61,675.73** in profit.
- Home Office had the highest profit margin at **14.02%**, followed by Corporate at **13.17%** and Consumer at **11.65%**.

**Business Implication**

The Consumer segment is the largest contributor to overall sales and profit, while Home Office achieves the highest profit margin. Further analysis of product mix, order size, and discount levels could help explain these differences and identify opportunities to improve profitability across customer segments.

### 8. Customer Segment and Discount Analysis

Analyzed profitability across Consumer, Corporate, and Home Office segments at different discount levels.

**Key Findings**

- All three customer segments generated positive total profit at a 0% discount.
- Consumer recorded the highest profit at a 0% discount, totaling $160,094.93.
- Home Office achieved the highest profit margin at a 0% discount, at 31.07%.
- At a 30% discount, all three segments recorded negative total profit.
- Higher discount levels were generally associated with lower profit margins and losses across the customer segments.

**Business Implication**

Review discount policies across customer segments, particularly for discounts of 30% or higher. Before changing pricing strategies, investigate product mix, order size, and transaction volume to understand the factors associated with lower profitability. These findings indicate an association rather than proof of causation.

### 9. Customer-Level Profitability Analysis

Evaluated customer-level sales, profit, order counts, and profit margins to identify high-performing customers and customers associated with losses.

**Key Findings**

- Analyzed 804 customer records.
- 645 customers generated positive total profit, while 159 had negative total profit.
- Tamara Chand was the most profitable customer, generating $8,981.32 in total profit across 5 distinct orders.
- Cindy Stewart recorded the largest customer-level loss, totaling $6,626.39 across 6 distinct orders.
- The customer-level results represented $2,326,534.52 in sales and $292,296.97 in profit.

**Business Implication**

Identify the products, discounts, and transactions associated with customers generating substantial losses. Use these findings to investigate opportunities to improve transaction profitability while maintaining customer relationships. Customer-level losses should be investigated before making decisions about individual customers.



## Next Steps

These findings will be investigated further as the analysis progresses. Additional SQL queries, data visualizations, and business recommendations will be added as the project develops.

## Project Status

**In Progress** — Additional SQL analysis, data visualization, and business recommendations are planned.