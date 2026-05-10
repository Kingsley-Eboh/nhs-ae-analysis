# NHS A&E Attendance & Performance Analysis
## Single Month Snapshot | March 2026

---

## Project Overview
This project conducted an exploratory data analysis of NHS A&E attendance,
waiting times and emergency admissions using data published by NHS England
for March 2026. The analysis identifies performance trends, operational
pressure points and trusts with notable performance characteristics across
England, translating raw administrative data into actionable insights.

---

## Objectives
- Identify the highest volume NHS trusts by total A&E attendance
- Assess organisational compliance with the NHS 4-hour performance standard
- Identify trusts with the highest number of long waits from Decision to Admit
- Analyse emergency admission volumes as a proportion of total attendances
- Consolidate national-level performance metrics into a summary scorecard

---

## Data Source
**Publisher:** NHS England  
**Dataset:** A&E Attendances and Emergency Admissions — March 2026  
**Coverage:** Approximately 200 NHS trusts and providers submitting A&E returns to NHS England 
**Frequency:** Monthly snapshot (March 2026 only)  
**Access:** [NHS England Statistics](https://www.england.nhs.uk/statistics/statistical-work-areas/ae-waiting-times-and-activity/)

---

## Tools & Libraries
| Tool | Purpose |
|---|---|
| Python 3.12 | Core programming language |
| pandas | Data loading, cleaning and transformation |
| matplotlib | Chart production and formatting |
| seaborn | Chart styling and colour palettes |
| PostgreSQL & SQL | Data querying and aggregation |
| DBeaver | SQL database interface |
| Jupyter Notebook | Interactive analysis environment |

---

## Skills Demonstrated
- Data cleaning and preparation
- Exploratory data analysis (EDA)
- Statistical summarisation
- Data visualisation
- SQL querying and aggregation

---

## Key Findings
- The NHS 4-hour performance standard requires no more than **24% of Type 1
  patients** to wait over 4 hours: the 95% standard was suspended by NHS
  England in 2020 and replaced with a 76% interim standard
- Significant variation in attendance volumes was identified across NHS trusts
  in England during March 2026
- A number of trusts recorded disproportionately high emergency admission rates
  relative to their total attendance volume, suggesting elevated case mix
  complexity
- 12+ hour waits from Decision to Admit remained a key indicator of system-wide
  bed capacity and patient flow pressure across England

---

## Analyses
| # | Title | Description |
|---|---|---|
| 1 | Total A&E attendances by organisation | Identifies the top 10 NHS trusts by total A&E attendance volume across all department types |
| 2 | 4-hour waiting time performance | Examines organisational compliance with the NHS 4-hour standard, identifying trusts with the highest number of breaches |
| 3 | Long waiting times: Decision to Admit | Identifies trusts with the highest number of patients waiting 4-12 hours and 12+ hours from Decision to Admit |
| 4 | Emergency admissions via A&E | Analyses emergency admission volumes and rates as a proportion of total attendances across all trusts |
| 5 | Key findings summary | Consolidates national-level metrics and visualisations across all four analyses into a single performance scorecard |

---

## Project Structure
```
nhs-ae-analysis/
├── nhs_ae_analysis.ipynb                  # Main Jupyter Notebook
├── nhs_ae_queries.sql                     # SQL analysis queries
├── March-2026-CSV-G49lw.csv               # Source data (NHS England)
├── top10_attendances.png                  # Analysis 1 chart
├── worst10_4hr_performance.png            # Analysis 2 chart
├── long_waits.png                         # Analysis 3 chart
├── analysis4_emergency_admissions.png     # Analysis 4 chart
├── analysis5_summary.png                  # Analysis 5 summary chart
├── .gitignore                             # Excludes Jupyter checkpoints
└── README.md                              # Project documentation
```
---

## How to Run
1. Clone the repository:
```bash
git clone https://github.com/Kingsley-Eboh/nhs-ae-analysis.git
```
2. Navigate to the project folder:
```bash
cd nhs-ae-analysis
```
3. Install required libraries:
```bash
pip install pandas matplotlib seaborn jupyter
```
4. Launch Jupyter Notebook:
```bash
jupyter notebook
```
5. Open `nhs_ae_analysis.ipynb` and run all cells:
**Kernel → Restart & Run All**

---

## Author
**Kingsley Eboh**  
[GitHub](https://github.com/Kingsley-Eboh)

---

*Data sourced from NHS England. This project is intended for portfolio and
educational purposes.*
