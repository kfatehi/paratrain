(function(){var e;window.Paratrain=e=function(){function e(){this.gui=$("#paratrain"),this.listener={start:function(){return $("#paratrain mic").show()}},this.gui.find("button#startrecording").click(function(){return alert("sup")}),this.gui.show()}return e.prototype.deviceReady=function(){return this.listener.start()},e.prototype.soundOccurred=function(e){return processSound},e}()}).call(this);