# 1. Declare and assign the variables here:
Name_space_shuttle = "Determination"
Shuttle_Speed_mph = 17_500
Distance_to_Mars_km = 225_000_000
Distance_to_Moon_km = 384_400
Miles_per_km = 0.621

# 2. Use print() to print the 'type' each variable. Print one item per line.
print(type(Name_space_shuttle))
print(type(Shuttle_Speed_mph))
print(type(Distance_to_Mars_km))
print(type(Distance_to_Moon_km))
print(type(Miles_per_km))

# Code your solution to exercises 3 and 4 here:
Miles_to_Mars = Distance_to_Mars_km * Miles_per_km
Hours_to_Mars = Miles_to_Mars / Shuttle_Speed_mph
Days_to_Mars = Hours_to_Mars / 24
print(f"{Name_space_shuttle} will take {Days_to_Mars} days to reach Mars.")

# Code your solution to exercise 5 here
Miles_to_Moon = Distance_to_Moon_km * Miles_per_km
Hours_to_Moon = Miles_to_Moon / Shuttle_Speed_mph
Days_to_Moon = Hours_to_Moon / 24
print(f"{Name_space_shuttle} will take {Days_to_Moon} days to reach the Moon.")