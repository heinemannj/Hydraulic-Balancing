# Outside temperature and weather-compensated return flow temperature heating control

By a supply flow temperature heating control, there is only little feedback about what is actually being consumed by the heating surfaces.

![image](https://github.com/heinemannj/Hydraulic-Balancing/assets/3251642/cafa5bb7-554e-4a2e-a965-252028d84502)

With return flow temperature heating control, the feedback comes from the heating surfaces.

- The heating water comes back colder if more energy is consumed and the heating control adjusts accordingly.
- The heating water comes back warmer when less energy is consumed.
- With this control method, the return flow becomes the reference variable.
- Continuous monitoring of the return flow temperature enables conclusions to be drawn about the heat requirements of the heating system or the house.

![image](https://github.com/heinemannj/Hydraulic-Balancing/assets/3251642/e8765d77-561e-47ea-854f-a3b7b4308eae)

![image](https://github.com/heinemannj/Hydraulic-Balancing/assets/3251642/938bd45e-c12c-4ef2-91ac-22d82a385685)

## Return flow target temperature, Return flow heating curve

The heating (heat producer) measures the outside temperature via a sensor and uses the supply flow heating curve to calculate a target supply flow temperature for each heating group.
Depending on this target supply flow temperature, the target return flow temperature is determined by calculating the return flow heating curve.

- Depending on the outside temperature, a target supply flow temperature is calculated for the respective heating group (heating circuit) by using a supply flow heating curve.
  The calculated target supply flow temperature can be limited with an adjustable minimum and maximum value.
- The return flow heating curve is a supply flow heating curve reduced by the spread.
  Due to different pipe lengths and flow rates, heating circuits react differently.
  Therefore a hydraulic and/or thermal balancing is mandatory and must be carried out before, otherwise trustable spread calculation will fail.
- Calculation of the spread and the resulting target return flow temperature for each heating group (heating circuit).

![image](https://github.com/heinemannj/Hydraulic-Balancing/assets/3251642/3e1ec560-4650-4f41-bf6f-5d031d97b5c0)

![image](https://github.com/heinemannj/Hydraulic-Balancing/assets/3251642/c9090cd1-e96f-426e-b914-c783701e2f3b)

## Return flow temperature heating control

When the return flow temperature approaches its setpoint, it can be assumed that the rooms are warm and that each room has reached the optimal return flow temperature to achieve and maintain the desired room temperature.

- The return flow temperature of the heating group is limited to a calculated maximum return flow temperature.
  The valve is now closed in a modulating manner so that the return flow temperature decreases.
  If the energy consumption changes, the modulation can be changed for modulating burners.
  With modulating burners this is the most ingenious solution, so burners run all day long.
- If the measured return flow temperature is higher than the calculated maximum return flow temperature, a compensation value is calculated using a PID controller and the heating (heat producer) supply flow temperature of the heating group is reduced.
- If the return flow reaches the switch-off temperature, the burner is switched off.
- The cooling phase of the heating water begins.
- The supply flow temperature drops very quickly to the temperature level of the return flow.
- When the return flow temperature switch-on point is reached, the burner can start.
- For single-stage burners, it extends the running times and prevents frequent burner starts (cycling).

## Combined heating control

The combined heating control uses a room temperature sensor in addition to the return flow sensors.
In combined control, the heating (heat producer) is only switched off when the desired room temperature has actually been reached.

If the return flow temperature increases slowly, a lot of heat is being absorbed by the heating system.
- The valves are open.
- There is less external heat.

If the return flow temperature rises quickly, the heat demand of the heating system is lower.
- Some valves are closed here because external heat is present.

If the return flow temperature falls quickly, the heating system requires a lot of heat.
- The valves are open.

In general, a distinction can be made between the following two cases:

1. Generally too high/low temperature
   Can be corrected via the target temperature of the room and, if necessary, changing the offset of the heating curve.
2. Temperatures changing too slowly/quickly
   Too slow/quick adaptation to the outside temperature can be corrected by changing the slope of the heating curve.

A return flow temperature heating control has significant energy saving potential because it dynamically adapts to the actual energy consumption.

Energy savings are achieved through the
- Reduction of heating cycles (on/off of the heating (heat producer)
- Lowering the supply flow temperature level
- Use of internal and external heat gains

Since this control principle is generally unknown or not understood, it is rarely used.
The behavior of the heating surfaces, the water volume flows and the correct regulation are different.

**Important**:

Return flow temperature heating control principle only works if a hydraulic calibration and later a thermal calibration have been carried out.

# Hydraulic Balancing

The hydraulic balancing for underfloor heating described below is carried out **according to a return flow temperature method**.

By **balancing all heating loops to the same return flow medium temperature**, a very precise hydraulic balancing is possible,
which reflects the actual conditions of the heating system, taking into account all building and heating circuit influencing factors.

By continuously analyzing the curves of outside, room, flow and return temperatures and taking weather forecast data into account, the optimal floor temperature is calculated at any time.
This information is then used in regular operation as the basis for a constantly adapting **dynamic hydraulic balancing**.

## Problems with conventional calculation methods / balancing procedures / system setups

- Particularly in existing buildings, the pipe lengths, pipe cross-sections and installation distances required for an accurate calculation can usually only be estimated
- Temperature and pressure losses in the distribution system are generally not adequately taken into account

Through the use of

- Fixed flow limiter
- Conventional on/off actuators/valves

a conventional static hydraulic balancing is always **designed only for a single operating situation**:

- **FULL LOAD for ALL rooms**.

However, this only very rarely reflects reality.

## Dynamic Hydraulic Balancing

A **dynamic hydraulic balancing** dynamically adapts the hydraulic balancing for each operating situation.
By using **infinitely adjustable actuators/valves**, the flow rates are dynamically **adjusted for every operating situation**.

If the operating situation allows it, actuators can also be opened beyond the value specified in this static adjustment.
In most operating situations (full load is very rare!), rooms can be heated up many times faster, pump outputs can be dimensioned lower and the flow temperature can be significantly reduced.

## Prerequisites for starting the hydraulic balancing
### Same room temperature in all rooms followed by a cooling phase

The most important prerequisite are suitable initial conditions of the underfloor heating.

When the hydraulic balancing starts, the underfloor heating must be at the same temperature level as possible in all rooms.
Small differences can be compensated for during hydraulic balancing.
However, it does NOT work to compare rooms that have not been heated for days/weeks with rooms that have been constantly heated.

Experience has shown that the following procedure works very well:

- Heat all rooms in the house to the same temperature (e.g. 20°C).
  This temperature must be maintained consistently for at least 24 hours.
- Then turn off all rooms for 24 hours.
  Alternatively (e.g. if the outside temperature is very cold), switch it off until every room has cooled down by 2°C.

It is essential to carry out these steps before starting the hydraulic balancing.
Otherwise the result will not be usable.

### Open the flow rate limiter 100% (except for very short heating loops)

All flow rate limiters must be opened to the maximum before starting the hydraulic balancing.

![flow-rate-limiters](./assets/flow-rate-limiters.png)

The flow rate limiters in rooms with known very short heating loops can be turned off slightly.

**The valve opening should not need to be limited to less than 25% for any actuator.**

### Outside temperatures <10°C

Due to several effects, the colder the outside temperatures, the easier and more precise the hydraulic balancing can be carried out using the return flow temperature method.
If you do not get a sufficient result when the temperature is above zero, it is best to repeat the calibration again when the outside temperatures are colder.

Above an outside temperature of 10°C, hydraulic balancing using the return flow temperature method is not possible.

### The underfloor heating pump must be switched on permanently

Make sure that the underfloor heating pump runs continuously during the hydraulic balancing.
Please temporarily set the pump to continuous operation in the integrated control of your heat generator.

### Sufficient flow temperature (deactivate night setback!)

A sufficient flow temperature must be ensured for the duration of the hydraulic balancing.
For example, the heat generator must not be in night setback mode.

### Minimize/exclude further influences

During the hydraulic balancing, no windows or doors may be open and no additional heat sources (e.g. tiled stoves) may falsify the measurements.
External effects such as solar radiation should also be excluded through test runs after sunset.

## Implementation and work steps

The hydraulic balancing using the return flow temperature process takes place in the following successive steps.

1) Automatic static hydraulic balancing
2) Dynamic hydraulic maximum adjustment with maximum flow adjustment
3) Regular operation with deep learning

### Step 1: Automatic static hydraulic balancing

With automatic static hydraulic balancing, all heating circuit distributors and all heating circuits in the building are included simultaneously and validly compared with each other using the return temperature process.
The flow rates are limited using continuously adjustable actuators/valves until all heating loops have the same return temperature.

The return temperatures in all heating circuits are measured at the same time in a test run (e.g. 30 minutes) and displayed in a diagram.
After each test run, the flow rates of the warmest returns are limited (by adjusting the valve openings of the continuously adjustable actuators) - until all heating loops have the same average temperature.

1) Initial action
   Opening all valves for, for example, 30 minutes to cover some physically caused delays.
   - For example, it takes a few minutes until the Controme Gateway sends the opening signal to the actuators,
   - the actuators again need a few minutes to actually open.
   - Furthermore, all heating loops should initially have flow for a few minutes before the return temperatures are evaluated.
   - Display of all return temperatures in one diagram.
2) Start the first test sequence.
3) After completion of the 30 minute test sequence, for example, the valve openings of the continuously adjustable actuators are adjusted once.
   - After each run, the average value is calculated for each sensor.
   - The difference of all mean values ​​​​gives the result of the run.
   - AFTER each run, the valve openings of the warmest returns are reduced.
   - The maximum openings are shown for each valve on the device page of the underfloor heating control(s)-PRO.
   - The AHA plugin automatically adjusts the displayed maximum opening values ​​(the sliders) at the end of each AHA run.
