function [Plot] = movePlot(Plot,delatX,delatY,delatZ)
 Plot.X=Plot.X+delatX;
 Plot.Y=Plot.Y+delatY;
 Plot.Z=Plot.Z+delatZ;
end

