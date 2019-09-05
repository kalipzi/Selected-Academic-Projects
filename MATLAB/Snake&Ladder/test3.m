%# create GUI figure - could set plenty of options here, of course
guiFig = figure;

%# create callback that stores the state in UserData, and picks from
%# one of two choices
choices = {'start','stop'};
cbFunc = @(hObject,eventdata)set(hObject,'UserData',~get(hObject,'UserData'),...
          'string',choices{1+get(hObject,'UserData')});

%# create the button
uicontrol('parent',guiFig,'style','pushbutton',...
          'string','start','callback',cbFunc,'UserData',true,...
          'units','normalized','position',[0.4 0.4 0.2 0.2])