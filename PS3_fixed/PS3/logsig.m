function [foobar] = logsig(x)
foobar = 1 ./ (1 + exp(-x))
