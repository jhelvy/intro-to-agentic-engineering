set.seed(5678)

# Load libraries and options
library(knitr)
library(here)
library(tidyverse)
library(kableExtra)
library(lubridate)

options(dplyr.width = Inf)
options(knitr.kable.NA = '')

knitr::opts_chunk$set(
    message = FALSE,
    warning = FALSE,
    comment    = "#>",
    fig.retina = 3,
    fig.width  = 6,
    fig.height = 4,
    fig.show = "hold",
    fig.align  = "center",
    fig.path   = "figs/"
)

make_rubric <- function(rubric) {
  rubric %>%
    mutate(description = paste0("<b>", points, '</b><br>', description)) %>%
    select(-points) %>%
    spread(key = rating, value = description) %>%
    select(-category) %>%
    rename(Category = label) %>%
    arrange(order) %>%
    select(-order) %>%
    select(-maxPoints) %>%
    kable(format = 'html', escape = FALSE) %>%
    kable_styling(bootstrap_options = "striped")
}

# Load the course schedule from schedule.csv and build the html-formatted
# columns used by schedule.qmd and the assignment / project fragments.

get_schedule <- function() {

    # Get raw schedule
    df <- read_csv(here::here('schedule.csv'))

    # Class vars (link to slides page when a stub is provided)
    class <- df %>%
        mutate(
            description_class = ifelse(
                is.na(description_class), "", description_class),
            class = ifelse(
                is.na(stub_class),
                paste0("<b>", name_class, "</b><br>", description_class),
                paste0(
                    '<a href="class/', n_class, "-", stub_class, '.html"><b>',
                    name_class, "</b></a><br> ", description_class))
        ) %>%
        select(week, ends_with('class'))

    # Individual build vars
    assignments <- df %>%
        mutate(
            due_assign = format(due_assign, format = "%b %d"),
            assign = ifelse(
                is.na(due_assign),
                name_assign,
                paste0(
                    '<a href="hw/', n_assign, "-", stub_assign,
                    '.html"><b>Build ', n_assign, "</b></a><br>Due: ",
                    due_assign))
        ) %>%
        select(week, ends_with('assign'))

    # Team project vars
    project <- df %>%
        mutate(
            due_project = format(due_project, format = "%b %d"),
            project = ifelse(
                is.na(due_project),
                "",
                paste0(
                    '<a href="project/', n_project, "-", stub_project,
                    '.html"><b>', name_project, "</b></a><br>Due: ",
                    due_project))
        ) %>%
        select(week, ends_with('project'))

    # Final schedule data frame
    schedule <- df %>%
        select(week, date, theme) %>%
        mutate(date_md = format(date, format = "%b %d")) %>%
        left_join(class, by = "week") %>%
        left_join(assignments, by = "week") %>%
        left_join(project, by = "week") %>%
        ungroup()

    return(schedule)
}
