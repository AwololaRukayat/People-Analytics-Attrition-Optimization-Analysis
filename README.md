# People Analytics & Attrition Optimization: Insights into Workforce Performance 
## Project overview 
In the U.S. alone, companies lose an estimated $1 trillion every year to voluntary attrition. That’s twelve zeros worth of wasted productivity and potential more than the GDP of Switzerland and that’s just in one country.  A recent LinkedIn and Microsoft survey revealed that more workers want to leave their jobs now than at the peak of the original Great Resignation.

The upside? Most attrition is avoidable. Over half of departing employees say their company could have made changes that would’ve convinced them to stay. And with modern HR tech, organizations can now spot the signals early before disengagement turns into departure.

This project seeks to analyze employee attrition using SQL to uncover the key demographics and career related factors driving employee attrition. The analysis leverages core SQL functions  including basic functions, filtering, sorting and aggregate functions to identify which employee segments face the highest turnover risk.

## About the Data 
This dataset captures 1,470 employee level information of different job roles, demographics and prior work history. Columns in the table:
### Data Dictionary

| Column | Description | Type |
|---|---|---|
| Age | Employee's age in years | INTEGER |
| Attrition | Whether the employee has left the company | VARCHAR |
| Department | Department the employee works in | VARCHAR |
| EducationField | Employee's field of study | VARCHAR |
| Gender | Employee's gender (Male/Female) | VARCHAR |
| JobRole | Employee's specific job title | VARCHAR |
| MaritalStatus | Employee's marital status (Single, Married, Divorced) | VARCHAR |
| NumCompaniesWorked | Total number of companies the employee worked at before the current company | INTEGER |
| YearsAtCompany | Number of years the employee has been at the current company | FLOAT |

## Business problem
At Meridian Group, good people kept walking out the door but no one could say why. HR watched resignation letters pile up, managers struggled to backfill critical roles, and leadership asked the same question every quarter: "Why do we keep losing talent, and who's leaving next?" One manager blamed compensation. Another blamed workload. HR blamed "the market." Everyone had a theory, but no one knew why. 
This analysis aim to:
Evaluate which departments and job roles have the highest attrition risk to prioritize retention efforts.
Identify demographic and career patterns that signal employees likely to leave.
Assess the overall impact of attrition on the organization to guide data-driven and workforce planning decisions.

## Executive Summary
## Key Findings Overview:
- Workforce profile: Ages range from 18 to 60 with an average of 36, a young-to-mid-career, mixed-generation workforce clustered in the late 20s to 30s.
- Job mobility: Employees have worked at about 3 companies on average, so most are mid-career hires with a history of changing jobs.
- Tenure: Average tenure is 7 years, for both male employees and the company overall.
- Attrition: 63% of male employees attrited, which is very high.
- R&D: Average age matches the company average, so age is not a distinguishing factor there.

## Critical Insights
- High male attrition (63%) is the most urgent issue. It signals a systemic retention problem, regardless of how healthy the tenure figure looks.
- The 7-year average tenure can mask the attrition problem. It may be inflated by a small group of long-serving employees while most others left earlier.
- A young, job-mobile workforce raises ongoing flight risk. Employees still building their careers, with a pattern of switching employers, are more likely to leave again.
- Rates, not raw counts, should guide department comparisons. Raw counts still matter for operational impact, so both should be read together.
- Losing long-tenured staff is costly. Their institutional knowledge and relationships are hard to replace.

## Insights Deep Dive
1. Workforce Profile:
The age range of 18 to 60 shows a mixed-generation team. The average of 36 sits below the midpoint (~39), so most employees likely cluster in their late 20s to 30s, still building their careers. Retention strategies should differ by age group, with growth paths for younger staff and succession planning for the older segment.

2. Entry-Level Hiring:
The youngest employee (18) shows the company hires entry-level staff. This brings lower cost and easier culture shaping, and it can build loyal long-term employees if nurtured. It also means higher early attrition risk and a downward pull on average tenure. The record should be checked to confirm it isn’t a data error.

