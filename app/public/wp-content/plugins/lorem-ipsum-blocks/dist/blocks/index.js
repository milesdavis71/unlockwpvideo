!function(e){var r={};function t(o){if(r[o])return r[o].exports;var a=r[o]={i:o,l:!1,exports:{}};return e[o].call(a.exports,a,a.exports,t),a.l=!0,a.exports}t.m=e,t.c=r,t.d=function(e,r,o){t.o(e,r)||Object.defineProperty(e,r,{enumerable:!0,get:o})},t.r=function(e){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},t.t=function(e,r){if(1&r&&(e=t(e)),8&r)return e;if(4&r&&"object"==typeof e&&e&&e.__esModule)return e;var o=Object.create(null);if(t.r(o),Object.defineProperty(o,"default",{enumerable:!0,value:e}),2&r&&"string"!=typeof e)for(var a in e)t.d(o,a,function(r){return e[r]}.bind(null,a));return o},t.n=function(e){var r=e&&e.__esModule?function(){return e.default}:function(){return e};return t.d(r,"a",r),r},t.o=function(e,r){return Object.prototype.hasOwnProperty.call(e,r)},t.p="",t(t.s=2)}([function(e,r){!function(){e.exports=this.wp.i18n}()},function(e,r){!function(){e.exports=this.wp.blocks}()},function(e,r,t){"use strict";t.r(r);var o=t(0),a=t(1),n=window.loremIpsumVars,i="lorem-ipsum-blocks";Object(a.registerBlockVariation)("core/paragraph",[{name:"lorem-paragraph",title:Object(o.__)("Lorem Paragraph (Short)","lorem-ipsum-blocks"),attributes:{content:n.loremTextShort},category:i,scope:["transform"]}]),Object(a.registerBlockVariation)("core/paragraph",[{name:"lorem-paragraph--short",title:Object(o.__)("Lorem Paragraph","lorem-ipsum-blocks"),attributes:{content:n.loremText},category:i,scope:["inserter","transform"]}]),Object(a.registerBlockVariation)("core/paragraph",[{name:"lorem-paragraph--long",title:Object(o.__)("Lorem Paragraph (Long)","lorem-ipsum-blocks"),attributes:{content:n.loremTextLong},category:i,scope:["transform"]}]),Object(a.registerBlockVariation)("core/paragraph",[{name:"lorem-paragraph--full",title:Object(o.__)("Lorem Paragraph (Full)","lorem-ipsum-blocks"),attributes:{content:n.loremTextFull},category:i,scope:["transform"]}]),Object(a.registerBlockVariation)("core/list",[{name:"lorem-list",title:Object(o.__)("Lorem List","lorem-ipsum-blocks"),attributes:{values:n.loremList},category:i}]),Object(a.registerBlockVariation)("core/heading",[{name:"lorem-heading",title:Object(o.__)("Lorem Heading","lorem-ipsum-blocks"),attributes:{content:n.loremTextHeading,level:2},category:i}]),Object(a.registerBlockVariation)("core/image",[{name:"lorem-image",title:Object(o.__)("Lorem Image","lorem-ipsum-blocks"),attributes:{url:n.loremImage},category:i}]);var c=["core/button",{text:Object(o.__)("Lorem Button","lorem-ipsum-blocks")}];Object(a.registerBlockVariation)("core/buttons",[{name:"lorem-buttons",title:Object(o.__)("Lorem Buttons","lorem-ipsum-blocks"),attributes:{contentJustification:"center"},innerBlocks:[c],category:i}]);var l=["core/paragraph",{content:n.loremText}],m=["core/image",{url:n.loremImage}];Object(a.registerBlockVariation)("core/columns",[{name:"lorem-columns",title:Object(o.__)("Lorem Columns","lorem-ipsum-blocks"),innerBlocks:[["core/column",{},[m,l]],["core/column",{},[m,l]]],category:i}]),Object(a.registerBlockVariation)("core/media-text",[{name:"lorem-media-text",title:Object(o.__)("Lorem Media & Text","lorem-ipsum-blocks"),attributes:{mediaType:"image",mediaUrl:n.loremMediaImage},innerBlocks:[["core/paragraph",{fontSize:"large",content:n.loremTitle}],l],category:i}])}]);