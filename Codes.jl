using CSV
# using DataFrames
# using Dates
# using Plots

# using Pkg
Pkg.add("CSV")
# Pkg.add("DataFrames")
# Pkg.add("Dates")
# Pkg.add("Plots")


# Step 1: Specify the file location
# URL = "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_global.csv"

# # Step 2: Specify the path
# path = joinpath(pwd(), "confirmed.csv")

# # Step 3: Download the file
# download(URL, path)

# # Step 4: Reading the CSV file into a DataFrame
# df = CSV.File(path) |> DataFrame
