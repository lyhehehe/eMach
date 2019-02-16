clc
clear
[mn, doc] = mn_open();
set(mn, 'Visible', true);
mn_d_setDefaultLengthUnit(doc, 'millimeters', false);
    
trap = compTrapezoid('name', 'trapezoid1', ...
    'dim_h' , dimMillimeter(10), ...
    'dim_w' , dimMillimeter(40), ...
    'dim_theta' , dimDegree(60).toRadians, ...
    'dim_depth' , dimMillimeter(10), ...
    'material' , matGeneric('name', 'pm'), ...
    'location', compLocation('anchor_xyz', dimMillimeter([0,0,0])) ...
    );

arc_segs = mn_drawTrapezoid(mn, trap);
mn_dv_viewAll(mn);