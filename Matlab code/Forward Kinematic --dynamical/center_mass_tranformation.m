%%
Inertia_parameters
v12 = T_n(1:3,4,1);
v21c = round(param_matrix(2:4,1),3);
v11c = v12 - v21c;

v23 = T_n(1:3,4,2);
v32c = round(param_matrix(2:4,2),3);
v22c = v23 - v32c;

v34 = T_n(1:3,4,3);
v43c = round(param_matrix(2:4,3),3);
v33c = v34 - v43c;

v45 = T_n(1:3,4,4);
v54c = round(param_matrix(2:4,4),3);
v44c = v45 - v54c;

v56 = T_n(1:3,4,5);
v65c = round(param_matrix(2:4,5),3);
v55c = v56 - v65c;

v67 = T_n(1:3,4,6);
v76c = round(param_matrix(2:4,6),3);
v66c = v67 - v76c;

v78 = T_n(1:3,4,7);
v87c = round(param_matrix(2:4,7),3);
v77c = v78 - v87c;

T_11c = Trans_mat(v11c);
T_22c = Trans_mat(v22c);
T_33c = Trans_mat(v33c);
T_44c = Trans_mat(v44c);
T_55c = Trans_mat(v55c);
T_66c = Trans_mat(v66c);
T_77c = Trans_mat(v77c);

