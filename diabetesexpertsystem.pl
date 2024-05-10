symptom(polyuria).
symptom(polydipsia).
symptom(weight_loss).
symptom(blurred_vision).
symptom(fatigue).
symptom(glucose_control).
risk_factor(obesity).
risk_factor(genetics).
risk_factor(insulin_dependency).
risk_factor(pregnancy).
risk_factor(family_history).

patient(john, [polyuria, polydipsia, weight_loss, blurred_vision], [obesity, genetics]).
patient(sarah, [polydipsia, weight_loss], [genetics]).
patient(mary, [polyuria, blurred_vision, weight_loss, polydipsia], [genetics, insulin_dependency]).
patient(megan, [polyuria, blurred_vision, weight_loss, polydipsia], [pregnancy]).
patient(chase, [polyuria, polydipsia], [family_history]).

type1diabetes(Patient) :-
    patient(Patient, Symptoms, RiskFactors),
    member(polyuria, Symptoms),
    member(polydipsia, Symptoms),
    member(weight_loss, Symptoms),
    member(blurred_vision, Symptoms),
    member(insulin_dependency, RiskFactors).

type2diabetes(Patient) :-
    patient(Patient, Symptoms, RiskFactors),
    member(polyuria, Symptoms),
    member(polydipsia, Symptoms),
    member(weight_loss, Symptoms),
    member(blurred_vision, Symptoms),
    member(_, RiskFactors).

gestationaldiabetes(Patient) :-
    patient(Patient, Symptoms, RiskFactors),
    member(polyuria, Symptoms),
    member(polydipsia, Symptoms),
    member(weight_loss, Symptoms),
    member(blurred_vision, Symptoms),
    member(pregnancy, RiskFactors).

modydiabetes(Patient) :-
    patient(Patient, Symptoms, RiskFactors),
    member(polyuria, Symptoms),
    member(polydipsia, Symptoms),
    member(family_history, RiskFactors).
    

diabetes(X) :- symptom(polyuria), symptom(polydipsia), symptom(weight_loss), symptom(blurred_vision), risk_factor(X).
