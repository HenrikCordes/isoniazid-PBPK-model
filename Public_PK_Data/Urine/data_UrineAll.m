% read experimental data from Bing
%% urine data Bing slow [h] and [mg/l] 
% mg/l == µg/ml / [µg/µmol] *1000
[MW_Isoniazid,MW_Acetylisoniazid,MW_Acetyl_Hydrazine,MW_DiAcetyl_Hydrazine,MW_Isonicotinic_acid,MW_Isonicotyl_glycine,MW_Hydrazine] = MWs_INH();
[raw]=xlsread('C:\Users\Henrik\Documents\HeCaTos\PBPK\Liver\Isoniazid\data\Urine\UrineAll.xlsx','slow');
UrineAll.slow.urine.Isoniazid.time = raw(:,1);
UrineAll.slow.urine.Isoniazid.dose = raw(:,2);
UrineAll.slow.urine.Isoniazid.error = raw(:,3);
UrineAll.slow.urine.Acetylisoniazid.time = raw(:,1);
UrineAll.slow.urine.Acetylisoniazid.dose = raw(:,4);
UrineAll.slow.urine.Acetylisoniazid.error = raw(:,5);
UrineAll.slow.urine.Acetylhydrazine.time = raw(:,1);
UrineAll.slow.urine.Acetylhydrazine.dose = raw(:,6);
UrineAll.slow.urine.Acetylhydrazine.error = raw(:,7);
UrineAll.slow.urine.Diacetylhydrazine.time = raw(:,1);
UrineAll.slow.urine.Diacetylhydrazine.dose = raw(:,8);
UrineAll.slow.urine.Diacetylhydrazine.error = raw(:,9);
UrineAll.slow.urine.Isonicotinic_acid.time = raw(:,1);
UrineAll.slow.urine.Isonicotinic_acid.dose = raw(:,10);
UrineAll.slow.urine.Isonicotinic_acid.error = raw(:,11);
UrineAll.slow.urine.Isonicotyl_glycine.time = raw(:,1);
UrineAll.slow.urine.Isonicotyl_glycine.dose = raw(:,12);
UrineAll.slow.urine.Isonicotyl_glycine.error = raw(:,13);
UrineAll.slow.urine.Hydrazine.time = raw(:,1);
UrineAll.slow.urine.Hydrazine.dose = raw(:,14);
UrineAll.slow.urine.Hydrazine.error = raw(:,15);
%% urine data Ellard rapid [h] and [mg/l]
[raw]=xlsread('C:\Users\Henrik\Documents\HeCaTos\PBPK\Liver\Isoniazid\data\Urine\UrineAll.xlsx','rapid');
UrineAll.rapid.urine.Isoniazid.time = raw(:,1);
UrineAll.rapid.urine.Isoniazid.dose = raw(:,2);
UrineAll.rapid.urine.Isoniazid.error = raw(:,3);
UrineAll.rapid.urine.Acetylisoniazid.time = raw(:,1);
UrineAll.rapid.urine.Acetylisoniazid.dose = raw(:,4);
UrineAll.rapid.urine.Acetylisoniazid.error = raw(:,5);
UrineAll.rapid.urine.Acetylhydrazine.time = raw(:,1);
UrineAll.rapid.urine.Acetylhydrazine.dose = raw(:,6);
UrineAll.rapid.urine.Acetylhydrazine.error = raw(:,7);
UrineAll.rapid.urine.Diacetylhydrazine.time = raw(:,1);
UrineAll.rapid.urine.Diacetylhydrazine.dose = raw(:,8);
UrineAll.rapid.urine.Diacetylhydrazine.error = raw(:,9);
UrineAll.rapid.urine.Isonicotinic_acid.time = raw(:,1);
UrineAll.rapid.urine.Isonicotinic_acid.dose = raw(:,10);
UrineAll.rapid.urine.Isonicotinic_acid.error = raw(:,11);
UrineAll.rapid.urine.Isonicotyl_glycine.time = raw(:,1);
UrineAll.rapid.urine.Isonicotyl_glycine.dose = raw(:,12);
UrineAll.rapid.urine.Isonicotyl_glycine.error = raw(:,13);
UrineAll.rapid.urine.Hydrazine.time = raw(:,1);
UrineAll.rapid.urine.Hydrazine.dose = raw(:,14);
UrineAll.rapid.urine.Hydrazine.error = raw(:,15);

UrineAll.inter.urine.Isoniazid.time = raw(:,1);
UrineAll.inter.urine.Isoniazid.dose = raw(:,2);
UrineAll.inter.urine.Isoniazid.error = raw(:,3);
UrineAll.inter.urine.Acetylisoniazid.time = raw(:,1);
UrineAll.inter.urine.Acetylisoniazid.dose = raw(:,4);
UrineAll.inter.urine.Acetylisoniazid.error = raw(:,5);
UrineAll.inter.urine.Acetylhydrazine.time = raw(:,1);
UrineAll.inter.urine.Acetylhydrazine.dose = raw(:,6);
UrineAll.inter.urine.Acetylhydrazine.error = raw(:,7);
UrineAll.inter.urine.Diacetylhydrazine.time = raw(:,1);
UrineAll.inter.urine.Diacetylhydrazine.dose = raw(:,8);
UrineAll.inter.urine.Diacetylhydrazine.error = raw(:,9);
UrineAll.inter.urine.Isonicotinic_acid.time = raw(:,1);
UrineAll.inter.urine.Isonicotinic_acid.dose = raw(:,10);
UrineAll.inter.urine.Isonicotinic_acid.error = raw(:,11);
UrineAll.inter.urine.Isonicotyl_glycine.time = raw(:,1);
UrineAll.inter.urine.Isonicotyl_glycine.dose = raw(:,12);
UrineAll.inter.urine.Isonicotyl_glycine.error = raw(:,13);
UrineAll.inter.urine.Hydrazine.time = raw(:,1);
UrineAll.inter.urine.Hydrazine.dose = raw(:,14);
UrineAll.inter.urine.Hydrazine.error = raw(:,15);
%%
UrineAll.meta = 'dose and error are in [%], time in [h]';
%% Meta data
% Dose
UrineAll.meta.dose.mean = '';
% Patients
UrineAll.meta.patients.slow = '';
UrineAll.meta.patients.inter = '';
UrineAll.meta.patients.rapid = '';

UrineAll.meta.patients.age.mean = '';
UrineAll.meta.patients.age.sd = [];
UrineAll.meta.patients.weight.mean = '';
UrineAll.meta.patients.weight.sd = [];
% Units
UrineAll.meta.unit.slow.urine.dose = '%';
UrineAll.meta.unit.slow.urine.time = 'h';
%%
save UrineAll.mat UrineAll 