4) Start the next test sequence with the new improved valve openings (maximum opening values).
5) This process is repeated until all heating loops have an average temperature that differs from each other by less than 2K.

**Important**:
The valve opening should not have to be limited to less than 25% for any actuator.
These flow rate limiters must be turned off slightly.

**Please note**:
The maximum openings are not adjusted during a run itself.
The plugin evaluates each run at the end and then adjusts the individual maximum openings once.
So several runs are ALWAYS necessary until the return temperatures are in the desired range of 2K.

### Step 2: Dynamic hydraulic maximum adjustment with maximum flow adjustment

The maximum opening values ​​for each heating loop determined in the previously described automatic static hydraulic balancing are exclusive
optimal for the full load operating situation (“All rooms should currently be supplied with the maximum and equal amount of heat energy”).
However, this operating situation is very rare.

The dynamic adjustment maximum adjustment therefore calculates, based on the values ​​determined in the automatic static hydraulic adjustment,
The maximum possible valve opening for each heating loop is individually tailored to each operating situation.

The control algorithm takes into account all current operating information and makes intelligent decisions for each individual heating loop.
Whether a valve can be opened, if necessary, beyond the maximum value determined in the automatic hydraulic balancing (AHA).
Smart-Heat OS always ensures supply to all other rooms at the same time.

