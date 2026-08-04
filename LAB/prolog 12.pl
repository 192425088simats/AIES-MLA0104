% Disease Facts
disease(fever).
disease(cold).
disease(malaria).
disease(typhoid).

% Symptoms
symptom(fever, high_temperature).
symptom(fever, headache).

symptom(cold, sneezing).
symptom(cold, cough).

symptom(malaria, fever).
symptom(malaria, chills).

symptom(typhoid, fever).
symptom(typhoid, weakness).

% Rule
diagnosis(Disease, Symptom) :-
    symptom(Disease, Symptom).
