# main_script.R


# Make sure working directory is the same as the script location (implicitly handled in GitHub Actions)
# Print working directory
cat("Working directory:", getwd(), "\n")

# Set up and confirm output folder
output_dir <- file.path(getwd(), "outputs/script251")
dir.create(output_dir, recursive = TRUE, showWarnings = FALSE)
cat("Created directory:", output_dir, "\n")

# Confirm contents before saving
print("Files in 'outputs' before saving:")
print(list.files("outputs", recursive = TRUE))

# Save dummy test file just to verify
writeLines("test", file.path(output_dir, "test.txt"))




# Load the helper script
source("RD_and_DT_Algorithm_copy.R")  # Ensure this file is in the same directory

lambda <- 2


results_1 <- data.frame(
  Run = integer(),
  N_t = integer(),
  Length = numeric(),
  Cost = numeric(),
  NumDisambigs = integer()
)

cost <- 5

for (i in 1:100) {
  set.seed(400+i)
  obs_gen_para <- c(gamma = 0.3, d = 5, noPoints = 50, no_c = 25, no_o = 25)
  result <- MACS_Alg_M(obs_gen_para, kappa = 7, lambda, cost)

  results_1[i, ] <- list(
    Run = i
    N_t = 25,
    Length = result$Length_total,
    Cost = result$Cost_total,
    NumDisambigs = length(result$Disambiguate_state)
    
  }
}

saveRDS(results_1, file.path(output_dir, "data_25_1_1.rds"))







results_2 <- data.frame(
  Run = integer(),
  N_t = integer(),
  Length = numeric(),
  Cost = numeric(),
  NumDisambigs = integer()
)

cost <- 5

for (i in 1:100) {
  set.seed(400+i)
  obs_gen_para <- c(gamma = 0.3, d = 5, noPoints = 75, no_c = 25, no_o = 50)
  result <- MACS_Alg_M(obs_gen_para, kappa = 7, lambda, cost)

  results_1[i, ] <- list(
    Run = i
    N_t = 50,
    Length = result$Length_total,
    Cost = result$Cost_total,
    NumDisambigs = length(result$Disambiguate_state)
    
  }
}

saveRDS(results_2, file.path(output_dir, "data_25_1_2.rds"))









results_3 <- data.frame(
  Run = integer(),
  N_t = integer(),
  Length = numeric(),
  Cost = numeric(),
  NumDisambigs = integer()
)


for (i in 1:100) {
  set.seed(400+i)
  obs_gen_para <- c(gamma = 0.3, d = 5, noPoints = 100, no_c = 25, no_o = 75)
  result <- MACS_Alg_M(obs_gen_para, kappa = 7, lambda, cost)

  results_3[i, ] <- list(
    Run = i
    N_t = 75,
    Length = result$Length_total,
    Cost = result$Cost_total,
    NumDisambigs = length(result$Disambiguate_state)
    
  }
}

saveRDS(results_3, file.path(output_dir, "data_25_1_3.rds"))




results_4 <- data.frame(
  Run = integer(),
  N_t = integer(),
  Length = numeric(),
  Cost = numeric(),
  NumDisambigs = integer()
)


for (i in 1:100) {
  set.seed(400+i)
  obs_gen_para <- c(gamma = 0.3, d = 5, noPoints = 125, no_c = 25, no_o = 100)
  result <- MACS_Alg_M(obs_gen_para, kappa = 7, lambda, cost)

  results_4[i, ] <- list(
    Run = i
    N_t = 100,
    Length = result$Length_total,
    Cost = result$Cost_total,
    NumDisambigs = length(result$Disambiguate_state)
    
  }
}

saveRDS(results_4, file.path(output_dir, "data_25_1_4.rds"))





results_5 <- data.frame(
  Run = integer(),
  N_t = integer(),
  Length = numeric(),
  Cost = numeric(),
  NumDisambigs = integer()
)


for (i in 1:100) {
  set.seed(400+i)
  obs_gen_para <- c(gamma = 0.3, d = 5, noPoints = 150, no_c = 25, no_o = 125)
  result <- MACS_Alg_M(obs_gen_para, kappa = 7, lambda, cost)

  results_5[i, ] <- list(
    Run = i
    N_t = 125,
    Length = result$Length_total,
    Cost = result$Cost_total,
    NumDisambigs = length(result$Disambiguate_state)
    
  }
}

saveRDS(results_5, file.path(output_dir, "data_25_1_5.rds"))







results_6 <- data.frame(
  Run = integer(),
  N_t = integer(),
  Length = numeric(),
  Cost = numeric(),
  NumDisambigs = integer()
)


for (i in 1:100) {
  set.seed(400+i)
  obs_gen_para <- c(gamma = 0.3, d = 5, noPoints = 175, no_c = 25, no_o = 150)
  result <- MACS_Alg_M(obs_gen_para, kappa = 7, lambda, cost)

  results_6[i, ] <- list(
    Run = i
    N_t = 150,
    Length = result$Length_total,
    Cost = result$Cost_total,
    NumDisambigs = length(result$Disambiguate_state)
    
  }
}

saveRDS(results_6, file.path(output_dir, "data_25_1_6.rds"))






results_7 <- data.frame(
  Run = integer(),
  N_t = integer(),
  Length = numeric(),
  Cost = numeric(),
  NumDisambigs = integer()
)


for (i in 1:100) {
  set.seed(400+i)
  obs_gen_para <- c(gamma = 0.3, d = 5, noPoints = 200, no_c = 25, no_o = 175)
  result <- MACS_Alg_M(obs_gen_para, kappa = 7, lambda, cost)

  results_7[i, ] <- list(
    Run = i
    N_t = 175,
    Length = result$Length_total,
    Cost = result$Cost_total,
    NumDisambigs = length(result$Disambiguate_state)
    
  }
}

saveRDS(results_7, file.path(output_dir, "data_25_1_7.rds"))


results_8 <- data.frame(
  Run = integer(),
  N_t = integer(),
  Length = numeric(),
  Cost = numeric(),
  NumDisambigs = integer()
)


for (i in 1:100) {
  set.seed(400+i)
  obs_gen_para <- c(gamma = 0.3, d = 5, noPoints = 225, no_c = 25, no_o = 200)
  result <- MACS_Alg_M(obs_gen_para, kappa = 7, lambda, cost)

  results_8[i, ] <- list(
    Run = i
    N_t = 200,
    Length = result$Length_total,
    Cost = result$Cost_total,
    NumDisambigs = length(result$Disambiguate_state)
    
  }
}

saveRDS(results_8, file.path(output_dir, "data_25_1_8.rds"))




# Combine all results into one table
results <- rbind(results_1, results_2)

# Format output
results_out <- data.frame(
  Index = paste0('"', 1:nrow(results), '"'),  # Quoted index
  results[, c("N_t", "Length", "Cost", "NumDisambigs")]  # Make sure column names match
)

# Define the custom header (space-separated, quoted)
header <- '"n_t" "length" "cost" "number_of_disambiguations"'

# Define output path
txt_path <- file.path(output_dir, "results_ACS1_mixed.txt")

# Write header manually
writeLines(header, txt_path)

# Append data
write.table(
  results_out,
  file = txt_path,
  append = TRUE,
  row.names = FALSE,
  col.names = FALSE,
  quote = FALSE,
  sep = " "
)

cat("✅ Text results saved to:", txt_path, "\n")
