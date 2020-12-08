function dist = GreedyDirection(posCur, posDst)

allDir = [{[1,0]} {[0,1]} {[-1,0]} {[0,-1]}];
distvec = arrayfun(@(t) norm(posDst - posCur - cell2mat(t)), allDir);
[~, i] = min(distvec);
dist = cell2mat(allDir(i));

