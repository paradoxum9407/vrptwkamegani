function deltaCost=checkDCost(originalRoute, newRoute, disttab, A);

originalDistance=totalDistance(originalRoute, disttab);
newDistance=totalDistance(newRoute, disttab);
originalTravelTime=totalTravelTime(originalRoute, A, disttab);
newTravelTime=totalTravelTime(newRoute, A, disttab);
originalOverload=totalOverload(originalRoute, A, capacity);
newOverload=totalOverload(newRoute, A, capacity);
originalTardiness=totalTardiness(originalRoute, A, disttab);
newTardiness=totalTardiness(newRoute, A, disttab);
originalCost=originalDistance+originalTravelTime*originalDistance/100+originalOverload*originalDistance/10+originalTardiness*originalDistance/100;
newCost=newDistance+newTravelTime*newDistance/100+newOverload*newDistance/10+newTardiness*newDistance/100;
deltaCost=newCost-originalCost;