- This allows heating times to be greatly reduced.
- A lower flow temperature is required for the same heating output.
- Less power from the heating circuit pump is required because the pump does not have to press against unnecessarily limited valves
  (Note: A differential pressure-controlled pump adapts this automatically).

### Step 3: Regular operation with deep learning

The “hydraulic balancing” plugin subsequently continuously transfers the maximum permitted opening
each heating loop to the AI ​​control algorithm for underfloor heating.

This uses deep learning methods to analyze and calculate the curves of the room and return temperatures
This results in the optimal floor temperature at any time, taking weather forecast data into account.
The actual opening of each actuator is then adjusted according to the result.

# Heating controller

An ESP32 8 channels motor controller (shield) | Floor heating controller for proportional actuator.

Can drive up to 8 Homematic valve actuators [HmIP-VDMOT] (Version v57 rev 1.48).
https://github.com/nliaudat/esp32_8ch_motor_shield/tree/main#new-version-v57-rev-148-

![controller_1](https://github.com/nliaudat/esp32_8ch_motor_shield/blob/main/imgs/v53.PNG)

![case_1](./assets/case_1.jpg)
![case_2](./assets/case_2.jpg)
![case_3](./assets/case_3.jpg)

## Firmware

https://github.com/nliaudat/floor-heating-controller

## Floor heating temperatur sensors

1-Wire Bus with DS18B20 temperatur sensors to measure the

- supply flow temperature
- return flow temperature

for each heating circuit.

Usage of 1-wire temperature sensors (DS18B20):
https://esphome.io/components/sensor/dallas.html

_"... The 1-Wire bus ... should have an external pullup resistor of about 4.7KΩ. ..."<br>
"... For this, connect a resistor of about 4.7KΩ between 3.3V and the data pin. ..."<br>
"... Values ± 1KΩ will, in most cases, work fine as well, if you don’t have massively long wires. ..."_

|1-Wire Bus|Board|DS18B20|Resistor|
|---|------|-------|--|
|Power|VCC (3.3. V)|red|~4.7KΩ between Power and Data|
|Ground|GND|black|-|
|Data|IO (e.g. IO22)|yellow|~4.7KΩ between Power and Data|

See:
https://github.com/nliaudat/esp32_8ch_motor_shield/blob/main/extension.md

Note:
With proper and short cabling more than 16 DS18B20 on the same 1-wire bus seems to be possible.

![case_4](./assets/case_4.jpg)
![case_5](./assets/case_5.jpg)
![case_6](./assets/case_6.jpg)

# References

- https://github.com/nliaudat/esp32_8ch_motor_shield
- https://github.com/nliaudat/floor-heating-controller

- http://www.bosy-online.de/Einstellen_der_Heizkurve.htm
- https://www.haustechnikdialog.de/SHKwissen/2481/Ruecklauftemperaturregelung
- https://www.haustechnikdialog.de/SHKwissen/341/Heizkurve
- https://www.controme.com/hydraulischer-abgleich/
- https://support.controme.com/hydraulischer-abgleich/

# xxxxxxxxxxxxxxxxxxxx

FBx : Fussbodenheizkreis x
TV  : Vorlauftemp.
TR  : Rücklauftemp.
VS  : Volumenstrom

FB1 - Hauptlast: hoher VS, hohe RT
FB2 - Teilast  : kleiner VS, kleine RT
