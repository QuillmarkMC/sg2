#setblock entire pyramid interior to reset previous round spawn platforms 
execute positioned 1 76 1 run place template sg:pyramid/platforms-1 ~-1 ~-9 ~-1
execute positioned 1 76 -1 run place template sg:pyramid/platforms-2 ~-1 ~-9 ~-32
execute positioned -1 76 -1 run place template sg:pyramid/platforms-3 ~-32 ~-9 ~-32
execute positioned -1 76 1 run place template sg:pyramid/platforms-4 ~-32 ~-9 ~-1

#structure size: 34 9 34