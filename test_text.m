function []= test_text() 
 clf;
   ha = {'left', 'center', 'right'};
   va = {'bottom', 'middle', 'top'};
   x = [0.25 0.5 0.75];
   y = x;
   img=imread('auto.png');
   figure,imshow(img);
   for t = 0:30:359;
     for nh = 1:numel (ha)
       for nv = 1:numel (va)
         text (x(nh), y(nv), 'Hello World', ...
               'rotation', t, ...
               'horizontalalignment', ha{nh}, ...
               'verticalalignment', va{nv});
       end
     end
   end
   set (gca, 'xtick', [0.25, 0.5, 0.75], ...
             'xticklabel', ha, ...
             'ytick', [0.25, 0.5, 0.75], ...
             'yticklabel', va);
   axis ([0 1 0 1]);
   xlabel ('horizontal alignment');
   ylabel ('vertical alignment');
   title ('text alignment and rotation (0:30:360 degrees)');
end


imshow(img),text(.5,.6,'hello'),text(.2,.7.'hi');