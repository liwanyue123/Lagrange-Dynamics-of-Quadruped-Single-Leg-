function [symfun_des] = subTime(symfun_res)
%消除符号式中的（t）
syms Ixx1 Iyy1 Izz1 Ixx2 Iyy2 Izz2 Ixx3 Iyy3 Izz3 real
syms L1 L2 L3    a1 a2 a3 b1 real
syms g m1 m2 m3   real
syms theta_1 theta_2 theta_3 t real
syms theta_1_d theta_2_d theta_3_d   real
syms theta_1_dd theta_2_dd theta_3_dd   real
     symfun_text=char(symfun_res);%字符化
     symfun_text=WordReplace( symfun_text,'sub') ;%替换有（t）的变量
    symfun_des=eval(cell2mat(symfun_text));%还原成符号
end

