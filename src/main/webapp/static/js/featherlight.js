!function(e){"use strict";function t(e,n){if(!(this instanceof t)){var r=new t(e,n);return r.open(),r}this.id=t.id++,this.setup(e,n),this.chainCallbacks(t._callbackChain)}function n(e,t){var n={};for(var r in e)r in t&&(n[r]=e[r],delete e[r]);return n}function r(e,t){var n={},r=new RegExp("^"+t+"([A-Z])(.*)");for(var i in e){var o=i.match(r);if(o){var a=(o[1]+o[2].replace(/([A-Z])/g,"-$1")).toLowerCase();n[a]=e[i]}}return n}if("undefined"==typeof e)return void("console"in window&&window.console.info("Too much lightness, Featherlight needs jQuery."));var i=[],o=function(t){return i=e.grep(i,function(e){return e!==t&&e.$instance.closest("body").length>0})},a={allowfullscreen:1,frameborder:1,height:1,longdesc:1,marginheight:1,marginwidth:1,name:1,referrerpolicy:1,scrolling:1,sandbox:1,src:1,srcdoc:1,width:1},s={keyup:"onKeyUp",resize:"onResize"},c=function(n){e.each(t.opened().reverse(),function(){return n.isDefaultPrevented()||!1!==this[s[n.type]](n)?void 0:(n.preventDefault(),n.stopPropagation(),!1)})},u=function(n){if(n!==t._globalHandlerInstalled){t._globalHandlerInstalled=n;var r=e.map(s,function(e,n){return n+"."+t.prototype.namespace}).join(" ");e(window)[n?"on":"off"](r,c)}};t.prototype={constructor:t,namespace:"featherlight",targetAttr:"data-featherlight",variant:null,resetCss:!1,background:null,openTrigger:"click",closeTrigger:"click",filter:null,root:"body",openSpeed:250,closeSpeed:250,closeOnClick:"background",closeOnEsc:!0,closeIcon:"&#10005;",loading:"",persist:!1,otherClose:null,beforeOpen:e.noop,beforeContent:e.noop,beforeClose:e.noop,afterOpen:e.noop,afterContent:e.noop,afterClose:e.noop,onKeyUp:e.noop,onResize:e.noop,type:null,contentFilters:["jquery","image","html","ajax","iframe","text"],setup:function(t,n){"object"!=typeof t||t instanceof e!=!1||n||(n=t,t=void 0);var r=e.extend(this,n,{target:t}),i=r.resetCss?r.namespace+"-reset":r.namespace,o=e(r.background||['<div class="'+i+"-loading "+i+'">','<div class="'+i+'-content">','<button class="'+i+"-close-icon "+r.namespace+'-close" aria-label="Close">',r.closeIcon,"</button>",'<div class="'+r.namespace+'-inner">'+r.loading+"</div>","</div>","</div>"].join("")),a="."+r.namespace+"-close"+(r.otherClose?","+r.otherClose:"");return r.$instance=o.clone().addClass(r.variant),r.$instance.on(r.closeTrigger+"."+r.namespace,function(t){var n=e(t.target);("background"===r.closeOnClick&&n.is("."+r.namespace)||"anywhere"===r.closeOnClick||n.closest(a).length)&&(r.close(t),t.preventDefault())}),this},getContent:function(){if(this.persist!==!1&&this.$content)return this.$content;var t=this,n=this.constructor.contentFilters,r=function(e){return t.$currentTarget&&t.$currentTarget.attr(e)},i=r(t.targetAttr),o=t.target||i||"",a=n[t.type];if(!a&&o in n&&(a=n[o],o=t.target&&i),o=o||r("href")||"",!a)for(var s in n)t[s]&&(a=n[s],o=t[s]);if(!a){var c=o;if(o=null,e.each(t.contentFilters,function(){return a=n[this],a.test&&(o=a.test(c)),!o&&a.regex&&c.match&&c.match(a.regex)&&(o=c),!o}),!o)return"console"in window&&window.console.error("Featherlight: no content filter found "+(c?' for "'+c+'"':" (no target specified)")),!1}return a.process.call(t,o)},setContent:function(t){var n=this;return t.is("iframe")&&n.$instance.addClass(n.namespace+"-iframe"),n.$instance.removeClass(n.namespace+"-loading"),n.$instance.find("."+n.namespace+"-inner").not(t).slice(1).remove().end().replaceWith(e.contains(n.$instance[0],t[0])?"":t),n.$content=t.addClass(n.namespace+"-inner"),n},open:function(t){var n=this;if(n.$instance.hide().appendTo(n.root),!(t&&t.isDefaultPrevented()||n.beforeOpen(t)===!1)){t&&t.preventDefault();var r=n.getContent();if(r)return i.push(n),u(!0),n.$instance.fadeIn(n.openSpeed),n.beforeContent(t),e.when(r).always(function(e){n.setContent(e),n.afterContent(t)}).then(n.$instance.promise()).done(function(){n.afterOpen(t)})}return n.$instance.detach(),e.Deferred().reject().promise()},close:function(t){var n=this,r=e.Deferred();return n.beforeClose(t)===!1?r.reject():(0===o(n).length&&u(!1),n.$instance.fadeOut(n.closeSpeed,function(){n.$instance.detach(),n.afterClose(t),r.resolve()})),r.promise()},resize:function(e,t){if(e&&t){this.$content.css("width","").css("height","");var n=Math.max(e/(parseInt(this.$content.parent().css("width"),10)-1),t/(parseInt(this.$content.parent().css("height"),10)-1));n>1&&(n=t/Math.floor(t/n),this.$content.css("width",""+e/n+"px").css("height",""+t/n+"px"))}},chainCallbacks:function(t){for(var n in t)this[n]=e.proxy(t[n],this,e.proxy(this[n],this))}},e.extend(t,{id:0,autoBind:"[data-featherlight]",defaults:t.prototype,contentFilters:{jquery:{regex:/^[#.]\w/,test:function(t){return t instanceof e&&t},process:function(t){return this.persist!==!1?e(t):e(t).clone(!0)}},image:{regex:/\.(png|jpg|jpeg|gif|tiff|bmp|svg)(\?\S*)?$/i,process:function(t){var n=this,r=e.Deferred(),i=new Image,o=e('<img src="'+t+'" alt="" class="'+n.namespace+'-image" />');return i.onload=function(){o.naturalWidth=i.width,o.naturalHeight=i.height,r.resolve(o)},i.onerror=function(){r.reject(o)},i.src=t,r.promise()}},html:{regex:/^\s*<[\w!][^<]*>/,process:function(t){return e(t)}},ajax:{regex:/./,process:function(t){var n=e.Deferred(),r=e("<div></div>").load(t,function(e,t){"error"!==t&&n.resolve(r.contents()),n.fail()});return n.promise()}},iframe:{process:function(t){var i=new e.Deferred,o=e("<iframe/>"),s=r(this,"iframe"),c=n(s,a);return o.hide().attr("src",t).attr(c).css(s).on("load",function(){i.resolve(o.show())}).appendTo(this.$instance.find("."+this.namespace+"-content")),i.promise()}},text:{process:function(t){return e("<div>",{text:t})}}},functionAttributes:["beforeOpen","afterOpen","beforeContent","afterContent","beforeClose","afterClose"],readElementConfig:function(t,n){var r=this,i=new RegExp("^data-"+n+"-(.*)"),o={};return t&&t.attributes&&e.each(t.attributes,function(){var t=this.name.match(i);if(t){var n=this.value,a=e.camelCase(t[1]);if(e.inArray(a,r.functionAttributes)>=0)n=new Function(n);else try{n=JSON.parse(n)}catch(s){}o[a]=n}}),o},extend:function(t,n){var r=function(){this.constructor=t};return r.prototype=this.prototype,t.prototype=new r,t.__super__=this.prototype,e.extend(t,this,n),t.defaults=t.prototype,t},attach:function(t,n,r){var i=this;"object"!=typeof n||n instanceof e!=!1||r||(r=n,n=void 0),r=e.extend({},r);var o,a=r.namespace||i.defaults.namespace,s=e.extend({},i.defaults,i.readElementConfig(t[0],a),r),c=function(a){var c=e.extend({$source:t,$currentTarget:e(this)},i.readElementConfig(t[0],s.namespace),i.readElementConfig(this,s.namespace),r),u=o||e(this).data("featherlight-persisted")||new i(n,c);"shared"===u.persist?o=u:u.persist!==!1&&e(this).data("featherlight-persisted",u),c.$currentTarget.blur(),u.open(a)};return t.on(s.openTrigger+"."+s.namespace,s.filter,c),c},current:function(){var e=this.opened();return e[e.length-1]||null},opened:function(){var t=this;return o(),e.grep(i,function(e){return e instanceof t})},close:function(e){var t=this.current();return t?t.close(e):void 0},_onReady:function(){var t=this;t.autoBind&&(e(t.autoBind).each(function(){t.attach(e(this))}),e(document).on("click",t.autoBind,function(n){if(!n.isDefaultPrevented()){var r=t.attach(e(n.currentTarget));r(n)}}))},_callbackChain:{onKeyUp:function(t,n){return 27===n.keyCode?(this.closeOnEsc&&e.featherlight.close(n),!1):t(n)},beforeOpen:function(t,n){return this._previouslyActive=document.activeElement,this._$previouslyTabbable=e("a, input, select, textarea, iframe, button, iframe, [contentEditable=true]").not("[tabindex]").not(this.$instance.find("button")),this._$previouslyWithTabIndex=e("[tabindex]").not('[tabindex="-1"]'),this._previousWithTabIndices=this._$previouslyWithTabIndex.map(function(t,n){return e(n).attr("tabindex")}),this._$previouslyWithTabIndex.add(this._$previouslyTabbable).attr("tabindex",-1),document.activeElement.blur(),t(n)},afterClose:function(t,n){var r=t(n),i=this;return this._$previouslyTabbable.removeAttr("tabindex"),this._$previouslyWithTabIndex.each(function(t,n){e(n).attr("tabindex",i._previousWithTabIndices[t])}),this._previouslyActive.focus(),r},onResize:function(e,t){return this.resize(this.$content.naturalWidth,this.$content.naturalHeight),e(t)},afterContent:function(e,t){var n=e(t);return this.$instance.find("[autofocus]:not([disabled])").focus(),this.onResize(t),n}}}),e.featherlight=t,e.fn.featherlight=function(e,n){return t.attach(this,e,n),this},e(document).ready(function(){t._onReady()})}(jQuery);