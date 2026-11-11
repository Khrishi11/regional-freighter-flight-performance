# Regional Freighter: Flight Performance and POH

Individual coursework for the Flight module, UWE Bristol (2023). Performance analysis of a twin engine regional air freight aircraft (MTOW 16,020 kg), written up as a Pilot's Operating Handbook (POH).

## What was analysed
- Centre of gravity envelope across the weight range
- Take off distance (ground run plus airborne phase) from sea level to 8,000 ft
- Rate of climb against altitude
- Cruise performance from 12,000 ft to 20,000 ft using power available vs power required curves
- Fuel consumption, landing distance and endurance profile
- Dynamic stability: **phugoid** and **Dutch roll** modes at 12,000 ft modelled in Simulink

## Files
| File | Description |
|---|---|
| `matlab/Flight.mlx` | Main performance live script (all sections above) |
| `matlab/Flight_POH_Calculations_Tables.mlx` | Generates the tables used in the POH |
| `matlab/Flight_POH.m`, `matlab/cog_limits.m`, `matlab/takeoff_distance.m` | Supporting scripts |
| `matlab/assessments/` | Two shorter MATLAB assessments from the module |
| `simulink/Phugoid.slx`, `simulink/Dutch_Roll.slx` | Longitudinal and lateral dynamic mode models |
| `docs/POH.pdf` | Final Pilot's Operating Handbook |
| `docs/Flight_Presentation.pdf` | Presentation of results |
| `docs/Flight_Sim_Test_Card.xlsx` | Test card from the flight simulator session |

## Tools
MATLAB, Simulink, aircraft performance and stability theory
