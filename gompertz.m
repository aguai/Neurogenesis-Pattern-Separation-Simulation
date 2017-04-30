% Produces:
    % Plugs a value t into the gompertz function and calculates its value.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function x = gompertz(t)

x = exp(-exp(5*t));

end
