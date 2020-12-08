function [ ] = Simulation(srcA, dstA, srcB, dstB)

posA = srcA;
posB = srcB;

windowSize = [min([srcA(1), srcB(1), dstA(1), dstB(1)]) - 2;
    max([srcA(1), srcB(1), dstA(1), dstB(1)]) + 2;
    min([srcA(2), srcB(2), dstA(2), dstB(2)]) - 2;
    max([srcA(2), srcB(2), dstA(2), dstB(2)]) + 2];


while ~all((posA == dstA) & (posB == dstB))
    detA = nan;
    detB = nan;
    if sumabs(posA - posB) <= 4
        detA = posB;
        detB = posA;
    end
    
    dirA = AircraftController(detA, dstA, posA);
    dirB = AircraftController(detB, dstB, posB);
    
    move(posA, posB, dirA, dirB, windowSize);
    
    posA = posA + dirA;
    posB = posB + dirB;
    
    disp(posA);
    pause(0.2)
end
    