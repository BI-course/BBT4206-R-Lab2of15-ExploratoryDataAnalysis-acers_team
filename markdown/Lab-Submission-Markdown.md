# Business Intelligence Lab Submission Markdown

<Specify your name here> <Specify the date when you submitted the lab>

-   [Student Details](#student-details)
-   [Setup Chunk](#setup-chunk)
-   [Load the Datasets](#load-the-datasets)
    -   [Preview the Loaded Datasets](#preview-the-loaded-datasets)
    -   [Identify the Data Types](#identify-the-data-types)
-   [Descriptive Statistics](#descriptive-statistics)
    -   [Measures of Frequency](#measures-of-frequency)
    -   [Measures the distribution](#measures-the-distribution)
    -   [Measures the standard deviation](#measures-the-standard-deviation)
    -   [Measures the variance](#measures-the-variance)
    -   [Measures the kurtosis](#measures-the-kurtosis)
    -   [Measures the skewness](#measures-the-skewness)
    -   [Measures the covariance](#measures-the-covariance)
    -   [Measures the correlation](#measures-the-correlation)
-   [Inferential Statistics](#inferential-statistics)

# Student Details {#student-details}

|                                                   |                                                              |
|---------------------------------|---------------------------------------|
| **Student ID Numbers and Names of Group Members** |  134879 Tulienge Lesley                                      |
| **BBIT 4.2 Group**                                |  Group C                                                     |
| **Course Code**                                   | BBT4206                                                      |
| **Course Name**                                   | Business Intelligence II                                     |
| **Program**                                       | Bachelor of Business Information Technology                  |
| **Semester Duration**                             | 21<sup>st</sup> August 2023 to 28<sup>th</sup> November 2023 |

# Setup Chunk {#setup-chunk}

**Note:** the following KnitR options have been set as the global defaults:\
`knitr::opts_chunk$set(echo = TRUE, warning = FALSE, eval = TRUE,                        collapse = FALSE, tidy = TRUE)`.

> output:
>
> github_document:\
> toc: yes\
> toc_depth: 4\
> fig_width: 6\
> fig_height: 4\
> df_print: default
>
> editor_options:\
> chunk_output_type: console

More KnitR options are documented here <https://bookdown.org/yihui/rmarkdown-cookbook/chunk-options.html> and here <https://yihui.org/knitr/options/>.

# Load the Datasets {#load-the-datasets}

This code chunk loads a dataset with 101 rows and 100 columns using the readr library, displaying it in RStudio with column specifications.

``` r
library(readr)
X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset <- read_csv("data/20230412-20230719-BI1-BBIT4-1-StudentPerformanceDataset.csv")
```

```         
## Rows: 101 Columns: 100
## ── Column specification ────────────────────────────────────────────────────────
## Delimiter: ","
## chr  (4): class_group, D - 1. 
## Write two things you like about the teaching ...
## dbl (96): gender, YOB, regret_choosing_bi, drop_bi_now, motivator, read_cont...
## 
## ℹ Use `spec()` to retrieve the full column specification for this data.
## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
```

``` r
View(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset)
```

#### Preview the Loaded Datasets {#preview-the-loaded-datasets}

This code chunk uses the **dim** function from the readr library to display the dimensions of the dataset **X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset**. It shows the number of rows (observations) and columns (attributes/variables/features) in the dataset.

``` r
library(readr)
dim(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset)
```

```         
## [1] 101 100
```

#### Identify the Data Types {#identify-the-data-types}

This code chunk uses the **sapply** function from the readr library to determine and display the data types (classes) of each column in the dataset **X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset**. Understanding data types is crucial for selecting appropriate visualization techniques and data analysis methods, especially when dealing with factors or numeric data that may require specific handling or conversion.

``` r
library(readr)
sapply(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset, class)
```

```         
##                                                                                                                                                                                                                                                                                   class_group 
##                                                                                                                                                                                                                                                                                   "character" 
##                                                                                                                                                                                                                                                                                        gender 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                                           YOB 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                            regret_choosing_bi 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                                   drop_bi_now 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                                     motivator 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                   read_content_before_lecture 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                     anticipate_test_questions 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                   answer_rhetorical_questions 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                      find_terms_I_do_not_know 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                            copy_new_terms_in_reading_notebook 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                  take_quizzes_and_use_results 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                     reorganise_course_outline 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                   write_down_important_points 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                            space_out_revision 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                       studying_in_study_group 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                         schedule_appointments 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                                 goal_oriented 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                             spaced_repetition 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                     testing_and_active_recall 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                                  interleaving 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                                  categorizing 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                       retrospective_timetable 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                                 cornell_notes 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                                          sq3r 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                                       commute 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                                    study_time 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                              repeats_since_Y1 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                                  paid_tuition 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                                  free_tuition 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                              extra_curricular 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                       sports_extra_curricular 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                             exercise_per_week 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                                      meditate 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                                          pray 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                                      internet 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                                        laptop 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                          family_relationships 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                                   friendships 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                        romantic_relationships 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                             spiritual_wellnes 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                            financial_wellness 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                                        health 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                                       day_out 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                                     night_out 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                          alcohol_or_narcotics 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                                        mentor 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                               mentor_meetings 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                              A - 1. I am enjoying the subject 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                          A - 2. Classes start and end on time 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                               A - 3. The learning environment is participative, involves learning by doing and is group-based 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                             A - 4. The subject content is delivered according to the course outline and meets my expectations 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                           A - 5. The topics are clear and logically developed 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                             A - 6. I am developing my oral and writing skills 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                            A - 7. I am developing my reflective and critical reasoning skills 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                       A - 8. The assessment methods are assisting me to learn 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                            A - 9. I receive relevant feedback 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                             A - 10. I read the recommended readings and notes 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                   A - 11. I use the eLearning material posted 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                         B - 1. Concept 1 of 6: Principles of Business Intelligence and the DataOps Philosophy 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                             B - 2. Concept 3 of 6: Linear Algorithms for Predictive Analytics 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                     C - 2. Quizzes at the end of each concept 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                           C - 3. Lab manuals that outline the steps to follow during the labs 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                           C - 4. Required lab work submissions at the end of each lab manual that outline the activity to be done on your own 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                          C - 5. Supplementary videos to watch 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                    C - 6. Supplementary podcasts to listen to 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                          C - 7. Supplementary content to read 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                        C - 8. Lectures slides 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                            C - 9. Lecture notes on some of the lecture slides 
##                                                                                                                                                                                                                                                                                     "numeric" 
## C - 10. The quality of the lectures given (quality measured by the breadth (the full span of knowledge of a subject) and depth (the extent to which specific topics are focused upon, amplified, and explored) of learning - NOT quality measured by how fun/comical/lively the lectures are) 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                              C - 11. The division of theory and practice such that most of the theory is done during the recorded online classes and most of the practice is done during the physical classes 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                      C - 12. The recordings of online classes 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                       D - 1. \nWrite two things you like about the teaching and learning in this unit so far. 
##                                                                                                                                                                                                                                                                                   "character" 
##                                                                                                                                                          D - 2. Write at least one recommendation to improve the teaching and learning in this unit (for the remaining weeks in the semester) 
##                                                                                                                                                                                                                                                                                   "character" 
##                                                                                                                                                                                                                                                              Average Course Evaluation Rating 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                     Average Level of Learning Attained Rating 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                             Average Pedagogical Strategy Effectiveness Rating 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                              Project: Section 1-4: (20%) x/10 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                             Project: Section 5-11: (50%) x/10 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                Project: Section 12: (30%) x/5 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                              Project: (10%): x/30 x 100 TOTAL 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                       Quiz 1 on Concept 1 (Introduction) x/32 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                             Quiz 3 on Concept 3 (Linear) x/15 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                         Quiz 4 on Concept 4 (Non-Linear) x/22 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                       Quiz 5 on Concept 5 (Dashboarding) x/10 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                               Quizzes and  Bonus Marks (7%): x/79 x 100 TOTAL 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                 Lab 1 - 2.c. - (Simple Linear Regression) x/5 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                Lab 2 - 2.e. -  (Linear Regression using Gradient Descent) x/5 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                               Lab 3 - 2.g. - (Logistic Regression using Gradient Descent) x/5 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                             Lab 4 - 2.h. - (Linear Discriminant Analysis) x/5 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                          Lab 5 - Chart JS Dashboard Setup x/5 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                      Lab Work (7%) x/25 x 100 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                        CAT 1 (8%): x/38 x 100 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                       CAT 2 (8%): x/100 x 100 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                    Attendance Waiver Granted: 1 = Yes, 0 = No 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                        Absenteeism Percentage 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                  Coursework TOTAL: x/40 (40%) 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                              EXAM: x/60 (60%) 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                        TOTAL = Coursework TOTAL + EXAM (100%) 
##                                                                                                                                                                                                                                                                                     "numeric" 
##                                                                                                                                                                                                                                                                                         GRADE 
##                                                                                                                                                                                                                                                                                   "character"
```

# Descriptive Statistics {#descriptive-statistics}

Descriptive statistics are a set of techniques and metrics used to summarize and describe the main features, characteristics, and patterns within a dataset. These statistics provide a snapshot of the data's distribution, central tendency, variability, and other important properties.Before you can effectively use your data for tasks like building prediction models or drawing meaningful conclusions, it's crucial to have a deep understanding of the dataset.Understanding the context is essential for making informed decisions based on those results

#### Measures of Frequency {#measures-of-frequency}

This code calculates and displays the frequency and mode (most common value) for several categorical variables in a dataset, helping to understand the data's distribution and identify prevalent values.

``` r
X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq <- X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$class_group
cbind(frequency = table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq),
    percentage = prop.table(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq)) *
        100)
```

```         
##   frequency percentage
## A        23   22.77228
## B        37   36.63366
## C        41   40.59406
```

``` r
X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq <- X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$alcohol_or_narcotics
cbind(frequency = table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq),
    percentage = prop.table(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq)) *
        100)
```

```         
##   frequency percentage
## 0        68         68
## 1        30         30
## 2         1          1
## 3         1          1
```

``` r
X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq <- X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$financial_wellness
cbind(frequency = table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq),
    percentage = prop.table(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq)) *
        100)
```

```         
##   frequency percentage
## 1        10         10
## 2        18         18
## 3        41         41
## 4        21         21
## 5        10         10
```

``` r
X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq <- X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$romantic_relationships
cbind(frequency = table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq),
    percentage = prop.table(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq)) *
        100)
```

```         
##   frequency percentage
## 0        56         56
## 2         6          6
## 3        27         27
## 4        11         11
```

``` r
X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq <- X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$gender
cbind(frequency = table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq),
    percentage = prop.table(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq)) *
        100)
```

```         
##   frequency percentage
## 0        43   42.57426
## 1        58   57.42574
```

``` r
X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_class_group_mode <- names(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$class_group))[which(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$class_group) ==
    max(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$class_group)))]
print(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_class_group_mode)
```

```         
## [1] "C"
```

``` r
X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_alcohol_or_narcotics_mode <- names(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$alcohol_or_narcotics))[which(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$alcohol_or_narcotics) ==
    max(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$alcohol_or_narcotics)))]
print(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_alcohol_or_narcotics_mode)
```

```         
## [1] "0"
```

``` r
X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_financial_wellness_mode <- names(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$financial_wellness))[which(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$financial_wellness) ==
    max(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$financial_wellness)))]

print(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_financial_wellness_mode)
```

```         
## [1] "3"
```

``` r
X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_romantic_relationships_mode <- names(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$romantic_relationships))[which(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$romantic_relationships) ==
    max(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$romantic_relationships)))]
print(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_romantic_relationships_mode)
```

```         
## [1] "0"
```

``` r
X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_gender_mode <- names(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$gender))[which(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$gender) ==
    max(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$gender)))]
print(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_gender_mode)
```

```         
## [1] "1"
```

#### Measures the distribution {#measures-the-distribution}

The summary function provides key statistics and information for each variable, such as mean, median, quartiles, and count, helping to assess the distribution and characteristics of the data

``` r
summary(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset)
```

```         
##  class_group            gender            YOB       regret_choosing_bi
##  Length:101         Min.   :0.0000   Min.   :1998   Min.   :0.0000    
##  Class :character   1st Qu.:0.0000   1st Qu.:2000   1st Qu.:0.0000    
##  Mode  :character   Median :1.0000   Median :2001   Median :0.0000    
##                     Mean   :0.5743   Mean   :2001   Mean   :0.0198    
##                     3rd Qu.:1.0000   3rd Qu.:2002   3rd Qu.:0.0000    
##                     Max.   :1.0000   Max.   :2003   Max.   :1.0000    
##                                                                       
##   drop_bi_now       motivator      read_content_before_lecture
##  Min.   :0.0000   Min.   :0.0000   Min.   :1.000              
##  1st Qu.:0.0000   1st Qu.:1.0000   1st Qu.:2.000              
##  Median :0.0000   Median :1.0000   Median :3.000              
##  Mean   :0.0198   Mean   :0.7525   Mean   :2.752              
##  3rd Qu.:0.0000   3rd Qu.:1.0000   3rd Qu.:3.000              
##  Max.   :1.0000   Max.   :1.0000   Max.   :5.000              
##                                                               
##  anticipate_test_questions answer_rhetorical_questions find_terms_I_do_not_know
##  Min.   :1.000             Min.   :1.000               Min.   :1.000           
##  1st Qu.:3.000             1st Qu.:3.000               1st Qu.:3.000           
##  Median :4.000             Median :4.000               Median :4.000           
##  Mean   :3.584             Mean   :3.426               Mean   :3.743           
##  3rd Qu.:4.000             3rd Qu.:4.000               3rd Qu.:5.000           
##  Max.   :5.000             Max.   :5.000               Max.   :5.000           
##                                                                                
##  copy_new_terms_in_reading_notebook take_quizzes_and_use_results
##  Min.   :1.000                      Min.   :1.000               
##  1st Qu.:3.000                      1st Qu.:3.000               
##  Median :4.000                      Median :4.000               
##  Mean   :3.663                      Mean   :3.941               
##  3rd Qu.:4.000                      3rd Qu.:5.000               
##  Max.   :5.000                      Max.   :5.000               
##                                                                 
##  reorganise_course_outline write_down_important_points space_out_revision
##  Min.   :1.000             Min.   :1.000               Min.   :1.000     
##  1st Qu.:3.000             1st Qu.:3.000               1st Qu.:3.000     
##  Median :3.000             Median :4.000               Median :3.000     
##  Mean   :3.376             Mean   :3.832               Mean   :3.228     
##  3rd Qu.:4.000             3rd Qu.:5.000               3rd Qu.:4.000     
##  Max.   :5.000             Max.   :5.000               Max.   :5.000     
##                                                                          
##  studying_in_study_group schedule_appointments goal_oriented  
##  Min.   :1.000           Min.   :1.000         Min.   :0.000  
##  1st Qu.:1.000           1st Qu.:1.000         1st Qu.:0.000  
##  Median :2.000           Median :2.000         Median :0.000  
##  Mean   :2.455           Mean   :1.931         Mean   :0.198  
##  3rd Qu.:3.000           3rd Qu.:2.000         3rd Qu.:0.000  
##  Max.   :5.000           Max.   :5.000         Max.   :1.000  
##                                                               
##  spaced_repetition testing_and_active_recall  interleaving    categorizing  
##  Min.   :1.000     Min.   :1.000             Min.   :1.000   Min.   :1.000  
##  1st Qu.:2.000     1st Qu.:3.000             1st Qu.:2.000   1st Qu.:2.000  
##  Median :3.000     Median :3.000             Median :2.000   Median :3.000  
##  Mean   :2.554     Mean   :3.059             Mean   :2.257   Mean   :2.713  
##  3rd Qu.:3.000     3rd Qu.:4.000             3rd Qu.:3.000   3rd Qu.:3.000  
##  Max.   :4.000     Max.   :4.000             Max.   :4.000   Max.   :4.000  
##                                                                             
##  retrospective_timetable cornell_notes        sq3r          commute    
##  Min.   :1.000           Min.   :1.000   Min.   :1.000   Min.   :1.00  
##  1st Qu.:2.000           1st Qu.:2.000   1st Qu.:2.000   1st Qu.:2.00  
##  Median :2.000           Median :3.000   Median :3.000   Median :3.00  
##  Mean   :2.406           Mean   :2.545   Mean   :2.614   Mean   :2.73  
##  3rd Qu.:3.000           3rd Qu.:3.000   3rd Qu.:3.000   3rd Qu.:4.00  
##  Max.   :4.000           Max.   :4.000   Max.   :4.000   Max.   :4.00  
##                                                          NA's   :1     
##    study_time   repeats_since_Y1  paid_tuition   free_tuition  extra_curricular
##  Min.   :1.00   Min.   : 0.00    Min.   :0.00   Min.   :0.00   Min.   :0.00    
##  1st Qu.:1.00   1st Qu.: 0.00    1st Qu.:0.00   1st Qu.:0.00   1st Qu.:0.00    
##  Median :2.00   Median : 2.00    Median :0.00   Median :0.00   Median :1.00    
##  Mean   :1.75   Mean   : 2.05    Mean   :0.11   Mean   :0.27   Mean   :0.53    
##  3rd Qu.:2.00   3rd Qu.: 3.00    3rd Qu.:0.00   3rd Qu.:1.00   3rd Qu.:1.00    
##  Max.   :4.00   Max.   :10.00    Max.   :1.00   Max.   :1.00   Max.   :1.00    
##  NA's   :1      NA's   :1        NA's   :1      NA's   :1      NA's   :1       
##  sports_extra_curricular exercise_per_week    meditate         pray     
##  Min.   :0.00            Min.   :0.0       Min.   :0.00   Min.   :0.00  
##  1st Qu.:0.00            1st Qu.:1.0       1st Qu.:0.00   1st Qu.:1.00  
##  Median :0.00            Median :1.0       Median :1.00   Median :2.00  
##  Mean   :0.36            Mean   :1.1       Mean   :0.76   Mean   :2.09  
##  3rd Qu.:1.00            3rd Qu.:2.0       3rd Qu.:1.00   3rd Qu.:3.00  
##  Max.   :1.00            Max.   :3.0       Max.   :3.00   Max.   :3.00  
##  NA's   :1               NA's   :1         NA's   :1      NA's   :1     
##     internet        laptop  family_relationships  friendships  
##  Min.   :0.00   Min.   :1   Min.   :2.00         Min.   :2.00  
##  1st Qu.:1.00   1st Qu.:1   1st Qu.:4.00         1st Qu.:4.00  
##  Median :1.00   Median :1   Median :4.00         Median :4.00  
##  Mean   :0.87   Mean   :1   Mean   :4.19         Mean   :4.01  
##  3rd Qu.:1.00   3rd Qu.:1   3rd Qu.:5.00         3rd Qu.:4.00  
##  Max.   :1.00   Max.   :1   Max.   :5.00         Max.   :5.00  
##  NA's   :1      NA's   :1   NA's   :1            NA's   :1     
##  romantic_relationships spiritual_wellnes financial_wellness     health    
##  Min.   :0.00           Min.   :1.00      Min.   :1.00       Min.   :1.00  
##  1st Qu.:0.00           1st Qu.:3.00      1st Qu.:2.00       1st Qu.:3.00  
##  Median :0.00           Median :4.00      Median :3.00       Median :4.00  
##  Mean   :1.37           Mean   :3.65      Mean   :3.03       Mean   :4.04  
##  3rd Qu.:3.00           3rd Qu.:4.00      3rd Qu.:4.00       3rd Qu.:5.00  
##  Max.   :4.00           Max.   :5.00      Max.   :5.00       Max.   :5.00  
##  NA's   :1              NA's   :1         NA's   :1          NA's   :1     
##     day_out      night_out    alcohol_or_narcotics     mentor    
##  Min.   :0.0   Min.   :0.00   Min.   :0.00         Min.   :0.00  
##  1st Qu.:0.0   1st Qu.:0.00   1st Qu.:0.00         1st Qu.:0.00  
##  Median :1.0   Median :0.00   Median :0.00         Median :0.00  
##  Mean   :0.8   Mean   :0.51   Mean   :0.35         Mean   :0.41  
##  3rd Qu.:1.0   3rd Qu.:1.00   3rd Qu.:1.00         3rd Qu.:1.00  
##  Max.   :3.0   Max.   :3.00   Max.   :3.00         Max.   :1.00  
##  NA's   :1     NA's   :1      NA's   :1            NA's   :1     
##  mentor_meetings A - 1. I am enjoying the subject
##  Min.   :0.00    Min.   :3.00                    
##  1st Qu.:0.00    1st Qu.:4.00                    
##  Median :0.00    Median :5.00                    
##  Mean   :0.68    Mean   :4.49                    
##  3rd Qu.:1.00    3rd Qu.:5.00                    
##  Max.   :3.00    Max.   :5.00                    
##  NA's   :1       NA's   :1                       
##  A - 2. Classes start and end on time
##  Min.   :3.00                        
##  1st Qu.:4.00                        
##  Median :5.00                        
##  Mean   :4.68                        
##  3rd Qu.:5.00                        
##  Max.   :5.00                        
##  NA's   :1                           
##  A - 3. The learning environment is participative, involves learning by doing and is group-based
##  Min.   :3.00                                                                                   
##  1st Qu.:4.00                                                                                   
##  Median :4.00                                                                                   
##  Mean   :4.35                                                                                   
##  3rd Qu.:5.00                                                                                   
##  Max.   :5.00                                                                                   
##  NA's   :1                                                                                      
##  A - 4. The subject content is delivered according to the course outline and meets my expectations
##  Min.   :3.00                                                                                     
##  1st Qu.:4.75                                                                                     
##  Median :5.00                                                                                     
##  Mean   :4.74                                                                                     
##  3rd Qu.:5.00                                                                                     
##  Max.   :5.00                                                                                     
##  NA's   :1                                                                                        
##  A - 5. The topics are clear and logically developed
##  Min.   :2.00                                       
##  1st Qu.:4.00                                       
##  Median :5.00                                       
##  Mean   :4.65                                       
##  3rd Qu.:5.00                                       
##  Max.   :5.00                                       
##  NA's   :1                                          
##  A - 6. I am developing my oral and writing skills
##  Min.   :1.00                                     
##  1st Qu.:4.00                                     
##  Median :4.00                                     
##  Mean   :4.11                                     
##  3rd Qu.:5.00                                     
##  Max.   :5.00                                     
##  NA's   :1                                        
##  A - 7. I am developing my reflective and critical reasoning skills
##  Min.   :2.00                                                      
##  1st Qu.:4.00                                                      
##  Median :4.00                                                      
##  Mean   :4.38                                                      
##  3rd Qu.:5.00                                                      
##  Max.   :5.00                                                      
##  NA's   :1                                                         
##  A - 8. The assessment methods are assisting me to learn
##  Min.   :1.00                                           
##  1st Qu.:4.00                                           
##  Median :5.00                                           
##  Mean   :4.61                                           
##  3rd Qu.:5.00                                           
##  Max.   :5.00                                           
##  NA's   :1                                              
##  A - 9. I receive relevant feedback
##  Min.   :3.00                      
##  1st Qu.:4.00                      
##  Median :5.00                      
##  Mean   :4.58                      
##  3rd Qu.:5.00                      
##  Max.   :5.00                      
##  NA's   :1                         
##  A - 10. I read the recommended readings and notes
##  Min.   :3.00                                     
##  1st Qu.:4.00                                     
##  Median :5.00                                     
##  Mean   :4.55                                     
##  3rd Qu.:5.00                                     
##  Max.   :5.00                                     
##  NA's   :1                                        
##  A - 11. I use the eLearning material posted
##  Min.   :3.0                                
##  1st Qu.:4.0                                
##  Median :5.0                                
##  Mean   :4.7                                
##  3rd Qu.:5.0                                
##  Max.   :5.0                                
##  NA's   :1                                  
##  B - 1. Concept 1 of 6: Principles of Business Intelligence and the DataOps Philosophy
##  Min.   :1.00                                                                         
##  1st Qu.:4.00                                                                         
##  Median :4.00                                                                         
##  Mean   :4.25                                                                         
##  3rd Qu.:5.00                                                                         
##  Max.   :5.00                                                                         
##  NA's   :1                                                                            
##  B - 2. Concept 3 of 6: Linear Algorithms for Predictive Analytics
##  Min.   :2.00                                                     
##  1st Qu.:3.00                                                     
##  Median :4.00                                                     
##  Mean   :3.94                                                     
##  3rd Qu.:5.00                                                     
##  Max.   :5.00                                                     
##  NA's   :1                                                        
##  C - 2. Quizzes at the end of each concept
##  Min.   :2.00                             
##  1st Qu.:4.00                             
##  Median :5.00                             
##  Mean   :4.59                             
##  3rd Qu.:5.00                             
##  Max.   :5.00                             
##  NA's   :1                                
##  C - 3. Lab manuals that outline the steps to follow during the labs
##  Min.   :3.00                                                       
##  1st Qu.:4.00                                                       
##  Median :5.00                                                       
##  Mean   :4.61                                                       
##  3rd Qu.:5.00                                                       
##  Max.   :5.00                                                       
##  NA's   :1                                                          
##  C - 4. Required lab work submissions at the end of each lab manual that outline the activity to be done on your own
##  Min.   :3.00                                                                                                       
##  1st Qu.:4.00                                                                                                       
##  Median :5.00                                                                                                       
##  Mean   :4.55                                                                                                       
##  3rd Qu.:5.00                                                                                                       
##  Max.   :5.00                                                                                                       
##  NA's   :1                                                                                                          
##  C - 5. Supplementary videos to watch
##  Min.   :1.00                        
##  1st Qu.:4.00                        
##  Median :4.00                        
##  Mean   :4.19                        
##  3rd Qu.:5.00                        
##  Max.   :5.00                        
##  NA's   :1                           
##  C - 6. Supplementary podcasts to listen to
##  Min.   :1.00                              
##  1st Qu.:4.00                              
##  Median :4.00                              
##  Mean   :4.08                              
##  3rd Qu.:5.00                              
##  Max.   :5.00                              
##  NA's   :1                                 
##  C - 7. Supplementary content to read C - 8. Lectures slides
##  Min.   :1.00                         Min.   :2.0           
##  1st Qu.:4.00                         1st Qu.:4.0           
##  Median :4.00                         Median :5.0           
##  Mean   :4.17                         Mean   :4.6           
##  3rd Qu.:5.00                         3rd Qu.:5.0           
##  Max.   :5.00                         Max.   :5.0           
##  NA's   :1                            NA's   :1             
##  C - 9. Lecture notes on some of the lecture slides
##  Min.   :2.0                                       
##  1st Qu.:4.0                                       
##  Median :5.0                                       
##  Mean   :4.6                                       
##  3rd Qu.:5.0                                       
##  Max.   :5.0                                       
##  NA's   :1                                         
##  C - 10. The quality of the lectures given (quality measured by the breadth (the full span of knowledge of a subject) and depth (the extent to which specific topics are focused upon, amplified, and explored) of learning - NOT quality measured by how fun/comical/lively the lectures are)
##  Min.   :2.00                                                                                                                                                                                                                                                                                 
##  1st Qu.:4.00                                                                                                                                                                                                                                                                                 
##  Median :5.00                                                                                                                                                                                                                                                                                 
##  Mean   :4.54                                                                                                                                                                                                                                                                                 
##  3rd Qu.:5.00                                                                                                                                                                                                                                                                                 
##  Max.   :5.00                                                                                                                                                                                                                                                                                 
##  NA's   :1                                                                                                                                                                                                                                                                                    
##  C - 11. The division of theory and practice such that most of the theory is done during the recorded online classes and most of the practice is done during the physical classes
##  Min.   :2.00                                                                                                                                                                    
##  1st Qu.:4.00                                                                                                                                                                    
##  Median :5.00                                                                                                                                                                    
##  Mean   :4.49                                                                                                                                                                    
##  3rd Qu.:5.00                                                                                                                                                                    
##  Max.   :5.00                                                                                                                                                                    
##  NA's   :1                                                                                                                                                                       
##  C - 12. The recordings of online classes
##  Min.   :2.00                            
##  1st Qu.:4.00                            
##  Median :5.00                            
##  Mean   :4.33                            
##  3rd Qu.:5.00                            
##  Max.   :5.00                            
##  NA's   :1                               
##  D - 1. \nWrite two things you like about the teaching and learning in this unit so far.
##  Length:101                                                                             
##  Class :character                                                                       
##  Mode  :character                                                                       
##                                                                                         
##                                                                                         
##                                                                                         
##                                                                                         
##  D - 2. Write at least one recommendation to improve the teaching and learning in this unit (for the remaining weeks in the semester)
##  Length:101                                                                                                                          
##  Class :character                                                                                                                    
##  Mode  :character                                                                                                                    
##                                                                                                                                      
##                                                                                                                                      
##                                                                                                                                      
##                                                                                                                                      
##  Average Course Evaluation Rating Average Level of Learning Attained Rating
##  Min.   :2.909                    Min.   :2.000                            
##  1st Qu.:4.273                    1st Qu.:3.500                            
##  Median :4.545                    Median :4.000                            
##  Mean   :4.531                    Mean   :4.095                            
##  3rd Qu.:4.909                    3rd Qu.:4.500                            
##  Max.   :5.000                    Max.   :5.000                            
##  NA's   :1                        NA's   :1                                
##  Average Pedagogical Strategy Effectiveness Rating
##  Min.   :3.182                                    
##  1st Qu.:4.068                                    
##  Median :4.545                                    
##  Mean   :4.432                                    
##  3rd Qu.:4.909                                    
##  Max.   :5.000                                    
##  NA's   :1                                        
##  Project: Section 1-4: (20%) x/10 Project: Section 5-11: (50%) x/10
##  Min.   : 0.000                   Min.   : 0.000                   
##  1st Qu.: 7.400                   1st Qu.: 6.000                   
##  Median : 8.500                   Median : 7.800                   
##  Mean   : 8.011                   Mean   : 6.582                   
##  3rd Qu.: 9.000                   3rd Qu.: 8.300                   
##  Max.   :10.000                   Max.   :10.000                   
##                                                                    
##  Project: Section 12: (30%) x/5 Project: (10%): x/30 x 100 TOTAL
##  Min.   :0.000                  Min.   :  0.00                  
##  1st Qu.:0.000                  1st Qu.: 56.00                  
##  Median :0.000                  Median : 66.40                  
##  Mean   :1.015                  Mean   : 62.39                  
##  3rd Qu.:1.250                  3rd Qu.: 71.60                  
##  Max.   :5.000                  Max.   :100.00                  
##  NA's   :1                                                      
##  Quiz 1 on Concept 1 (Introduction) x/32 Quiz 3 on Concept 3 (Linear) x/15
##  Min.   : 4.75                           Min.   : 3.00                    
##  1st Qu.:11.53                           1st Qu.: 7.00                    
##  Median :15.33                           Median : 9.00                    
##  Mean   :16.36                           Mean   : 9.53                    
##  3rd Qu.:19.63                           3rd Qu.:12.00                    
##  Max.   :31.25                           Max.   :15.00                    
##                                          NA's   :2                        
##  Quiz 4 on Concept 4 (Non-Linear) x/22 Quiz 5 on Concept 5 (Dashboarding) x/10
##  Min.   : 3.00                         Min.   : 0.000                         
##  1st Qu.:10.91                         1st Qu.: 5.000                         
##  Median :13.50                         Median : 6.330                         
##  Mean   :13.94                         Mean   : 6.367                         
##  3rd Qu.:17.50                         3rd Qu.: 8.000                         
##  Max.   :22.00                         Max.   :12.670                         
##  NA's   :6                             NA's   :12                             
##  Quizzes and  Bonus Marks (7%): x/79 x 100 TOTAL
##  Min.   :26.26                                  
##  1st Qu.:43.82                                  
##  Median :55.31                                  
##  Mean   :56.22                                  
##  3rd Qu.:65.16                                  
##  Max.   :95.25                                  
##                                                 
##  Lab 1 - 2.c. - (Simple Linear Regression) x/5
##  Min.   :3.000                                
##  1st Qu.:5.000                                
##  Median :5.000                                
##  Mean   :4.898                                
##  3rd Qu.:5.000                                
##  Max.   :5.000                                
##  NA's   :3                                    
##  Lab 2 - 2.e. -  (Linear Regression using Gradient Descent) x/5
##  Min.   :2.150                                                 
##  1st Qu.:3.150                                                 
##  Median :4.850                                                 
##  Mean   :4.166                                                 
##  3rd Qu.:5.000                                                 
##  Max.   :5.000                                                 
##  NA's   :6                                                     
##  Lab 3 - 2.g. - (Logistic Regression using Gradient Descent) x/5
##  Min.   :2.85                                                   
##  1st Qu.:4.85                                                   
##  Median :4.85                                                   
##  Mean   :4.63                                                   
##  3rd Qu.:4.85                                                   
##  Max.   :5.00                                                   
##  NA's   :9                                                      
##  Lab 4 - 2.h. - (Linear Discriminant Analysis) x/5
##  Min.   :1.850                                    
##  1st Qu.:4.100                                    
##  Median :4.850                                    
##  Mean   :4.425                                    
##  3rd Qu.:5.000                                    
##  Max.   :5.000                                    
##  NA's   :18                                       
##  Lab 5 - Chart JS Dashboard Setup x/5 Lab Work (7%) x/25 x 100
##  Min.   :0.000                        Min.   : 17.80          
##  1st Qu.:0.000                        1st Qu.: 70.80          
##  Median :5.000                        Median : 80.00          
##  Mean   :3.404                        Mean   : 79.72          
##  3rd Qu.:5.000                        3rd Qu.: 97.20          
##  Max.   :5.000                        Max.   :100.00          
##                                                               
##  CAT 1 (8%): x/38 x 100 CAT 2 (8%): x/100 x 100
##  Min.   :32.89          Min.   :  0.00         
##  1st Qu.:59.21          1st Qu.: 51.00         
##  Median :69.73          Median : 63.50         
##  Mean   :69.39          Mean   : 62.13         
##  3rd Qu.:82.89          3rd Qu.: 81.75         
##  Max.   :97.36          Max.   :100.00         
##  NA's   :4              NA's   :31             
##  Attendance Waiver Granted: 1 = Yes, 0 = No Absenteeism Percentage
##  Min.   :0.00000                            Min.   : 0.00         
##  1st Qu.:0.00000                            1st Qu.: 7.41         
##  Median :0.00000                            Median :14.81         
##  Mean   :0.04951                            Mean   :15.42         
##  3rd Qu.:0.00000                            3rd Qu.:22.22         
##  Max.   :1.00000                            Max.   :51.85         
##                                                                   
##  Coursework TOTAL: x/40 (40%) EXAM: x/60 (60%)
##  Min.   : 7.47                Min.   : 5.00   
##  1st Qu.:20.44                1st Qu.:26.00   
##  Median :24.58                Median :34.00   
##  Mean   :24.53                Mean   :33.94   
##  3rd Qu.:29.31                3rd Qu.:42.00   
##  Max.   :35.08                Max.   :56.00   
##                               NA's   :4       
##  TOTAL = Coursework TOTAL + EXAM (100%)    GRADE          
##  Min.   : 7.47                          Length:101        
##  1st Qu.:45.54                          Class :character  
##  Median :58.69                          Mode  :character  
##  Mean   :57.12                                            
##  3rd Qu.:68.83                                            
##  Max.   :87.72                                            
## 
```

#### Measures the standard deviation {#measures-the-standard-deviation}

This code calculates and returns the standard deviation for each of the selected columns (variables) in the dataset. Standard deviation measures the dispersion or spread of data points around the mean, providing insight into data variability

``` r
sapply(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset[, c(2, 3, 4, 5, 6,
    7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26,
    27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46,
    47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66,
    67, 68, 69, 70, 71, 72, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88,
    89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)], sd)
```

```         
##                                                                                                                                                                                                                                                                                        gender 
##                                                                                                                                                                                                                                                                                     0.4969212 
##                                                                                                                                                                                                                                                                                           YOB 
##                                                                                                                                                                                                                                                                                     0.9950372 
##                                                                                                                                                                                                                                                                            regret_choosing_bi 
##                                                                                                                                                                                                                                                                                     0.1400141 
##                                                                                                                                                                                                                                                                                   drop_bi_now 
##                                                                                                                                                                                                                                                                                     0.1400141 
##                                                                                                                                                                                                                                                                                     motivator 
##                                                                                                                                                                                                                                                                                     0.4337267 
##                                                                                                                                                                                                                                                                   read_content_before_lecture 
##                                                                                                                                                                                                                                                                                     0.9633892 
##                                                                                                                                                                                                                                                                     anticipate_test_questions 
##                                                                                                                                                                                                                                                                                     0.9926462 
##                                                                                                                                                                                                                                                                   answer_rhetorical_questions 
##                                                                                                                                                                                                                                                                                     0.9934439 
##                                                                                                                                                                                                                                                                      find_terms_I_do_not_know 
##                                                                                                                                                                                                                                                                                     1.0550210 
##                                                                                                                                                                                                                                                            copy_new_terms_in_reading_notebook 
##                                                                                                                                                                                                                                                                                     1.1070432 
##                                                                                                                                                                                                                                                                  take_quizzes_and_use_results 
##                                                                                                                                                                                                                                                                                     1.0753770 
##                                                                                                                                                                                                                                                                     reorganise_course_outline 
##                                                                                                                                                                                                                                                                                     1.1563000 
##                                                                                                                                                                                                                                                                   write_down_important_points 
##                                                                                                                                                                                                                                                                                     1.0776763 
##                                                                                                                                                                                                                                                                            space_out_revision 
##                                                                                                                                                                                                                                                                                     1.1303202 
##                                                                                                                                                                                                                                                                       studying_in_study_group 
##                                                                                                                                                                                                                                                                                     1.3380938 
##                                                                                                                                                                                                                                                                         schedule_appointments 
##                                                                                                                                                                                                                                                                                     1.0223251 
##                                                                                                                                                                                                                                                                                 goal_oriented 
##                                                                                                                                                                                                                                                                                     0.4004947 
##                                                                                                                                                                                                                                                                             spaced_repetition 
##                                                                                                                                                                                                                                                                                     0.8303643 
##                                                                                                                                                                                                                                                                     testing_and_active_recall 
##                                                                                                                                                                                                                                                                                     0.7186346 
##                                                                                                                                                                                                                                                                                  interleaving 
##                                                                                                                                                                                                                                                                                     0.7436863 
##                                                                                                                                                                                                                                                                                  categorizing 
##                                                                                                                                                                                                                                                                                     0.7394137 
##                                                                                                                                                                                                                                                                       retrospective_timetable 
##                                                                                                                                                                                                                                                                                     0.8851917 
##                                                                                                                                                                                                                                                                                 cornell_notes 
##                                                                                                                                                                                                                                                                                     0.9952362 
##                                                                                                                                                                                                                                                                                          sq3r 
##                                                                                                                                                                                                                                                                                     1.0485256 
##                                                                                                                                                                                                                                                                                       commute 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                    study_time 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                              repeats_since_Y1 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                  paid_tuition 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                  free_tuition 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                              extra_curricular 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                       sports_extra_curricular 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                             exercise_per_week 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                      meditate 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                          pray 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                      internet 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                        laptop 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                          family_relationships 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                   friendships 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                        romantic_relationships 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                             spiritual_wellnes 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                            financial_wellness 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                        health 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                       day_out 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                     night_out 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                          alcohol_or_narcotics 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                        mentor 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                               mentor_meetings 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                              A - 1. I am enjoying the subject 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                          A - 2. Classes start and end on time 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                               A - 3. The learning environment is participative, involves learning by doing and is group-based 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                             A - 4. The subject content is delivered according to the course outline and meets my expectations 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                           A - 5. The topics are clear and logically developed 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                             A - 6. I am developing my oral and writing skills 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                            A - 7. I am developing my reflective and critical reasoning skills 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                       A - 8. The assessment methods are assisting me to learn 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                            A - 9. I receive relevant feedback 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                             A - 10. I read the recommended readings and notes 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                   A - 11. I use the eLearning material posted 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                         B - 1. Concept 1 of 6: Principles of Business Intelligence and the DataOps Philosophy 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                             B - 2. Concept 3 of 6: Linear Algorithms for Predictive Analytics 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                     C - 2. Quizzes at the end of each concept 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                           C - 3. Lab manuals that outline the steps to follow during the labs 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                           C - 4. Required lab work submissions at the end of each lab manual that outline the activity to be done on your own 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                          C - 5. Supplementary videos to watch 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                    C - 6. Supplementary podcasts to listen to 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                          C - 7. Supplementary content to read 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                        C - 8. Lectures slides 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                            C - 9. Lecture notes on some of the lecture slides 
##                                                                                                                                                                                                                                                                                            NA 
## C - 10. The quality of the lectures given (quality measured by the breadth (the full span of knowledge of a subject) and depth (the extent to which specific topics are focused upon, amplified, and explored) of learning - NOT quality measured by how fun/comical/lively the lectures are) 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                              C - 11. The division of theory and practice such that most of the theory is done during the recorded online classes and most of the practice is done during the physical classes 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                      C - 12. The recordings of online classes 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                              Average Course Evaluation Rating 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                     Average Level of Learning Attained Rating 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                             Average Pedagogical Strategy Effectiveness Rating 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                              Project: Section 1-4: (20%) x/10 
##                                                                                                                                                                                                                                                                                     2.1018040 
##                                                                                                                                                                                                                                                             Project: Section 5-11: (50%) x/10 
##                                                                                                                                                                                                                                                                                     2.7890284 
##                                                                                                                                                                                                                                                                Project: Section 12: (30%) x/5 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                              Project: (10%): x/30 x 100 TOTAL 
##                                                                                                                                                                                                                                                                                    20.1517428 
##                                                                                                                                                                                                                                                       Quiz 1 on Concept 1 (Introduction) x/32 
##                                                                                                                                                                                                                                                                                     6.5052771 
##                                                                                                                                                                                                                                                             Quiz 3 on Concept 3 (Linear) x/15 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                         Quiz 4 on Concept 4 (Non-Linear) x/22 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                       Quiz 5 on Concept 5 (Dashboarding) x/10 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                               Quizzes and  Bonus Marks (7%): x/79 x 100 TOTAL 
##                                                                                                                                                                                                                                                                                    16.4938796 
##                                                                                                                                                                                                                                                 Lab 1 - 2.c. - (Simple Linear Regression) x/5 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                Lab 2 - 2.e. -  (Linear Regression using Gradient Descent) x/5 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                               Lab 3 - 2.g. - (Logistic Regression using Gradient Descent) x/5 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                             Lab 4 - 2.h. - (Linear Discriminant Analysis) x/5 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                          Lab 5 - Chart JS Dashboard Setup x/5 
##                                                                                                                                                                                                                                                                                     2.3327203 
##                                                                                                                                                                                                                                                                      Lab Work (7%) x/25 x 100 
##                                                                                                                                                                                                                                                                                    19.3031268 
##                                                                                                                                                                                                                                                                        CAT 1 (8%): x/38 x 100 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                       CAT 2 (8%): x/100 x 100 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                    Attendance Waiver Granted: 1 = Yes, 0 = No 
##                                                                                                                                                                                                                                                                                     0.2180017 
##                                                                                                                                                                                                                                                                        Absenteeism Percentage 
##                                                                                                                                                                                                                                                                                     9.0886796 
##                                                                                                                                                                                                                                                                  Coursework TOTAL: x/40 (40%) 
##                                                                                                                                                                                                                                                                                     6.2240076 
##                                                                                                                                                                                                                                                                              EXAM: x/60 (60%) 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                        TOTAL = Coursework TOTAL + EXAM (100%) 
##                                                                                                                                                                                                                                                                                    15.7253295
```

#### Measures the variance {#measures-the-variance}

This code calculates and returns the variance for each selected column. Variance quantifies how much individual data points deviate from the mean, offering another perspective on data dispersion.

``` r
sapply(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset[, c(2, 3, 4, 5, 6,
    7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26,
    27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46,
    47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66,
    67, 68, 69, 70, 71, 72, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88,
    89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)], var)
```

```         
##                                                                                                                                                                                                                                                                                        gender 
##                                                                                                                                                                                                                                                                                    0.24693069 
##                                                                                                                                                                                                                                                                                           YOB 
##                                                                                                                                                                                                                                                                                    0.99009901 
##                                                                                                                                                                                                                                                                            regret_choosing_bi 
##                                                                                                                                                                                                                                                                                    0.01960396 
##                                                                                                                                                                                                                                                                                   drop_bi_now 
##                                                                                                                                                                                                                                                                                    0.01960396 
##                                                                                                                                                                                                                                                                                     motivator 
##                                                                                                                                                                                                                                                                                    0.18811881 
##                                                                                                                                                                                                                                                                   read_content_before_lecture 
##                                                                                                                                                                                                                                                                                    0.92811881 
##                                                                                                                                                                                                                                                                     anticipate_test_questions 
##                                                                                                                                                                                                                                                                                    0.98534653 
##                                                                                                                                                                                                                                                                   answer_rhetorical_questions 
##                                                                                                                                                                                                                                                                                    0.98693069 
##                                                                                                                                                                                                                                                                      find_terms_I_do_not_know 
##                                                                                                                                                                                                                                                                                    1.11306931 
##                                                                                                                                                                                                                                                            copy_new_terms_in_reading_notebook 
##                                                                                                                                                                                                                                                                                    1.22554455 
##                                                                                                                                                                                                                                                                  take_quizzes_and_use_results 
##                                                                                                                                                                                                                                                                                    1.15643564 
##                                                                                                                                                                                                                                                                     reorganise_course_outline 
##                                                                                                                                                                                                                                                                                    1.33702970 
##                                                                                                                                                                                                                                                                   write_down_important_points 
##                                                                                                                                                                                                                                                                                    1.16138614 
##                                                                                                                                                                                                                                                                            space_out_revision 
##                                                                                                                                                                                                                                                                                    1.27762376 
##                                                                                                                                                                                                                                                                       studying_in_study_group 
##                                                                                                                                                                                                                                                                                    1.79049505 
##                                                                                                                                                                                                                                                                         schedule_appointments 
##                                                                                                                                                                                                                                                                                    1.04514851 
##                                                                                                                                                                                                                                                                                 goal_oriented 
##                                                                                                                                                                                                                                                                                    0.16039604 
##                                                                                                                                                                                                                                                                             spaced_repetition 
##                                                                                                                                                                                                                                                                                    0.68950495 
##                                                                                                                                                                                                                                                                     testing_and_active_recall 
##                                                                                                                                                                                                                                                                                    0.51643564 
##                                                                                                                                                                                                                                                                                  interleaving 
##                                                                                                                                                                                                                                                                                    0.55306931 
##                                                                                                                                                                                                                                                                                  categorizing 
##                                                                                                                                                                                                                                                                                    0.54673267 
##                                                                                                                                                                                                                                                                       retrospective_timetable 
##                                                                                                                                                                                                                                                                                    0.78356436 
##                                                                                                                                                                                                                                                                                 cornell_notes 
##                                                                                                                                                                                                                                                                                    0.99049505 
##                                                                                                                                                                                                                                                                                          sq3r 
##                                                                                                                                                                                                                                                                                    1.09940594 
##                                                                                                                                                                                                                                                                                       commute 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                    study_time 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                              repeats_since_Y1 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                  paid_tuition 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                  free_tuition 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                              extra_curricular 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                       sports_extra_curricular 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                             exercise_per_week 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                      meditate 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                          pray 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                      internet 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                        laptop 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                          family_relationships 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                   friendships 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                        romantic_relationships 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                             spiritual_wellnes 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                            financial_wellness 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                        health 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                       day_out 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                     night_out 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                          alcohol_or_narcotics 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                        mentor 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                               mentor_meetings 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                              A - 1. I am enjoying the subject 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                          A - 2. Classes start and end on time 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                               A - 3. The learning environment is participative, involves learning by doing and is group-based 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                             A - 4. The subject content is delivered according to the course outline and meets my expectations 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                           A - 5. The topics are clear and logically developed 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                             A - 6. I am developing my oral and writing skills 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                            A - 7. I am developing my reflective and critical reasoning skills 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                       A - 8. The assessment methods are assisting me to learn 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                            A - 9. I receive relevant feedback 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                             A - 10. I read the recommended readings and notes 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                   A - 11. I use the eLearning material posted 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                         B - 1. Concept 1 of 6: Principles of Business Intelligence and the DataOps Philosophy 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                             B - 2. Concept 3 of 6: Linear Algorithms for Predictive Analytics 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                     C - 2. Quizzes at the end of each concept 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                           C - 3. Lab manuals that outline the steps to follow during the labs 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                           C - 4. Required lab work submissions at the end of each lab manual that outline the activity to be done on your own 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                          C - 5. Supplementary videos to watch 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                    C - 6. Supplementary podcasts to listen to 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                          C - 7. Supplementary content to read 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                        C - 8. Lectures slides 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                            C - 9. Lecture notes on some of the lecture slides 
##                                                                                                                                                                                                                                                                                            NA 
## C - 10. The quality of the lectures given (quality measured by the breadth (the full span of knowledge of a subject) and depth (the extent to which specific topics are focused upon, amplified, and explored) of learning - NOT quality measured by how fun/comical/lively the lectures are) 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                              C - 11. The division of theory and practice such that most of the theory is done during the recorded online classes and most of the practice is done during the physical classes 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                      C - 12. The recordings of online classes 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                              Average Course Evaluation Rating 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                     Average Level of Learning Attained Rating 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                             Average Pedagogical Strategy Effectiveness Rating 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                              Project: Section 1-4: (20%) x/10 
##                                                                                                                                                                                                                                                                                    4.41758020 
##                                                                                                                                                                                                                                                             Project: Section 5-11: (50%) x/10 
##                                                                                                                                                                                                                                                                                    7.77867921 
##                                                                                                                                                                                                                                                                Project: Section 12: (30%) x/5 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                              Project: (10%): x/30 x 100 TOTAL 
##                                                                                                                                                                                                                                                                                  406.09273663 
##                                                                                                                                                                                                                                                       Quiz 1 on Concept 1 (Introduction) x/32 
##                                                                                                                                                                                                                                                                                   42.31862986 
##                                                                                                                                                                                                                                                             Quiz 3 on Concept 3 (Linear) x/15 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                         Quiz 4 on Concept 4 (Non-Linear) x/22 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                       Quiz 5 on Concept 5 (Dashboarding) x/10 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                               Quizzes and  Bonus Marks (7%): x/79 x 100 TOTAL 
##                                                                                                                                                                                                                                                                                  272.04806537 
##                                                                                                                                                                                                                                                 Lab 1 - 2.c. - (Simple Linear Regression) x/5 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                Lab 2 - 2.e. -  (Linear Regression using Gradient Descent) x/5 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                               Lab 3 - 2.g. - (Logistic Regression using Gradient Descent) x/5 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                             Lab 4 - 2.h. - (Linear Discriminant Analysis) x/5 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                          Lab 5 - Chart JS Dashboard Setup x/5 
##                                                                                                                                                                                                                                                                                    5.44158416 
##                                                                                                                                                                                                                                                                      Lab Work (7%) x/25 x 100 
##                                                                                                                                                                                                                                                                                  372.61070416 
##                                                                                                                                                                                                                                                                        CAT 1 (8%): x/38 x 100 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                       CAT 2 (8%): x/100 x 100 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                    Attendance Waiver Granted: 1 = Yes, 0 = No 
##                                                                                                                                                                                                                                                                                    0.04752475 
##                                                                                                                                                                                                                                                                        Absenteeism Percentage 
##                                                                                                                                                                                                                                                                                   82.60409695 
##                                                                                                                                                                                                                                                                  Coursework TOTAL: x/40 (40%) 
##                                                                                                                                                                                                                                                                                   38.73827016 
##                                                                                                                                                                                                                                                                              EXAM: x/60 (60%) 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                        TOTAL = Coursework TOTAL + EXAM (100%) 
##                                                                                                                                                                                                                                                                                  247.28598699
```

#### Measures the kurtosis {#measures-the-kurtosis}

This code calculates the kurtosis for the selected columns, which indicates the degree of data distribution's peakedness or tail heaviness.The Kurtosis informs you of how often outliers occur in the results

``` r
if (!is.element("e1071", installed.packages()[, 1])) {
    install.packages("e1071", dependencies = TRUE)
}
require("e1071")
```

```         
## Loading required package: e1071
```

``` r
sapply(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset[c(2, 3, 4, 5, 6,
    7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26,
    27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46,
    47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66,
    67, 68, 69, 70, 71, 72, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88,
    89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)], kurtosis, type = 2)
```

```         
##                                                                                                                                                                                                                                                                                        gender 
##                                                                                                                                                                                                                                                                                   -1.94596903 
##                                                                                                                                                                                                                                                                                           YOB 
##                                                                                                                                                                                                                                                                                    0.30231417 
##                                                                                                                                                                                                                                                                            regret_choosing_bi 
##                                                                                                                                                                                                                                                                                   47.91857974 
##                                                                                                                                                                                                                                                                                   drop_bi_now 
##                                                                                                                                                                                                                                                                                   47.91857974 
##                                                                                                                                                                                                                                                                                     motivator 
##                                                                                                                                                                                                                                                                                   -0.60160141 
##                                                                                                                                                                                                                                                                   read_content_before_lecture 
##                                                                                                                                                                                                                                                                                   -0.03607299 
##                                                                                                                                                                                                                                                                     anticipate_test_questions 
##                                                                                                                                                                                                                                                                                    0.51636498 
##                                                                                                                                                                                                                                                                   answer_rhetorical_questions 
##                                                                                                                                                                                                                                                                                   -0.35715654 
##                                                                                                                                                                                                                                                                      find_terms_I_do_not_know 
##                                                                                                                                                                                                                                                                                    0.61194580 
##                                                                                                                                                                                                                                                            copy_new_terms_in_reading_notebook 
##                                                                                                                                                                                                                                                                                   -0.17191745 
##                                                                                                                                                                                                                                                                  take_quizzes_and_use_results 
##                                                                                                                                                                                                                                                                                    0.36241266 
##                                                                                                                                                                                                                                                                     reorganise_course_outline 
##                                                                                                                                                                                                                                                                                   -0.65017340 
##                                                                                                                                                                                                                                                                   write_down_important_points 
##                                                                                                                                                                                                                                                                                    0.17166163 
##                                                                                                                                                                                                                                                                            space_out_revision 
##                                                                                                                                                                                                                                                                                   -0.59532396 
##                                                                                                                                                                                                                                                                       studying_in_study_group 
##                                                                                                                                                                                                                                                                                   -1.02640034 
##                                                                                                                                                                                                                                                                         schedule_appointments 
##                                                                                                                                                                                                                                                                                    0.89686155 
##                                                                                                                                                                                                                                                                                 goal_oriented 
##                                                                                                                                                                                                                                                                                    0.37399696 
##                                                                                                                                                                                                                                                                             spaced_repetition 
##                                                                                                                                                                                                                                                                                   -0.44434827 
##                                                                                                                                                                                                                                                                     testing_and_active_recall 
##                                                                                                                                                                                                                                                                                    0.03411300 
##                                                                                                                                                                                                                                                                                  interleaving 
##                                                                                                                                                                                                                                                                                   -0.25131591 
##                                                                                                                                                                                                                                                                                  categorizing 
##                                                                                                                                                                                                                                                                                    0.08540878 
##                                                                                                                                                                                                                                                                       retrospective_timetable 
##                                                                                                                                                                                                                                                                                   -0.72795358 
##                                                                                                                                                                                                                                                                                 cornell_notes 
##                                                                                                                                                                                                                                                                                   -1.00513449 
##                                                                                                                                                                                                                                                                                          sq3r 
##                                                                                                                                                                                                                                                                                   -1.16785545 
##                                                                                                                                                                                                                                                                                       commute 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                    study_time 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                              repeats_since_Y1 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                  paid_tuition 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                  free_tuition 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                              extra_curricular 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                       sports_extra_curricular 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                             exercise_per_week 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                      meditate 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                          pray 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                      internet 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                        laptop 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                          family_relationships 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                   friendships 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                        romantic_relationships 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                             spiritual_wellnes 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                            financial_wellness 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                        health 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                       day_out 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                     night_out 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                          alcohol_or_narcotics 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                        mentor 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                               mentor_meetings 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                              A - 1. I am enjoying the subject 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                          A - 2. Classes start and end on time 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                               A - 3. The learning environment is participative, involves learning by doing and is group-based 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                             A - 4. The subject content is delivered according to the course outline and meets my expectations 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                           A - 5. The topics are clear and logically developed 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                             A - 6. I am developing my oral and writing skills 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                            A - 7. I am developing my reflective and critical reasoning skills 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                       A - 8. The assessment methods are assisting me to learn 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                            A - 9. I receive relevant feedback 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                             A - 10. I read the recommended readings and notes 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                   A - 11. I use the eLearning material posted 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                         B - 1. Concept 1 of 6: Principles of Business Intelligence and the DataOps Philosophy 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                             B - 2. Concept 3 of 6: Linear Algorithms for Predictive Analytics 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                     C - 2. Quizzes at the end of each concept 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                           C - 3. Lab manuals that outline the steps to follow during the labs 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                           C - 4. Required lab work submissions at the end of each lab manual that outline the activity to be done on your own 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                          C - 5. Supplementary videos to watch 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                    C - 6. Supplementary podcasts to listen to 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                          C - 7. Supplementary content to read 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                        C - 8. Lectures slides 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                            C - 9. Lecture notes on some of the lecture slides 
##                                                                                                                                                                                                                                                                                            NA 
## C - 10. The quality of the lectures given (quality measured by the breadth (the full span of knowledge of a subject) and depth (the extent to which specific topics are focused upon, amplified, and explored) of learning - NOT quality measured by how fun/comical/lively the lectures are) 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                              C - 11. The division of theory and practice such that most of the theory is done during the recorded online classes and most of the practice is done during the physical classes 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                      C - 12. The recordings of online classes 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                              Average Course Evaluation Rating 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                     Average Level of Learning Attained Rating 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                             Average Pedagogical Strategy Effectiveness Rating 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                              Project: Section 1-4: (20%) x/10 
##                                                                                                                                                                                                                                                                                    6.92854586 
##                                                                                                                                                                                                                                                             Project: Section 5-11: (50%) x/10 
##                                                                                                                                                                                                                                                                                    0.53846956 
##                                                                                                                                                                                                                                                                Project: Section 12: (30%) x/5 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                              Project: (10%): x/30 x 100 TOTAL 
##                                                                                                                                                                                                                                                                                    2.36252951 
##                                                                                                                                                                                                                                                       Quiz 1 on Concept 1 (Introduction) x/32 
##                                                                                                                                                                                                                                                                                   -0.12582832 
##                                                                                                                                                                                                                                                             Quiz 3 on Concept 3 (Linear) x/15 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                         Quiz 4 on Concept 4 (Non-Linear) x/22 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                       Quiz 5 on Concept 5 (Dashboarding) x/10 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                               Quizzes and  Bonus Marks (7%): x/79 x 100 TOTAL 
##                                                                                                                                                                                                                                                                                   -0.49809829 
##                                                                                                                                                                                                                                                 Lab 1 - 2.c. - (Simple Linear Regression) x/5 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                Lab 2 - 2.e. -  (Linear Regression using Gradient Descent) x/5 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                               Lab 3 - 2.g. - (Logistic Regression using Gradient Descent) x/5 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                             Lab 4 - 2.h. - (Linear Discriminant Analysis) x/5 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                          Lab 5 - Chart JS Dashboard Setup x/5 
##                                                                                                                                                                                                                                                                                   -1.39327840 
##                                                                                                                                                                                                                                                                      Lab Work (7%) x/25 x 100 
##                                                                                                                                                                                                                                                                                    1.36192517 
##                                                                                                                                                                                                                                                                        CAT 1 (8%): x/38 x 100 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                       CAT 2 (8%): x/100 x 100 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                    Attendance Waiver Granted: 1 = Yes, 0 = No 
##                                                                                                                                                                                                                                                                                   16.09680994 
##                                                                                                                                                                                                                                                                        Absenteeism Percentage 
##                                                                                                                                                                                                                                                                                    1.32500561 
##                                                                                                                                                                                                                                                                  Coursework TOTAL: x/40 (40%) 
##                                                                                                                                                                                                                                                                                   -0.23665994 
##                                                                                                                                                                                                                                                                              EXAM: x/60 (60%) 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                        TOTAL = Coursework TOTAL + EXAM (100%) 
##                                                                                                                                                                                                                                                                                    0.38148565
```

#### Measures the skewness {#measures-the-skewness}

This code calculates the skewness for the selected columns, indicating the asymmetry in the data distribution. Positive skewness indicates a right-skewed distribution, while negative skewness suggests a left-skewed distribution 1. Skewness between -0.4 and 0.4 (inclusive) implies that there is no skew in the distribution of results; the distribution of results is symmetrical; it is a normal distribution. 2. Skewness above 0.4 implies a positive skew; a right-skewed distribution. 3. Skewness below -0.4 implies a negative skew; a left-skewed distribution

``` r
sapply(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset[c(2, 3, 4, 5, 6,
    7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26,
    27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46,
    47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66,
    67, 68, 69, 70, 71, 72, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88,
    89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)], skewness, type = 2)
```

```         
##                                                                                                                                                                                                                                                                                        gender 
##                                                                                                                                                                                                                                                                                   -0.30490779 
##                                                                                                                                                                                                                                                                                           YOB 
##                                                                                                                                                                                                                                                                                   -0.54358864 
##                                                                                                                                                                                                                                                                            regret_choosing_bi 
##                                                                                                                                                                                                                                                                                    6.99785004 
##                                                                                                                                                                                                                                                                                   drop_bi_now 
##                                                                                                                                                                                                                                                                                    6.99785004 
##                                                                                                                                                                                                                                                                                     motivator 
##                                                                                                                                                                                                                                                                                   -1.18773312 
##                                                                                                                                                                                                                                                                   read_content_before_lecture 
##                                                                                                                                                                                                                                                                                    0.03938034 
##                                                                                                                                                                                                                                                                     anticipate_test_questions 
##                                                                                                                                                                                                                                                                                   -0.70731706 
##                                                                                                                                                                                                                                                                   answer_rhetorical_questions 
##                                                                                                                                                                                                                                                                                   -0.32097933 
##                                                                                                                                                                                                                                                                      find_terms_I_do_not_know 
##                                                                                                                                                                                                                                                                                   -0.81939607 
##                                                                                                                                                                                                                                                            copy_new_terms_in_reading_notebook 
##                                                                                                                                                                                                                                                                                   -0.64953356 
##                                                                                                                                                                                                                                                                  take_quizzes_and_use_results 
##                                                                                                                                                                                                                                                                                   -0.91362634 
##                                                                                                                                                                                                                                                                     reorganise_course_outline 
##                                                                                                                                                                                                                                                                                   -0.34506777 
##                                                                                                                                                                                                                                                                   write_down_important_points 
##                                                                                                                                                                                                                                                                                   -0.83039578 
##                                                                                                                                                                                                                                                                            space_out_revision 
##                                                                                                                                                                                                                                                                                   -0.20823287 
##                                                                                                                                                                                                                                                                       studying_in_study_group 
##                                                                                                                                                                                                                                                                                    0.44207098 
##                                                                                                                                                                                                                                                                         schedule_appointments 
##                                                                                                                                                                                                                                                                                    1.11488417 
##                                                                                                                                                                                                                                                                                 goal_oriented 
##                                                                                                                                                                                                                                                                                    1.53850113 
##                                                                                                                                                                                                                                                                             spaced_repetition 
##                                                                                                                                                                                                                                                                                   -0.28341799 
##                                                                                                                                                                                                                                                                     testing_and_active_recall 
##                                                                                                                                                                                                                                                                                   -0.41852224 
##                                                                                                                                                                                                                                                                                  interleaving 
##                                                                                                                                                                                                                                                                                    0.13802647 
##                                                                                                                                                                                                                                                                                  categorizing 
##                                                                                                                                                                                                                                                                                   -0.39152323 
##                                                                                                                                                                                                                                                                       retrospective_timetable 
##                                                                                                                                                                                                                                                                                   -0.01736321 
##                                                                                                                                                                                                                                                                                 cornell_notes 
##                                                                                                                                                                                                                                                                                   -0.15651360 
##                                                                                                                                                                                                                                                                                          sq3r 
##                                                                                                                                                                                                                                                                                   -0.12237993 
##                                                                                                                                                                                                                                                                                       commute 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                    study_time 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                              repeats_since_Y1 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                  paid_tuition 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                  free_tuition 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                              extra_curricular 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                       sports_extra_curricular 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                             exercise_per_week 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                      meditate 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                          pray 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                      internet 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                        laptop 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                          family_relationships 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                   friendships 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                        romantic_relationships 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                             spiritual_wellnes 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                            financial_wellness 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                        health 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                       day_out 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                     night_out 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                          alcohol_or_narcotics 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                                        mentor 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                               mentor_meetings 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                              A - 1. I am enjoying the subject 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                          A - 2. Classes start and end on time 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                               A - 3. The learning environment is participative, involves learning by doing and is group-based 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                             A - 4. The subject content is delivered according to the course outline and meets my expectations 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                           A - 5. The topics are clear and logically developed 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                             A - 6. I am developing my oral and writing skills 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                            A - 7. I am developing my reflective and critical reasoning skills 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                       A - 8. The assessment methods are assisting me to learn 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                            A - 9. I receive relevant feedback 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                             A - 10. I read the recommended readings and notes 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                   A - 11. I use the eLearning material posted 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                         B - 1. Concept 1 of 6: Principles of Business Intelligence and the DataOps Philosophy 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                             B - 2. Concept 3 of 6: Linear Algorithms for Predictive Analytics 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                     C - 2. Quizzes at the end of each concept 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                           C - 3. Lab manuals that outline the steps to follow during the labs 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                           C - 4. Required lab work submissions at the end of each lab manual that outline the activity to be done on your own 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                          C - 5. Supplementary videos to watch 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                    C - 6. Supplementary podcasts to listen to 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                          C - 7. Supplementary content to read 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                        C - 8. Lectures slides 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                            C - 9. Lecture notes on some of the lecture slides 
##                                                                                                                                                                                                                                                                                            NA 
## C - 10. The quality of the lectures given (quality measured by the breadth (the full span of knowledge of a subject) and depth (the extent to which specific topics are focused upon, amplified, and explored) of learning - NOT quality measured by how fun/comical/lively the lectures are) 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                              C - 11. The division of theory and practice such that most of the theory is done during the recorded online classes and most of the practice is done during the physical classes 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                      C - 12. The recordings of online classes 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                              Average Course Evaluation Rating 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                     Average Level of Learning Attained Rating 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                             Average Pedagogical Strategy Effectiveness Rating 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                              Project: Section 1-4: (20%) x/10 
##                                                                                                                                                                                                                                                                                   -2.47918217 
##                                                                                                                                                                                                                                                             Project: Section 5-11: (50%) x/10 
##                                                                                                                                                                                                                                                                                   -1.26267471 
##                                                                                                                                                                                                                                                                Project: Section 12: (30%) x/5 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                              Project: (10%): x/30 x 100 TOTAL 
##                                                                                                                                                                                                                                                                                   -1.30068265 
##                                                                                                                                                                                                                                                       Quiz 1 on Concept 1 (Introduction) x/32 
##                                                                                                                                                                                                                                                                                    0.71020660 
##                                                                                                                                                                                                                                                             Quiz 3 on Concept 3 (Linear) x/15 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                         Quiz 4 on Concept 4 (Non-Linear) x/22 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                       Quiz 5 on Concept 5 (Dashboarding) x/10 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                               Quizzes and  Bonus Marks (7%): x/79 x 100 TOTAL 
##                                                                                                                                                                                                                                                                                    0.37694131 
##                                                                                                                                                                                                                                                 Lab 1 - 2.c. - (Simple Linear Regression) x/5 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                Lab 2 - 2.e. -  (Linear Regression using Gradient Descent) x/5 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                               Lab 3 - 2.g. - (Logistic Regression using Gradient Descent) x/5 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                             Lab 4 - 2.h. - (Linear Discriminant Analysis) x/5 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                          Lab 5 - Chart JS Dashboard Setup x/5 
##                                                                                                                                                                                                                                                                                   -0.79213536 
##                                                                                                                                                                                                                                                                      Lab Work (7%) x/25 x 100 
##                                                                                                                                                                                                                                                                                   -1.17909334 
##                                                                                                                                                                                                                                                                        CAT 1 (8%): x/38 x 100 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                                       CAT 2 (8%): x/100 x 100 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                    Attendance Waiver Granted: 1 = Yes, 0 = No 
##                                                                                                                                                                                                                                                                                    4.21644331 
##                                                                                                                                                                                                                                                                        Absenteeism Percentage 
##                                                                                                                                                                                                                                                                                    0.65243781 
##                                                                                                                                                                                                                                                                  Coursework TOTAL: x/40 (40%) 
##                                                                                                                                                                                                                                                                                   -0.43640028 
##                                                                                                                                                                                                                                                                              EXAM: x/60 (60%) 
##                                                                                                                                                                                                                                                                                            NA 
##                                                                                                                                                                                                                                                        TOTAL = Coursework TOTAL + EXAM (100%) 
##                                                                                                                                                                                                                                                                                   -0.47138413
```

#### Measures the covariance {#measures-the-covariance}

This code calculates the covariance matrix, which measures the degree of linear association or dependence between pairs of selected variables. The resulting covariance matrix is then displayed

``` r
X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_cov <- cov(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset[c(2,
    3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23,
    24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43,
    44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63,
    64, 65, 66, 67, 68, 69, 70, 71, 72, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85,
    86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)])
View(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_cov)
```

#### Measures the correlation {#measures-the-correlation}

This code calculates the correlation matrix, which measures the strength and direction of linear relationships between pairs of selected variables. The resulting correlation matrix is then displayed.

``` r
X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_cor <- cor(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset[c(2,
    3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23,
    24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43,
    44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63,
    64, 65, 66, 67, 68, 69, 70, 71, 72, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85,
    86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)])
View(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_cor)
```

# Inferential Statistics {#inferential-statistics}
