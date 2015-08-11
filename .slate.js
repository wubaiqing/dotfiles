var alias;

S.cfga({
    defaultToCurrentScreen: true,
      nudgePercentOf: 'screenSize',
        resizePercentOf: 'screenSize'
});

alias = {
    full: S.op('move', {
          x: 'screenOriginX',
              y: 'screenOriginY',
                  width: 'screenSizeX',
                      height: 'screenSizeY'
                          }),
      full_0: S.op('move', {
            x: 'screenOriginX',
                y: 'screenOriginY',
                    width: 'screenSizeX',
                        height: 'screenSizeY 0'
                            }),
        full_1: S.op('move', {
              x: 'screenOriginX',
                  y: 'screenOriginY',
                      width: 'screenSizeX',
                          height: 'screenSizeY 1'
                              }),
          lefthalf: S.op('move', {
                x: 'screenOriginX',
                    y: 'screenOriginY',
                        width: 'screenSizeX/2',
                            height: 'screenSizeY'
                                }),
            leftthird: S.op('move', {
                  x: 'screenOriginX',
                      y: 'screenOriginY',
                          width: 'screenSizeX/3',
                              height: 'screenSizeY'
                                  }),
              righthalf: S.op('move', {
                    x: 'screenOriginX+screenSizeX/2',
                        y: 'screenOriginY',
                            width: 'screenSizeX/2',
                                height: 'screenSizeY'
                                    }),
                rightthird: S.op('move', {
                      x: 'screenOriginX+screenSizeX/3+screenSizeX/3',
                          y: 'screenOriginY',
                              width: 'screenSizeX/3',
                                  height: ' screenSizeY'
                                      }),
                  middlethird: S.op('move', {
                        x: 'screenOriginX+screenSizeX/3',
                            y: 'screenOriginY',
                                width: 'screenSizeX/3',
                                    height: 'screenSizeY'
                                        }),
                    tophalf: S.op('move', {
                          x: 'screenOriginX',
                              y: 'screenOriginY',
                                  width: 'screenSizeX',
                                      height: 'screenSizeY/2'
                                          }),
                      bottomhalf: S.op('move', {
                            x: 'screenOriginX',
                                y: 'screenOriginY+screenSizeY/2',
                                    width: 'screenSizeX',
                                        height: 'screenSizeY/2'
                                            }),
                        topleft: S.op('corner', {
                              direction: 'top-left',
                                  width: 'screenSizeX/2',
                                      height: 'screenSizeY/2'
                                          }),
                          topright: S.op('corner', {
                                direction: 'top-right',
                                    width: 'screenSizeX/2',
                                        height: 'screenSizeY/2'
                                            }),
                            bottomleft: S.op('corner', {
                                  direction: 'bottom-left',
                                      width: 'screenSizeX/2',
                                          height: 'screenSizeY/2'
                                              }),
                              bottomright: S.op('corner', {
                                    direction: 'bottom-right',
                                        width: 'screenSizeX/2',
                                            height: 'screenSizeY/2'
                                                }),
                                enlarge_to_right: S.op('resize', {
                                      width: '+30%',
                                          anchor: 'top-left'
                                              }),
                                  enlarge_to_left: S.op('resize', {
                                        width: '+30%',
                                            anchor: 'bottom-right'
                                                }),
                                    back_to_screen: function() {
                                          var rect, ret, screen;
                                              rect = S.window().rect();
                                                  screen = S.screen();
                                                      return ret = {
                                                              topLeftX: rect.x,
                                                                    topLeftY: rect.y,
                                                                          sizeX: rect.width,
                                                                                sizeY: rect.height,
                                                                                      screen: screen
                                                                                            };
                                                        }
};

S.bindAll({
    'return:alt,shift': alias.full,
      'h:alt,shift': alias.lefthalf,
        'j:alt,shift': alias.bottomhalf,
          'k:alt,shift': alias.tophalf,
            'l:alt,shift': alias.righthalf,
              'h:alt,shift,cmd': alias.leftthird,
                'h:alt,shift,ctrl': alias.leftthird,
                  'i:alt,shift,cmd': alias.middlethird,
                    'i:alt,shift,ctrl': alias.middlethird,
                      'b:alt,shift': alias.bottomleft,
                        'y:alt,shift': alias.topleft,
                          'l:alt,shift,cmd': alias.rightthird,
                            'l:alt,shift,ctrl': alias.rightthird,
                              '.:alt,shift': alias.bottomright,
                                'p:alt,shift': alias.topright,
                                  'o:alt,shift': alias.enlarge_to_right,
                                    'u:alt,shift': alias.enlarge_to_left,
                                      'space:alt,shift': alias.back_to_screen
});
