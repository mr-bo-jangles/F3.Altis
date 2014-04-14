// F3 - SetWeather
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS

private ["_weather","_missionOvercast","_MissionRain","_MissionRainbow","_MissionLightnings","_MissionWindStr","_MissionWindGusts","_MissionWaves","_MissionHumidity"];

// ====================================================================================

// SET KEY VARIABLES
// Conditions are set in the parameters screen (during mission set-up) or parsed to the script.

_weather = _this select 0;
_transition = if (count _this > 1) then {_this select 1} else {0};

_MissionOvercast = 0;
_MissionRain = 0;
_MissionRainbow = 0;
_MissionLightnings = 0;
_MissionWindStr = 0;
_MissionWindGusts = 0;
_MissionWaves = 0;
_MissionHumidity = 0;

// ====================================================================================

// SELECT MISSION TIME OF DAY
// Using the value of _timeOfDay, a new date is set.

switch (_weather) do
{
// Clear (Calm)
	case 0:
	{
		_MissionOvercast = 0.01;
		_MissionRain = 0;
		_MissionRainbow = 0;
		_MissionLightnings = 0;
		_MissionWindStr = 0;
		_MissionWindGusts = 0;
		_MissionWaves = 0.1;
		_MissionHumidity = 0.2;
	};
// Clear (Light Winds)
	case 1:
	{
		_MissionOvercast = 0.01;
		_MissionRain = 0;
		_MissionRainbow = 0;
		_MissionLightnings = 0;
		_MissionWindStr = 0.25;
		_MissionWindGusts = 0.5;
		_MissionWaves = 0.25;
		_MissionHumidity = 0.2;
	};
// Clear (Strong Winds)
	case 2:
	{
		_MissionOvercast = 0.01;
		_MissionRain = 0;
		_MissionRainbow = 0;
		_MissionLightnings = 0;
		_MissionWindStr = 0.75;
		_MissionWindGusts = 1;
		_MissionWaves = 0.75;
		_MissionHumidity = 0.2;
	};
// Overcast (Calm)
	case 3:
	{
		_MissionOvercast = 0.8;
		_MissionRain = 0;
		_MissionRainbow = 0;
		_MissionLightnings = 0;
		_MissionWindStr = 0;
		_MissionWindGusts = 0;
		_MissionWaves = 0.1;
		_MissionHumidity = 0.2;
	};
// Overcast (Light Winds)
	case 4:
	{
		_MissionOvercast = 0.8;
		_MissionRain = 0;
		_MissionRainbow = 0;
		_MissionLightnings = 0;
		_MissionWindStr = 0.25;
		_MissionWindGusts = 0.5;
		_MissionWaves = 0.25;
		_MissionHumidity = 0.2;
	};
// Overcast (Strong Winds)
	case 5:
	{
		_MissionOvercast = 0.8;
		_MissionRain = 0;
		_MissionRainbow = 0;
		_MissionLightnings = 0;
		_MissionWindStr = 0.75;
		_MissionWindGusts = 1;
		_MissionWaves = 0.75;
		_MissionHumidity = 0.2;
	};
// Rain (Light Winds)
	case 6:
	{
		_MissionOvercast = 1;
		_MissionRain = 1;
		_MissionRainbow = 0;
		_MissionLightnings = 0;
		_MissionWindStr = 0.25;
		_MissionWindGusts = 0.5;
		_MissionWaves = 0.75;
		_MissionHumidity = 0.9;
	};
// Rain (Strong Winds)
	case 7:
	{
		_MissionOvercast = 1;
		_MissionRain = 1;
		_MissionRainbow = 0;
		_MissionLightnings = 0;
		_MissionWindStr = 0.75;
		_MissionWindGusts = 1;
		_MissionWaves = 0.75;
		_MissionHumidity = 0.9;
	};
// Storm
	case 8:
	{
		_MissionOvercast = 1;
		_MissionRain = 1;
		_MissionRainbow = 0;
		_MissionLightnings = 1;
		_MissionWindStr = 1;
		_MissionWindGusts = 1;
		_MissionWaves = 1;
		_MissionHumidity = 1;
	};
};

// ====================================================================================

// SET MISSION CONDITIONS
// Use new values to set
// mission conditions on server and all clients (including JIP clients).

_transition setOvercast  _MissionOvercast;
_transition setRain _MissionRain;
_transition setRainbow _MissionRainbow;
_transition setWindStr  _MissionWindStr;
_transition setWindForce _MissionWindGusts;
_transition setWaves _MissionWaves;

// ====================================================================================

if (true) exitWith {};
