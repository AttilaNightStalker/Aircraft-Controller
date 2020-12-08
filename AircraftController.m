function dir = AircraftController(det, dst, position)

dir = [0 0];

if ~all(position == dst)
   
    optimal = GreedyDirection(position, dst);
    if (~isnan(det))
        if sumabs(det - position) <= 2 && sumabs(det - position - optimal) <= sumabs(det - position)
            dir = SpiningDirection(position, det);
        else
            dir = optimal;
        end
    else
        dir = optimal;
    end
end

disp(["controller", position]);