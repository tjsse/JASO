$(window).bind('load push', function(event) {
  if (location.pathname !== '/map/index') return;
  var position=new AMap.LngLat(121.22131,31.287747);
  var mapObj=new AMap.Map("map-container",{
    view: new AMap.View2D({//创建地图二维视口
          center:position,//创建中心点坐标
          zoom:17, //设置地图缩放级别
          rotation:0 //设置地图旋转角度
        }),
    lang:"zh_cn"//设置地图语言类型，默认：中文简体
  });//创建地图实例
});