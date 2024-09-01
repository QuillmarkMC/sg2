#setblock entire pyramid interior to reset previous round spawn platforms 
execute positioned 1 74 1 run place template sg:pyramid/platforms-1 ~-1 ~-12 ~-1
execute positioned 1 74 -1 run place template sg:pyramid/platforms-2 ~-1 ~-12 ~-31
execute positioned -1 74 -1 run place template sg:pyramid/platforms-3 ~-31 ~-12 ~-31
execute positioned -1 74 1 run place template sg:pyramid/platforms-4 ~-31 ~-12 ~-1