% args: {n=(double,[1, 1],{REAL}), Rx=(double,[?, 1],{REAL}), Ry=(double,[?, 1],{REAL}), 
%       Rz=(double,[?, 1],{REAL}), m=(double,[?, 1],{REAL}), dT=(double,[1, 1],{REAL}), 
%       T=(double,[1, 1],{REAL})}
function  [Fx, Fy, Fz, Vx, Vy, Vz] = nbody1d(n, Rx, Ry, Rz, m, dT, T)
  mc_t76 = 1;                         % mc_t76=(double,1.0,[1, 1],{REAL})
  [Fx] = zeros(n, mc_t76);            % Fx=(double,[?, 1],{REAL})
  mc_t77 = 1;                         % mc_t77=(double,1.0,[1, 1],{REAL})
  [Fy] = zeros(n, mc_t77);            % Fy=(double,[?, 1],{REAL})
  mc_t78 = 1;                         % mc_t78=(double,1.0,[1, 1],{REAL})
  [Fz] = zeros(n, mc_t78);            % Fz=(double,[?, 1],{REAL})
  mc_t79 = 1;                         % mc_t79=(double,1.0,[1, 1],{REAL})
  [Vx] = zeros(n, mc_t79);            % Vx=(double,[?, 1],{REAL})
  mc_t80 = 1;                         % mc_t80=(double,1.0,[1, 1],{REAL})
  [Vy] = zeros(n, mc_t80);            % Vy=(double,[?, 1],{REAL})
  mc_t81 = 1;                         % mc_t81=(double,1.0,[1, 1],{REAL})
  [Vz] = zeros(n, mc_t81);            % Vz=(double,[?, 1],{REAL})
  G = 1e-11;                          % G=(double,1.0E-11,[1, 1],{REAL})
  mc_t85 = 1;                         % mc_t85=(double,1.0,[1, 1],{REAL})
  for t = (mc_t85 : dT : T);
    mc_t84 = 1;                         % mc_t84=(double,1.0,[1, 1],{REAL})
    for k = (mc_t84 : n);
      mc_t44 = Rx;                        % mc_t44=(double,[?, 1],{ANY})
      [mc_t45] = Rx(k);                   % mc_t45=(double,[1, 1],{ANY})
      [drx] = minus(mc_t44, mc_t45);      % drx=(double,[1, 1],{ANY})
      mc_t46 = Ry;                        % mc_t46=(double,[?, 1],{ANY})
      [mc_t47] = Ry(k);                   % mc_t47=(double,[1, 1],{ANY})
      [dry] = minus(mc_t46, mc_t47);      % dry=(double,[1, 1],{ANY})
      mc_t48 = Rz;                        % mc_t48=(double,[?, 1],{ANY})
      [mc_t49] = Rz(k);                   % mc_t49=(double,[1, 1],{ANY})
      [drz] = minus(mc_t48, mc_t49);      % drz=(double,[1, 1],{ANY})
      [mc_t52] = times(drx, drx);         % mc_t52=(double,[1, 1],{ANY})
      [mc_t53] = times(dry, dry);         % mc_t53=(double,[1, 1],{ANY})
      [mc_t50] = plus(mc_t52, mc_t53);    % mc_t50=(double,[1, 1],{ANY})
      [mc_t51] = times(drz, drz);         % mc_t51=(double,[1, 1],{ANY})
      [r] = plus(mc_t50, mc_t51);         % r=(double,[1, 1],{ANY})
      mc_t82 = 1.0;                       % mc_t82=(double,1.0,[1, 1],{REAL})
      r(k) = mc_t82;                      % r=(double,[1, 1],{ANY})
      mc_t54 = m;                         % mc_t54=(double,[?, 1],{REAL})
      [mc_t55] = m(k);                    % mc_t55=(double,[1, 1],{REAL})
      [M] = mtimes(mc_t54, mc_t55);       % M=(double,[?, 1],{REAL})
      mc_t83 = 0.0;                       % mc_t83=(double,0.0,[1, 1],{REAL})
      M(k) = mc_t83;                      % M=(double,[?, 1],{REAL})
      mc_t56 = G;                         % mc_t56=(double,1.0E-11,[1, 1],{REAL})
      [mc_t57] = rdivide(M, r);           % mc_t57=(double,[1, 1],{ANY})
      [f] = mtimes(mc_t56, mc_t57);       % f=(double,[1, 1],{ANY})
      [r] = sqrt(r);                      % r=(double,[1, 1],{REAL})
      [drx] = rdivide(drx, r);            % drx=(double,[1, 1],{ANY})
      [dry] = rdivide(dry, r);            % dry=(double,[1, 1],{ANY})
      [drz] = rdivide(drz, r);            % drz=(double,[1, 1],{ANY})
      [frx] = times(f, drx);              % frx=(double,[1, 1],{ANY})
      [fry] = times(f, dry);              % fry=(double,[1, 1],{ANY})
      [frz] = times(f, drz);              % frz=(double,[1, 1],{ANY})
      [mc_t58] = mean(frx);               % mc_t58=(double,[1, 1],{REAL})
      mc_t59 = n;                         % mc_t59=(double,[1, 1],{REAL})
      [mc_t41] = mtimes(mc_t58, mc_t59);  % mc_t41=(double,[1, 1],{REAL})
      Fx(k) = mc_t41;                     % Fx=(double,[?, 1],{REAL})
      [mc_t60] = mean(fry);               % mc_t60=(double,[1, 1],{REAL})
      mc_t61 = n;                         % mc_t61=(double,[1, 1],{REAL})
      [mc_t42] = mtimes(mc_t60, mc_t61);  % mc_t42=(double,[1, 1],{REAL})
      Fy(k) = mc_t42;                     % Fy=(double,[?, 1],{REAL})
      [mc_t62] = mean(frz);               % mc_t62=(double,[1, 1],{REAL})
      mc_t63 = n;                         % mc_t63=(double,[1, 1],{REAL})
      [mc_t43] = mtimes(mc_t62, mc_t63);  % mc_t43=(double,[1, 1],{REAL})
      Fz(k) = mc_t43;                     % Fz=(double,[?, 1],{REAL})
    end
    [ax] = rdivide(Fx, m);              % ax=(double,[?, 1],{ANY})
    [ay] = rdivide(Fy, m);              % ay=(double,[?, 1],{ANY})
    [az] = rdivide(Fz, m);              % az=(double,[?, 1],{ANY})
    mc_t64 = Vx;                        % mc_t64=(double,[?, 1],{ANY})
    [mc_t65] = mtimes(ax, dT);          % mc_t65=(double,[?, 1],{ANY})
    [Vx] = plus(mc_t64, mc_t65);        % Vx=(double,[?, 1],{ANY})
    mc_t66 = Vy;                        % mc_t66=(double,[?, 1],{ANY})
    [mc_t67] = mtimes(ay, dT);          % mc_t67=(double,[?, 1],{ANY})
    [Vy] = plus(mc_t66, mc_t67);        % Vy=(double,[?, 1],{ANY})
    mc_t68 = Vz;                        % mc_t68=(double,[?, 1],{ANY})
    [mc_t69] = mtimes(az, dT);          % mc_t69=(double,[?, 1],{ANY})
    [Vz] = plus(mc_t68, mc_t69);        % Vz=(double,[?, 1],{ANY})
    mc_t70 = Rx;                        % mc_t70=(double,[?, 1],{ANY})
    [mc_t71] = mtimes(Vx, dT);          % mc_t71=(double,[?, 1],{ANY})
    [Rx] = plus(mc_t70, mc_t71);        % Rx=(double,[?, 1],{ANY})
    mc_t72 = Ry;                        % mc_t72=(double,[?, 1],{ANY})
    [mc_t73] = mtimes(Vy, dT);          % mc_t73=(double,[?, 1],{ANY})
    [Ry] = plus(mc_t72, mc_t73);        % Ry=(double,[?, 1],{ANY})
    mc_t74 = Rz;                        % mc_t74=(double,[?, 1],{ANY})
    [mc_t75] = mtimes(Vz, dT);          % mc_t75=(double,[?, 1],{ANY})
    [Rz] = plus(mc_t74, mc_t75);        % Rz=(double,[?, 1],{ANY})
  end
