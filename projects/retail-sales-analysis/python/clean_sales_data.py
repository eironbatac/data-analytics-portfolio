
import csv
from decimal import Decimal, InvalidOperation
from pathlib import Path

# Locate the project and its data files
PROJECT_DIR = Path(__file__).resolve().parent.parent
INPUT_FILE = PROJECT_DIR / "data" / "orders.csv"
OUTPUT_FILE = PROJECT_DIR / "data" / "orders_tableau.csv"

EXPECTED_ROWS = 10194
EXPECTED_COLUMNS = 21


def main():
    # Read the CSV using a proper CSV parser.
    # This preserves commas inside quoted product names.
    with INPUT_FILE.open(
        "r", encoding="utf-8-sig", newline=""
    ) as file:
        reader = csv.DictReader(file)
        headers = reader.fieldnames
        rows = list(reader)

    if not headers:
        raise ValueError("The CSV has no header row.")

    if len(headers) != EXPECTED_COLUMNS:
        raise ValueError(
            f"Expected {EXPECTED_COLUMNS} columns, "
            f"but found {len(headers)}."
        )

    if len(rows) != EXPECTED_ROWS:
        raise ValueError(
            f"Expected {EXPECTED_ROWS} records, "
            f"but found {len(rows)}."
        )

    if len(set(headers)) != len(headers):
        raise ValueError("Duplicate column names were found.")

    # Validate the sales values without rounding them.
    sales_total = Decimal("0")
    invalid_sales = []
    missing_sales = []

    for row_number, row in enumerate(rows, start=2):
        # DictReader uses None as a key if a row has extra fields.
        if None in row:
            raise ValueError(
                f"Extra CSV fields detected at line {row_number}."
            )

        if any(value is None for value in row.values()):
            raise ValueError(
                f"Missing CSV fields detected at line {row_number}."
            )

        raw_sales = (row.get("Sales") or "").strip()

        if not raw_sales:
            missing_sales.append(row_number)
            continue

        try:
            sales_value = Decimal(raw_sales)
            if not sales_value.is_finite():
                raise InvalidOperation
            sales_total += sales_value
        except InvalidOperation:
            invalid_sales.append((row_number, raw_sales))

    if missing_sales or invalid_sales:
        print("Sales validation needs attention.")
        print("Missing Sales values:", len(missing_sales))
        print("Invalid Sales values:", len(invalid_sales))
        if invalid_sales:
            print("Examples:", invalid_sales[:5])
        raise ValueError(
            "No output file was created because Sales validation failed."
        )

    # Write a clean copy, keeping the original CSV unchanged.
    # csv.writer correctly quotes commas and quotation marks.
    with OUTPUT_FILE.open(
        "w", encoding="utf-8", newline=""
    ) as file:
        writer = csv.DictWriter(
            file,
            fieldnames=headers,
            lineterminator="\n"
        )
        writer.writeheader()
        writer.writerows(rows)

    print("CSV validation completed successfully.")
    print(f"Records: {len(rows):,}")
    print(f"Columns: {len(headers)}")
    print(f"Missing Sales values: {len(missing_sales)}")
    print(f"Invalid Sales values: {len(invalid_sales)}")
    print(f"Total Sales: {sales_total}")
    print(f"Clean CSV created: {OUTPUT_FILE}")


if __name__ == "__main__":
    main()
