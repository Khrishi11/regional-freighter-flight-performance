%% Take off Distance
Wpayload; %kg
g = 9.81;
payload_Weight =Wpayload*g;%N
e =1.78*(1-0.045*AR^0.68)-0.64;%can be used as the tapered nature of the wing is negligable
k =1/(pi*e*AR);
cd_max ;%drag coefficient at 20 deg deflection
cl_max ;%lift coefficient at 20 deg deflection
CD0 =(k*cl_max^2);
b =19.25 ; %m
wingA ; %m^2
AR =19.25^2/wingA;
T = 18550 * 2; %N Thrust from 2 engines
Pr =1625*2; %KW Power from 2 engines
p; %at sea level
Temprature = 288.15; %Kelvin
u = 0.02;
Hc = 35 * 0.3048; %m 
clmin = (u/2*k);
clmin_3D = (clmin/(1+(clmin/(3.141*AR*e))));
Cl_3D = (cl_max/(1+(cl_max/(3.141*AR*e))));
DeltaCl = Cl_3D - clmin_3D;
Vs = sqrt((2*g.*Wpayload)/(p*wingA*Cl_3D));
VROT = (((1.2*1.05)/1.1)*Vs);
CLROT = ((Wpayload.*g)./(0.5*p.*VROT.^2*wingA));
SG = -(payload_Weight./(g*p*wingA))*(1/(CD0-(u*clmin_3D))).*log(1-((CD0 - u*clmin_3D )./(((T./payload_Weight) - u) .* CLROT )));
VLOF = 54.6; %m/s
Gamma_LOF = asin((2*T)./(3.*payload_Weight));
Sa = ( (payload_Weight./wingA).*Gamma_LOF ) / (p*g*DeltaCl);
Sr = Hc./Gamma_LOF;
TOx = SG + Sa + Sr; %m

fprintf('Take off distance: %0.2f meters\n', TOx);