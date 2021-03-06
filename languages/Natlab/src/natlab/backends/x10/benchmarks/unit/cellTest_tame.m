% args: {a=(double,[1, 1],{REAL})}
function  [x] = cellTest(a)
  mc_t5 = 1;                          % mc_t5=(double,1.0,[1, 1],{REAL})
  mc_t6 = 2;                          % mc_t6=(double,2.0,[1, 1],{REAL})
  mc_t7 = 3;                          % mc_t7=(double,3.0,[1, 1],{REAL})
  [myNum] = horzcat(mc_t5, mc_t6, mc_t7); % myNum=(double,[1, 3],{REAL})
  mc_t9 = 4;                          % mc_t9=(double,4.0,[1, 1],{REAL})
  mc_t10 = 5;                         % mc_t10=(double,5.0,[1, 1],{REAL})
  [num1] = horzcat(mc_t9, mc_t10);    % num1=(double,[1, 2],{REAL})
  mc_t11 = 100;                       % mc_t11=(double,100.0,[1, 1],{REAL})
  [mc_t0] = mtimes(myNum, mc_t11);    % mc_t0=(double,[1, 3],{REAL})
  mc_t1 = num1;                       % mc_t1=(double,[1, 2],{REAL})
  mc_t13 = 'unun';                    % mc_t13=(char,unun,[1, 4],{REAL})
  mc_t14 = 'dos';                     % mc_t14=(char,dos,[1, 3],{REAL})
  mc_t15 = 100;                       % mc_t15=(double,100.0,[1, 1],{REAL})
  [myCell] = cellhorzcat(mc_t13, mc_t0, mc_t1, mc_t14, mc_t15); % myCell=cell[(char,[1, ?],{REAL}), (double,[1, 3],{REAL})]
  mc_t2 = myNum;                      % mc_t2=(double,[1, 3],{REAL})
  mc_t16 = 100;                       % mc_t16=(double,100.0,[1, 1],{REAL})
  [mc_t3] = mtimes(mc_t16, myNum);    % mc_t3=(double,[1, 3],{REAL})
  [C] = cellhorzcat(mc_t2, mc_t3);    % C=cell(double,[1, 3],{REAL})
  mc_t18 = 1;                         % mc_t18=(double,1.0,[1, 1],{REAL})
  mc_t19 = 1;                         % mc_t19=(double,1.0,[1, 1],{REAL})
  [x] = C{mc_t18, mc_t19};            % x=(double,[1, 3],{REAL})
end
% results: [(double,[1, 3],{REAL})]