end
% results: [(double,[?, 1],{REAL}), (double,[?, 1],{REAL}), (double,[?, 1],{REAL}), (double,[?, 1],{ANY}), (double,[?, 1],{ANY}), (double,[?, 1],{ANY})]% args: {scale=(double,[1, 1],{REAL})}
function  [x] = drv_nb1d(scale)
  seed = 1;                           % seed=(double,1.0,[1, 1],{REAL})
  mc_t22 = .4;                        % mc_t22=(double,0.4,[1, 1],{REAL})
  [mc_t1] = mpower(scale, mc_t22);    % mc_t1=(double,[1, 1],{REAL})
  mc_t23 = 30;                        % mc_t23=(double,30.0,[1, 1],{REAL})
  [mc_t0] = mtimes(mc_t1, mc_t23);    % mc_t0=(double,[1, 1],{REAL})
  [n] = round(mc_t0);                 % n=(double,[1, 1],{REAL})
  mc_t24 = .5;                        % mc_t24=(double,0.5,[1, 1],{REAL})
  mc_t25 = 0.0833;                    % mc_t25=(double,0.0833,[1, 1],{REAL})
  [dT] = mtimes(mc_t24, mc_t25);      % dT=(double,[1, 1],{REAL})
  mc_t26 = .5;                        % mc_t26=(double,0.5,[1, 1],{REAL})
  mc_t27 = 32.4362;                   % mc_t27=(double,32.4362,[1, 1],{REAL})
  [mc_t2] = mtimes(mc_t26, mc_t27);   % mc_t2=(double,[1, 1],{REAL})
  [mc_t3] = sqrt(scale);              % mc_t3=(double,[1, 1],{REAL})
  [T] = mtimes(mc_t2, mc_t3);         % T=(double,[1, 1],{REAL})
  mc_t28 = 1;                         % mc_t28=(double,1.0,[1, 1],{REAL})
  mc_t29 = .1;                        % mc_t29=(double,0.1,[1, 1],{REAL})
  [mc_t4] = rand(n, mc_t28, mc_t29);  % mc_t4=(double,[?, 1, 0],{REAL})
  mc_t30 = 1000.23;                   % mc_t30=(double,1000.23,[1, 1],{REAL})
  [Rx] = mtimes(mc_t4, mc_t30);       % Rx=(double,[?, 1],{REAL})
  mc_t31 = 1;                         % mc_t31=(double,1.0,[1, 1],{REAL})
  mc_t32 = .4;                        % mc_t32=(double,0.4,[1, 1],{REAL})
  [mc_t5] = rand(n, mc_t31, mc_t32);  % mc_t5=(double,[?, 1, 0],{REAL})
  mc_t33 = 1000.23;                   % mc_t33=(double,1000.23,[1, 1],{REAL})
  [Ry] = mtimes(mc_t5, mc_t33);       % Ry=(double,[?, 1],{REAL})
  mc_t34 = 1;                         % mc_t34=(double,1.0,[1, 1],{REAL})
  mc_t35 = .9;                        % mc_t35=(double,0.9,[1, 1],{REAL})
  [mc_t6] = rand(n, mc_t34, mc_t35);  % mc_t6=(double,[?, 1, 0],{REAL})
  mc_t36 = 1000.23;                   % mc_t36=(double,1000.23,[1, 1],{REAL})
  [Rz] = mtimes(mc_t6, mc_t36);       % Rz=(double,[?, 1],{REAL})
  mc_t8 = n;                          % mc_t8=(double,[1, 1],{REAL})
  mc_t37 = .4;                        % mc_t37=(double,0.4,[1, 1],{REAL})
  [mc_t9] = uminus(mc_t37);           % mc_t9=(double,[1, 1],{REAL})
  mc_t38 = 1;                         % mc_t38=(double,1.0,[1, 1],{REAL})
  [mc_t7] = rand(mc_t8, mc_t38, mc_t9); % mc_t7=(double,[?, 1, ?],{REAL})
  mc_t39 = 345;                       % mc_t39=(double,345.0,[1, 1],{REAL})
  [m] = mtimes(mc_t7, mc_t39);        % m=(double,[?, 1],{REAL})
  [Fx, Fy, Fz, Vx, Vy, Vz] = nbody1d(n, Rx, Ry, Rz, m, dT, T); % Fx=(double,[?, 1],{REAL}), Fy=(double,[?, 1],{REAL}), Fz=(double,[?, 1],{REAL}), Vx=(double,[?, 1],{ANY}), Vy=(double,[?, 1],{ANY}), Vz=(double,[?, 1],{ANY})
  [mc_t21] = Fx(:);                   % mc_t21=(double,[?, 1],{REAL})
  [mc_t10] = mean(mc_t21);            % mc_t10=(double,[1, 1],{REAL})
  [mc_t20] = Fy(:);                   % mc_t20=(double,[?, 1],{REAL})
  [mc_t11] = mean(mc_t20);            % mc_t11=(double,[1, 1],{REAL})
  [mc_t19] = Fz(:);                   % mc_t19=(double,[?, 1],{REAL})
  [mc_t12] = mean(mc_t19);            % mc_t12=(double,[1, 1],{REAL})
  [mc_t18] = Vx(:);                   % mc_t18=(double,[?, 1],{ANY})
  [mc_t13] = mean(mc_t18);            % mc_t13=(double,[1, 1],{REAL})
  [mc_t17] = Vy(:);                   % mc_t17=(double,[?, 1],{ANY})
  [mc_t14] = mean(mc_t17);            % mc_t14=(double,[1, 1],{REAL})
  [mc_t16] = Vz(:);                   % mc_t16=(double,[?, 1],{ANY})
  [mc_t15] = mean(mc_t16);            % mc_t15=(double,[1, 1],{REAL})
  [output] = cellhorzcat(mc_t10, mc_t11, mc_t12, mc_t13, mc_t14, mc_t15); % output=cell(double,[1, 1],{REAL})
  x = 1;                              % x=(double,1.0,[1, 1],{REAL})
end
% results: [(double,1.0,[1, 1],{REAL})]