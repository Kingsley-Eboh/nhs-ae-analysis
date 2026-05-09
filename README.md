# NHS A&E Attendance & Performance Analysis — March 2026

## Project Overview
This project conducts an exploratory data analysis of NHS A&E attendance,
waiting times, and emergency admissions using data published by NHS England
for March 2026. The analysis identifies performance trends, operational
pressure points, and outlier trusts across England, translating raw
administrative data into actionable insights.

**Author:** Kingsley Eboh  
**Dataset:** NHS England Monthly A&E Attendances and Emergency Admissions — March 2026  
**Tools:** Python, Pandas, Matplotlib, Seaborn  
**Skills:** Data Cleaning, Exploratory Data Analysis (EDA), Statistical Summarisation, Trend Analysis, Data Visualisation

---

## Repository Structure
```
nhs-ae-analysis/
├── nhs_ae_analysis.ipynb                  # Main Jupyter Notebook
├── March-2026-CSV-G49lw.csv               # Source data (NHS England)
├── top10_attendances.png                  # Analysis 1 chart
├── worst10_4hr_performance.png            # Analysis 2 chart
├── long_waits.png                         # Analysis 3 chart
├── analysis4_emergency_admissions.png     # Analysis 4 chart
├── analysis5_summary.png                  # Analysis 5 summary chart
└── .gitignore
```

---

## Analyses

| # | Title | Description |
|---|-------|-------------|
| 1 | Total A&E Attendances by Organisation | Identifies the top 10 NHS trusts by total A&E attendance volume across all department types |
| 2 | 4-Hour Waiting Time Performance | Examines organisational compliance with the NHS 4-hour standard, identifying trusts with the highest number of breaches |
| 3 | Long Waiting Times — Decision to Admit | Identifies trusts with the highest number of patients waiting 4–12 hours and 12+ hours from Decision to Admit (DTA) |
| 4 | Emergency Admissions via A&E | Analyses emergency admission volumes and rates as a proportion of total attendances across all trusts |
| 5 | Key Findings Summary | Consolidates national-level metrics and visualisations across all four analyses into a single performance scorecard |

---

## Key Findings
- The NHS 4-hour performance standard requires 95% of patients to be seen, treated, and admitted, transferred, or discharged within 4 hours of arrival
- Significant variation in attendance volumes and performance was identified across NHS trusts in England
- A number of trusts recorded disproportionately high emergency admission rates relative to their total attendance volume, suggesting elevated case mix complexity
- 12-hour+ waits from Decision to Admit remain a key indicator of system-wide bed capacity and patient flow pressure

---

## Data Source
NHS England — A&E Attendances and Emergency Admissions, March 2026  
https://www.england.nhs.uk/statistics/statistical-work-areas/ae-waiting-times-and-activity/

---

## How to Run
1. Clone this repository:
```bash
git clone https://github.com/Kingsley-Eboh/nhs-ae-analysis.git
```
2. Install dependencies:
```bash
pip install pandas matplotlib seaborn jupyter
```
3. Launch Jupyter Notebook:
```bash
jupyter notebook
```
4. Open `nhs_ae_analysis.ipynb` and run all cells

---

## Requirements
```
pandas
matplotlib
seaborn
jupyter
```
