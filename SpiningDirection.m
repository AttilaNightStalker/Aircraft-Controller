function direction = SpiningDirection(mypos, hispos)

face = mypos - hispos;

if face(1) > 0 && face(2) <= 0
    direction = [0 1];
elseif face(1) >= 0 && face(2) > 0
    direction = [-1 0];
elseif face(1) < 0 && face(2) >= 0
    direction = [0 -1];
else
    direction = [0 -1];
end
