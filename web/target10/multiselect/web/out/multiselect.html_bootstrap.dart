import "dart:html" as DB;import "dart:async" as FC;import "dart:isolate" as RD;import "dart:collection" as hB;import "dart:uri" as SD;class AD{static const  BD="Chrome";static const  CD="Safari";final  vC;final  minimumVersion;const AD(this.vC,[this.minimumVersion]);}class DD{final  name;const DD(this.name);}final  HB=QC({'The Cat in the Hat':true,'War and Peace':false,'Pride and Prejudice':true,'On the Road':true,'The Hunger Games':true,'The Java Tutorial':false,'The Joy of Cooking':false,'Goodnight Moon':true}); GC(){DB.window.onLoad.listen((i){var g=(DB.query('#bookselector') as DB.SelectElement).options;print(g.length);g.forEach((h)=>h.selected=HB[h.value]);});} get HC{return HB.keys.where((g)=>HB[g]).toList();} IC( g){var h=(DB.query('#bookselector') as DB.SelectElement).selectedOptions;HB.forEach((i,j)=>HB[i]=false);h.forEach((g)=>HB[g.value]=true);} JC(){var YD=DB.document.body;final ZD=new DB.Element.html('<h4>You chose:</h4>'),aD=new DB.Element.html('<select multiple="" id="bookselector">\n            <option style="display:none"></option>\n        </select>'),bD=new DB.Element.html('<option template="" repeat="key in books.keys"></option>'),cD=new DB.Element.html('<ul>\n           <li style="display:none"></li>\n        </ul>'),dD=new DB.Element.html('<li template="" repeat="selected in booksselected"></li>');var eD;var fD=new tB(YD);eD=YD.nodes[3].nodes[3];fD.xC(eD,()=>!HB.isEmpty,(fD){var gD,hD,iD,jD;hD=aD.clone(true);gD=hD.nodes[1];fD.loop(gD,()=>HB.keys,(h,g,fD){var j=h[g];var kD;kD=bD.clone(true);var lD=fD.AC(()=>j,false);kD.nodes.add(lD);fD.yC(()=>j,(i){if(kD.value!=i)kD.value=i;},false,false);fD.add(kD);});fD.listen(hD.onChange,(m){IC(m);});jD=cD.clone(true);iD=jD.nodes[1];fD.loop(iD,()=>HC,(h,g,fD){var EB=h[g];var mD;mD=dD.clone(true);var nD=fD.AC(()=>EB,false);mD.nodes.add(nD);fD.add(mD);});fD.addAll([new DB.Text('\n        \n        '),new DB.Text('\n        '),hD,new DB.Text('\n\n        '),ZD.clone(true),new DB.Text('\n        '),jD,new DB.Text('\n      ')]);});fD.aB();fD.insert();}main(){vB=false;GC();JC();}class KC<IB> extends gC with q implements List<IB>{final  oD;KC([ length]):oD=length!=null?new List<IB>(length):<IB>[] ;factory KC.TD( g)=>new KC<IB>()..addAll(g); get length{if(o)v(this,k.p,'length');return oD.length;}set length( h){var i=oD.length;if(i==h)return;if(GB(this)){if(h<i){for(int g=i-1;g>=h;g-- ){l(this,k.LB,g,oD[g],null);}l(this,k.p,'length',i,h);}else{l(this,k.p,'length',i,h);for(int g=i;g<h;g++ ){l(this,k.KB,g,null,null);}}}oD.length=h;} operator[]( g){if(o)v(this,k.BB,g);return oD[g];}operator[]=( g, h){var i=oD[g];if(GB(this)){l(this,k.BB,g,i,h);}oD[g]=h;} sublist( g,[ end])=>new KC<IB>.TD(super.sublist(g,end)); add( h){var g=oD.length;if(GB(this)){l(this,k.p,'length',g,g+1);l(this,k.KB,g,null,h);}oD.add(h);} toString(){if(o){for(int g=0;g<length;g++ ){v(this,k.BB,g);}}return oD.toString();}}typedef  TB<s,n>();class PB<s,n> extends q implements Map<s,n>{final  pD;var qD;var rD;PB({ createMap}):pD=createMap!=null?createMap():new Map<s,n>(){qD=new LC<s,n>(this);rD=new MC<s,n>(this);}factory PB.UD( i,{ createMap}){var g=new PB<s,n>(createMap:createMap);i.forEach(( h, j){g[h]=j;});return g;} get keys=>qD; get values=>rD; get length{if(o)v(this,k.p,'length');return pD.length;} get isEmpty=>length==0; sD( g)=>v(this,k.BB,g); tD(){v(this,k.p,'length');pD.keys.forEach(sD);} containsKey( g){if(o)sD(g);return pD.containsKey(g);} operator[]( g){if(o)sD(g);return pD[g];} operator[]=( h, g){var j=pD.length;var i=pD[h];pD[h]=g;if(GB(this)){if(j!=pD.length){l(this,k.p,'length',j,pD.length);l(this,k.KB,h,i,g);}else if(i!=g){l(this,k.BB,h,i,g);}}} putIfAbsent( g, j()){if(o)sD(g);var h=pD.length;var i=pD.putIfAbsent(g,j);if(GB(this)&&h!=pD.length){l(this,k.p,'length',h,pD.length);l(this,k.KB,g,null,i);}return i;} remove( g){if(o)sD(g);var h=pD.length;var i=pD.remove(g);if(GB(this)&&h!=pD.length){l(this,k.LB,g,i,null);l(this,k.p,'length',h,pD.length);}return i;} clear(){var g=pD.length;if(GB(this)&&g>0){pD.forEach((i,h){l(this,k.LB,i,h,null);});l(this,k.p,'length',g,0);}pD.clear();} forEach( g( key, value)){if(o)tD();pD.forEach(g);} toString()=>hB.Maps.mapToString(this);}class LC<s,n> extends hB.IterableBase<s>{final  pD;LC(this.pD); get iterator=>new ED<s,n>(pD);}class ED<s,n> implements Iterator<s>{final  pD;final  qD;var uD=false;ED( g):pD=g,qD=g.pD.keys.iterator; moveNext(){if(o)v(pD,k.p,'length');return uD=qD.moveNext();} get current{var g=qD.current;if(o&&uD)pD.sD(g);return g;}}class MC<s,n> extends hB.IterableBase<n>{final  pD;MC(this.pD); get iterator=>new FD<s,n>(pD);}class FD<s,n> implements Iterator<n>{final  pD;final  qD;final  rD;var uD;FD( g):pD=g,qD=g.pD.keys.iterator,rD=g.pD.values.iterator; moveNext(){if(o)v(pD,k.p,'length');var h=qD.moveNext();var g=rD.moveNext();if(h!=g){throw new StateError('keys and values should be the same length');}return uD=g;} get current{if(o&&uD)pD.sD(qD.current);return rD.current;}}typedef  FB( e);typedef  NC( changes);typedef  JB();typedef  OC();class cB{final oldValue;final newValue;final  changes;cB(this.oldValue,this.newValue,[this.changes]); operator==(g){return g is cB&&oldValue==g.oldValue&&newValue==g.newValue&&changes==g.changes;} get hashCode=>cC(oldValue,newValue,changes); toString(){if(changes!=null)return '#<ChangeNotification to ${newValue}: ${changes}>';return '#<ChangeNotification from ${oldValue} to ${newValue}>';}}class k{static const p=1;static const BB=2;static const KB=BB|4;static const LB=BB|8;final  type;final key;final oldValue;final newValue;k(this.type,this.key,this.oldValue,this.newValue); operator==(g){return g is k&&type==g.type&&key==g.key&&oldValue==g.oldValue&&newValue==g.newValue;} get hashCode=>dC(type,key,oldValue,newValue); toString(){var g;switch (type){case p:g='field';break;case BB:g='index';break;case KB:g='insert';break;case LB:g='remove';break;}return '#<ChangeRecord ${g} ${key} from ${oldValue} to ${newValue}>';}} PC(g, i,[ debugName]){if(g is q){var h=g;return iB(h,(m){i(new cB(h,h,m));});}var j=new dB(g,i,debugName);if(!j.vD()){return SC;}return j.wD;} iB( g, i){if(g.SB==null)g.SB=new jB();var h=g.SB.add(i);return h.remove;}QC(g){if(g is Map){var h=null;if(g is hB.SplayTreeMap){h=()=>new hB.SplayTreeMap();}else if(g is hB.LinkedHashMap){h=()=>new hB.LinkedHashMap();}return new PB.UD(g,createMap:h);}if(g is Set)return new sB.VD(g);if(g is Iterable)return new KC.TD(g);return g;}class q{var SB;var RB;final  hashCode= ++q.RC;static var RC=0;} GB( g)=>g.SB!=null&&g.SB.head!=null; get o=>QB!=null; v( g, h,i)=>QB.xD(g,h,i); l( g, j,m, h, i){if((j&(k.KB|k.LB))==0){if(h==i)return;}if(MB==null){MB=[] ;eC(TC);}if(g.RB==null){g.RB=[] ;MB.add(g);}g.RB.add(new k(j,m,h,i));} SC(){}var QB;var rB=100;var MB;var NB; TC(){var EB=0;while (MB!=null||NB!=null){var j=MB;MB=null;var i=NB;NB=null;if(EB++ ==rB){UC(j,i);return;}if(j!=null){for(var h in j){var bB=h.RB;h.RB=null;for(var g=h.SB.head;g!=null;g=g.next){var m=g.value;try {m(bB);}catch (qB,OB){UB(qB,OB,m,'from ${h}');}}}}if(i!=null){i.forEach((QD,zC){zC.yD();});}}} UC( m, j){var g=[] ;if(m!=null){for(var i in m){var bB=i.RB;g.add('${i} ${bB}');}}if(j!=null){for(var EB in j.values){var h=EB.yD();if(h!=null)g.add('${EB} ${h}');}}MB=null;NB=null;var OB='exceeded notifiction limit of ${rB}, possible ' 'circular reference in observer callbacks: ${g.take(10).join(", ")}';XC(OB);}class dB{static var VC=0;final  zD= ++dB.VC;final  AE;final  BE;final  CE;final  DE=new Map();final  EE=[] ;var FE=false;var GE;dB(this.AE,this.BE,this.CE); toString()=>CE!=null?'<observer ${zD}: ${CE}>':'<observer ${zD}>'; vD(){var h=QB;QB=this;try {GE=AE();if(GE is Iterable&&GE is !List&&GE is !q){GE=(GE as Iterable).toList();}}catch (g,i){UB(g,i,AE,'from ${this}');GE=null;}DE.forEach(HE);DE.clear();assert(QB==this);QB=h;IE();return EE.length>0;} JE( i){try {BE(i);}catch (g,h){UB(g,h,BE,'from ${this}');}} IE(){var g=GE;if(g is !q)return;EE.add(iB(g,(h){JE(new cB(g,g,h));}));} xD( EB, OB,g){var i=DE.putIfAbsent(EB,()=>new Map());try {var h=i[g];if(h==null)h=0;i[g]=h|OB;}catch (j,m){UB(j,m,g,'hashCode or operator == from ${this}');}} HE( i, j){EE.add(iB(i,(m){if(FE)return;for(var g in m){var h=j[g.key];if(h!=null&&(h&g.type)!=0){FE=true;if(NB==null){NB=new hB.SplayTreeMap();}NB[zD]=this;return;}}}));} wD(){for(var g in EE){g();}FE=false;} yD(){if(!FE)return null;var g=GE;wD();vD();try {if(g==GE)return null;}catch (i,j){UB(i,j,g,'operator == from ${this}');return null;}var h=new cB(g,GE);JE(h);return h;}}typedef  WC( message);var XC=(g)=>print(g);typedef  YC(error,stackTrace,obj, message);var UB=ZC; ZC(i,g,h, j){print('web_ui.observe: unhandled error calling ${h} ${j}.\n' 'error:\n${i}\n\nstack trace:\n${g}');}class sB<CB> extends fC with q implements Set<CB>{final  KE;final  LE;sB({ createMap}):KE=createMap!=null?createMap():new Map<CB,Object>(),LE=createMap;factory sB.VD( g,{ createMap}){return new sB<CB>(createMap:createMap)..addAll(g);} contains( g){if(o)v(this,k.BB,g);return KE.containsKey(g);} add( g){var h=KE.length;KE[g]=const Object();if(h!=KE.length){l(this,k.p,'length',h,KE.length);l(this,k.KB,g,null,g);}} remove( g){if(o)v(this,k.BB,g);var h=KE.length;KE.remove(g);if(h!=KE.length){if(GB(this)){l(this,k.LB,g,g,null);l(this,k.p,'length',h,KE.length);}return true;}return false;} clear(){if(GB(this)){for(var g in KE.keys){l(this,k.LB,g,g,null);}l(this,k.p,'length',KE.length,0);}KE.clear();} get length{if(o)v(this,k.p,'length');return KE.length;} get isEmpty=>length==0; get iterator=>new GD<CB>(this); addAll( g)=>g.forEach(add); toString(){if(o){for(CB g in KE.keys){v(this,k.BB,g);}}return KE.keys.toSet().toString();}}class GD<CB> implements Iterator<CB>{final  ME;final  NE;var OE=false;GD( g):ME=g,NE=g.KE.keys.iterator; moveNext(){ME.length;return OE=NE.moveNext();} get current{var g=NE.current;if(o&&OE)v(ME,k.BB,g);return g;}}class aC{aC();}class bC{bC();}class w<AB>{var PE;var QE;var RE;var SE;w.WD( g,this.RE):SE=g{if(RE!=null)RE.TE++ ;} get next=>QE; get value=>SE;set value( g)=>SE=g; UE( g, h){QE=h;PE=g;if(g!=null)g.QE=this;if(h!=null)h.PE=this;return this;} append( g)=>new w<AB>.WD(g,RE).UE(this,QE); remove(){if(RE==null)return;RE.TE-- ;if(PE!=null){PE.QE=QE;}else{RE.VE=QE;}if(QE!=null){QE.PE=PE;}else{RE.WE=PE;}QE=null;PE=null;RE=null;}}class jB<AB> extends hB.IterableBase<AB>{var VE;var WE; get length=>TE;var TE=0;jB(){} get head=>VE; add( h){var g=new w<AB>.WD(h,this);if(WE==null)return VE=WE=g;return WE=g.UE(WE,null);} addLast( g)=>add(g); addAll( g)=>g.forEach(add); get iterator=>new HD<AB>(this);}class HD<AB> implements Iterator<AB>{var XE;var RE;var YE;var ZE=-1;HD(this.RE){XE=new List<w>(RE.length);var h=0;var g=RE.head;while (g!=null){XE[h++ ]=g;g=g.next;}} get current=>YE; moveNext(){do{ZE++ ;}while(ZE<XE.length&&XE[ZE].RE!=RE);if(ZE<XE.length){YE=XE[ZE].value;return true;}else{YE=null;return false;}}}VB(h,g)=>h.hashCode*31+g.hashCode;cC(h,g,i)=>VB(VB(h,g),i);dC(g,i,h,j)=>VB(VB(g,i),VB(h,j)); eC( h()){var g=new RD.ReceivePort();g.receive((i,j){g.close();h();});g.toSendPort().send(null);}abstract class fC extends hB.IterableBase<dynamic>{}abstract class gC extends hB.ListMixin<dynamic>{} hC(h, g,[ stringValue]){var i=h is aC;if(stringValue==null){stringValue=h.toString();}if(!i&&g is DB.Text){g.text=stringValue;}else{var j=g;g=i?new DB.Element.html(stringValue):new DB.Text(stringValue);j.replaceWith(g);}return g;} iC(g){if(g is bC)return g.toString();g=g.toString();return kC(g)?g:'#';}const jC=const["http","https","ftp","mailto"]; kC( h){var g=new SD.Uri(h).scheme;if(g=='')return true;return jC.contains(g.toLowerCase())||"MAILTO"==g.toUpperCase();}abstract class WB{ aB(){} insert(); remove();}class ID extends WB{final  BC;var aE;final  listener;ID(this.BC,this.listener); insert(){aE=BC.listen(listener);} remove(){aE.cancel();aE=null;}}class JD extends WB{final exp;final  action;final  isFinal;var t;JD(this.exp,this.action,this.isFinal); insert(){if(isFinal){action(new cB(null,exp()));}else if(t!=null){throw new StateError('binding already attached');}else{t=eB(exp,action,'generic-binding');}} remove(){if(!isFinal){t();t=null;}}}class KD extends WB{final  EC;final  oB;final  CC;final  isFinal;var t;KD(this.oB,this.EC,this.CC,this.isFinal); bE(g){EC(CC?iC(g):g);} insert(){if(isFinal){bE(oB());}else if(t!=null){throw new StateError('data binding already attached.');}else{t=eB(oB,(g)=>bE(g.newValue),'dom-property-binding');}} remove(){if(!isFinal){t();t=null;}}}class tB extends WB{final  pB;final  children=[] ;final  nodes=[] ;tB(this.pB); listen( i, h){children.add(new ID(i,(g){h(g);qC();}));} AC( h,i){var g=new DB.Text('');children.add(new JD(()=>'${h()}',(j){g=hC(h(),g,j.newValue);},i));return g;} yC(g,i,h,[isUrl=false]){children.add(new KD(g,i,isUrl,h));} xC( h,g,i){children.add(new mC(h,g,i));} loop( h,g,i){children.add(new LD(h,g,i));} add( g)=>nodes.add(g); addAll( g)=>nodes.addAll(g); aB(){for(var g=0,h=children.length;g<h;g++ ){children[g].aB();}} insert(){for(var g=0,h=children.length;g<h;g++ ){children[g].insert();}} remove(){for(var g=children.length-1;g>=0;g-- ){children[g].remove();}children.clear();}}abstract class uB extends tB{final exp;var t;uB( g,this.exp):super(g); aB(){} insert(){super.aB();if(nodes.length>0){var i=pB.parentNode;var j=pB.nextNode;for(var g=0,h=nodes.length;g<h;g++ ){i.insertBefore(nodes[g],j);}}super.insert();} remove(){super.remove();for(var g=nodes.length-1;g>=0;g-- ){nodes[g].remove();}nodes.clear();}}typedef  lC( template);class mC extends uB{var gB=false;final  zB;mC( h,g,this.zB):super(h,g); insert(){t=eB(exp,(g){if(!gB&&g.newValue){zB(this);super.insert();gB=true;}else if(gB&&!g.newValue){super.remove();gB=false;}},'conditional-binding');} remove(){super.remove();t();t=null;}}typedef  nC( list, index, template);class LD extends uB{final  DC;LD( h,g,this.DC):super(h,g); insert(){t=eB(exp,(i){super.remove();var h=i.newValue;for(int g=0;g<h.length;g++ ){DC(h,g,this);}super.insert();},'loop-binding');} remove(){super.remove();t();t=null;}}var vB=false; oC(g, m,[ debugName]){if(vB)return PC(g,m);if(m==null)return (){};if(XB==null)XB=new jB<YB>();var i;var h=u.uC;if(g is yB){i=(g as yB).cE;}else if(g is Function){i=g;try {var j=g();if(j is List){h=u.ZB;}else if(j is Iterable){h=u.ZB;i=()=>g().toList();}else if((j is hB.LinkedHashMap)||(j is hB.SplayTreeMap)){h=u.mB;}else if(j is Map){h=u.lB;}}catch (EB,qB){print('error: evaluating ${debugName!=null?debugName:"<unnamed>"} ' 'watcher threw error (${EB}, ${qB})');}}else if(g is List){i=()=>g;h=u.ZB;}else if(g is Iterable){i=()=>g.toList();h=u.ZB;}else if((g is hB.LinkedHashMap)||(g is hB.SplayTreeMap)){i=()=>g;h=u.mB;}else if(g is Map){i=()=>g;h=u.lB;}var OB=pC(h,i,m,debugName);var bB=XB.add(OB);return bB.remove;} pC( j, g, i, h){switch (j){case u.ZB:return new MD(g,i,h);case u.mB:return new OD(g,i,h);case u.lB:return new ND(g,i,h);default:return new YB(g,i,h);}} eB(h,i,[debugName]){var j=oC(h,i,debugName);var g=h;if(g is Function){g=g();}if(g is Iterable&&g is !List){g=g.toList();}i(new cB(null,g));return j;}var XB;class YB{final  nB;final  cE;final  dE;var eE;YB(this.cE,this.dE,this.nB){eE=cE();} toString()=>nB==null?'<unnamed>':nB; wC(){var g=fE();if(gE(g)){var h=eE;hE(g);dE(new cB(h,g));return true;}return false;} gE(g)=>eE!=g; hE(g){eE=g;}fE(){try {return cE();}catch (g,h){print('error: evaluating ${this} watcher threw an exception (${g}, ${h})');}return eE;}}final  wB=10; qC(){if(XB==null)return;var g;var h=0;do{g=false;for(var i in XB){if(i.wC()){g=true;}}}while(g&& ++h<wB);if(h==wB){print('Possible loop in watchers propagation, stopped dispatch.');}}typedef  xB<rC>();typedef  sC<rC>( value);class yB<rC>{yB();}class MD<rC> extends YB{MD(g, i, h):super(g,i,h){hE(fE());} gE( g){return kB(eE,g);} hE(g){eE=new List<rC>.from(g);}}class ND<fB,tC> extends YB{ND(g, i, h):super(g,i,h){hE(fE());} gE( g){var i=eE.keys;if(i.length!=g.keys.length)return true;var j=i.iterator;while (j.moveNext()){var h=j.current;if(!g.containsKey(h))return true;if(eE[h]!=g[h])return true;}return false;} hE(g){eE=new Map<fB,tC>.from(g);}}class OD<fB,tC> extends YB{OD(g, i, h):super(g,i,h){hE(fE());} gE( g){return kB(g.keys,eE.keys)||kB(g.values,eE.values);} hE(g){eE=new hB.LinkedHashMap.from(g);}} kB( i, j){var h=i.iterator;var g=j.iterator;while (h.moveNext()){if(!g.moveNext())return true;if(h.current!=g.current)return true;}return g.moveNext();}class u{final iE;const u.XD(this.iE);toString()=>'Enum.${iE}';static const ZB=const u.XD('LIST');static const lB=const u.XD('HASH_MAP');static const mB=const u.XD('ORDERED_MAP');static const uC=const u.XD('OTHER');}//@ sourceMappingURL=multiselect.html_bootstrap.dart.map