3. Job Hopping History:
An average of 3 prior companies means most employees were hired mid-career with transferable skills, so onboarding can be faster. But they have already shown a pattern of moving on, so the company risks becoming just another stop on their resume unless it invests in engagement and career growth.

4. R&D Department:
R&D’s average age matches the company average, so age-specific retention strategies are not needed there. Retention should target workload, technical growth and project variety. Matching averages are only a starting signal, so MIN, MAX and standard deviation should confirm the age distributions are truly similar.

5. Tenure and Gender:
Male employees average 7 years, the same as the company overall, so tenure does not appear to differ by gender. This conflicts with the 63% male attrition rate. The two figures describe different populations (all males versus those who left), so average tenure should be calculated separately for attrited and retained males. That shows whether people leave early, which points to onboarding or culture problems, or later, which points to stagnation.

6. Department Analysis:
Attrition rate = (attrition count in the department ÷ department headcount) × 100. Small departments like HR need cautious interpretation, since one or two departures swing the rate. Large departments like Sales have a bigger absolute impact. Sales drives revenue, but quota pressure, variable pay and competitor poaching push attrition up, so even a normal-looking rate carries a high cost.

7. Long-Tenure Value:
Long-serving employees hold institutional knowledge, relationship capital, company-specific expertise and cultural fluency. Much of it is tacit and leaves with them, so knowledge transfer, mentorship and succession planning matter.

## Recommendation 
1. Strengthen early career onboarding and support. With 36% of first-year hires (16 of 44) already attriting, and entry-level 18-year-olds concentrated in Sales and R&D, the Meridian Group should invest in structured onboarding, mentorship, and early manager check-ins during the first 6–12 months to prevent avoidable early exits.

2. Prioritize Sales retention with targeted interventions. Sales drives 39% of total attrition despite being 30% of the workforce  attriting at roughly 2x the company rate. Given its direct revenue impact, HR should investigate quota pressure, competitor poaching, and client-rejection burnout, and consider incentive redesign or workload adjustments.

3. Investigate male and married employee attrition despite normal tenure. Both groups show tenure in line with company averages yet unusually high attrition (63% male, 35% married), suggesting dissatisfaction rather than time-based  risk. A targeted engagement survey or exit interview analysis focused on compensation, growth, and work-life balance would help pinpoint root causes.

4. Build succession and knowledge-transfer plans for aging, long-tenured staff. With employees aged 60 showing zero attrition but nearing retirement, and 10,309 cumulative tenure-years at risk, the company should formalize mentorship pairings and documentation processes to transfer institutional knowledge before these employees exit.

5. Reassess HR's capacity to support the wider organization. HR is only 4.3% of the workforce supporting a much larger R&D (65%) and Sales (30%) base, and its senior staff are also aging toward retirement. The  Meridian Group should evaluate whether HR is adequately staffed and resourced to manage retention strategy across all departments, and build its own succession pipeline internally.
 
## Limitations 
This dataset lacks several key factors needed to fully explain why employees attrite. Data such as compensation, satisfaction scores, exit reasons, work conditions (hybrid, remote, overtime) and time stamp. This limits the analysis to surface-level patterns rather than definitive causes of attrition.

## Conclusion 
The Meridian Group has a total workforce of 1,470 employees, maintains 84% retention rate, with 16.1% attrition rate that sits above the healthy 10% benchmark.  The workforce is experienced and loyal, contributing 10,309 cumulative years of tenure, an average tenure of 7 years, and an average age of 37, with R&D anchoring the business at 65% of total headcount. However, attrition is not evenly spread: it is concentrated in specific areas and demographic groups despite tenure patterns that would typically suggest stability. The longest-tenured employee (40 years) is younger than the oldest employee, who has shorter tenure and zero attrition. This discrepancy shows tenure, not age, is the stronger signal for departure risk. HR should start with validating root causes feedback before rolling out interventions.




