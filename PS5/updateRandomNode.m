% fnc to correct nodes in matrix memory
%YOU MUST WRITE THIS FUNCTION
function [vec,delta] = updateRandomNode(MatrixMem,vec)
    % update one random row at a time, chosen at random
    corrected_vec = MatrixMem * vec;
    row_to_correct = randi(length(vec));
    new_vec = vec;
    new_vec(row_to_correct) = corrected_vec(row_to_correct);
    
    %if the new row is 0, don't update it
    if new_vec(row_to_correct) == 0
        new_vec = vec;
    end
    
    % apply activation function
    new_vec = sign(new_vec);
    vec = sign(vec);
        
    %count how many nodes change their values
    if new_vec(row_to_correct) == vec(row_to_correct)
        delta=0;
    else
        delta=1;
    end
    
    vec = sign(new_vec);
