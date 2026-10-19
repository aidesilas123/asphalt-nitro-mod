package com.fyber.inneractive.sdk.flow;

import android.app.Application;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.external.InneractiveError;
import com.fyber.inneractive.sdk.external.InneractiveErrorCode;
import com.fyber.inneractive.sdk.external.InneractiveInfrastructureError;
import com.fyber.inneractive.sdk.measurement.a;
import com.fyber.inneractive.sdk.network.s;
import com.fyber.inneractive.sdk.ui.IAmraidWebViewController;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.web.d;
import com.fyber.inneractive.sdk.web.i;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes2.dex */
public class n extends h<com.fyber.inneractive.sdk.response.f, b0> {
    public IAmraidWebViewController m;
    public d.InterfaceC0201d n = new a();

    public class a implements d.InterfaceC0201d {
        public a() {
        }

        @Override // com.fyber.inneractive.sdk.web.d.InterfaceC0201d
        public void a(com.fyber.inneractive.sdk.web.d dVar) {
            n nVar = n.this;
            nVar.getClass();
            IAlog.a("%sweb view returned onReady!", IAlog.a(nVar));
            Response response = n.this.b;
            UnitDisplayType unitDisplayType = response != 0 ? ((com.fyber.inneractive.sdk.response.f) response).n : null;
            if (unitDisplayType != null && unitDisplayType.isFullscreenUnit()) {
                n nVar2 = n.this;
                nVar2.getClass();
                try {
                    com.fyber.inneractive.sdk.network.r rVar = com.fyber.inneractive.sdk.network.r.EVENT_READY_ON_CLIENT;
                    InneractiveAdRequest inneractiveAdRequest = nVar2.a;
                    Content content = nVar2.c;
                    new s.a(rVar, inneractiveAdRequest, content != 0 ? (com.fyber.inneractive.sdk.response.f) ((b0) content).b : null, (JSONArray) null).a((String) null);
                } catch (Exception unused) {
                }
            }
            n.this.h();
        }

        @Override // com.fyber.inneractive.sdk.web.d.InterfaceC0201d
        public void a(com.fyber.inneractive.sdk.web.d dVar, InneractiveInfrastructureError inneractiveInfrastructureError) {
            n.this.a((InneractiveError) inneractiveInfrastructureError);
            n nVar = n.this;
            nVar.getClass();
            IAlog.a("%sweb view returned onFailedLoading!", IAlog.a(nVar));
            n.this.a(inneractiveInfrastructureError);
            if (inneractiveInfrastructureError.getErrorCode() == InneractiveErrorCode.NON_SECURE_CONTENT_DETECTED) {
                com.fyber.inneractive.sdk.network.q qVar = com.fyber.inneractive.sdk.network.q.MRAID_ERROR_UNSECURE_CONTENT;
                n nVar2 = n.this;
                new s.a(qVar, nVar2.a, nVar2.b, (JSONArray) null).a((String) null);
            }
        }
    }

    public static /* synthetic */ class b {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[UnitDisplayType.values().length];
            a = iArr;
            try {
                iArr[UnitDisplayType.INTERSTITIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[UnitDisplayType.REWARDED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static String a(UnitDisplayType unitDisplayType) {
        StringBuilder sb = new StringBuilder();
        if (unitDisplayType != null && !unitDisplayType.isFullscreenUnit()) {
            if (unitDisplayType == UnitDisplayType.BANNER) {
                sb.append(" body {display: flex;} #iawrapper { position:unset !important; display: unset !important; } ");
            } else {
                sb.append(" #iawrapper { position:unset !important; display: unset !important; }");
            }
        }
        return sb.toString();
    }

    @Override // com.fyber.inneractive.sdk.flow.h, com.fyber.inneractive.sdk.interfaces.a
    public void a() {
        l();
        super.a();
    }

    @Override // com.fyber.inneractive.sdk.flow.h, com.fyber.inneractive.sdk.interfaces.a.b
    public void b() {
        l();
        super.b();
    }

    @Override // com.fyber.inneractive.sdk.flow.h
    public InneractiveInfrastructureError e() {
        com.fyber.inneractive.sdk.network.timeouts.content.a aVar = this.j;
        return new InneractiveInfrastructureError(InneractiveErrorCode.LOAD_TIMEOUT, g.WEBVIEW_LOAD_TIMEOUT, new Exception("LoadTimeout after " + (aVar != null ? aVar.a(this.i) : 0) + " ms"));
    }

    @Override // com.fyber.inneractive.sdk.flow.h
    public String f() {
        return "send_failed_display_creatives";
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [Response extends com.fyber.inneractive.sdk.response.e, T extends com.fyber.inneractive.sdk.response.e] */
    @Override // com.fyber.inneractive.sdk.flow.h
    public void j() {
        i.d dVar;
        String str;
        b0 b0Var = new b0(g(), this.f2008g);
        this.c = b0Var;
        ?? r1 = this.b;
        b0Var.b = r1;
        b0Var.f2021f = this.h;
        com.fyber.inneractive.sdk.measurement.a aVar = null;
        UnitDisplayType unitDisplayType = r1 != 0 ? ((com.fyber.inneractive.sdk.response.f) r1).n : null;
        i.g gVar = i.g.INLINE;
        if (unitDisplayType == null) {
            this.n.a(null, new InneractiveInfrastructureError(InneractiveErrorCode.SDK_INTERNAL_ERROR, g.EMPTY_UNIT_DISPLAY_TYPE, new Exception("Unit display type was not found")));
            return;
        }
        int i = b.a[unitDisplayType.ordinal()];
        if (i == 1 || i == 2) {
            dVar = i.d.ENABLED;
            InneractiveAdRequest inneractiveAdRequest = this.a;
            if (inneractiveAdRequest == null || inneractiveAdRequest.getAllowFullscreen()) {
                gVar = i.g.INTERSTITIAL;
            }
        } else {
            dVar = i.d.ENABLED;
        }
        i.g gVar2 = gVar;
        i.d dVar2 = dVar;
        Response response = this.b;
        boolean z = (response == 0 || (str = ((com.fyber.inneractive.sdk.response.f) response).J) == null || str.contains("iaNotifyLoadFinished")) ? false : true;
        IAConfigManager iAConfigManager = IAConfigManager.M;
        boolean zA = com.fyber.inneractive.sdk.util.g.a(unitDisplayType, iAConfigManager.u.b);
        try {
            Application application = com.fyber.inneractive.sdk.util.l.a;
            i.h hVar = i.h.AD_CONTROLLED;
            com.fyber.inneractive.sdk.config.global.s sVar = this.f2008g;
            if (sVar != null && ((com.fyber.inneractive.sdk.config.global.features.l) sVar.a(com.fyber.inneractive.sdk.config.global.features.l.class)).d()) {
                aVar = iAConfigManager.J;
            }
            IAmraidWebViewController iAmraidWebViewController = new IAmraidWebViewController(application, zA, gVar2, dVar2, hVar, z, aVar);
            this.m = iAmraidWebViewController;
            iAmraidWebViewController.setAdContent(this.c);
            this.m.setAdRequest(this.a);
            InneractiveAdRequest inneractiveAdRequest2 = this.a;
            if (inneractiveAdRequest2 != null && inneractiveAdRequest2.getSelectedUnitConfig() != null && ((com.fyber.inneractive.sdk.config.a0) this.a.getSelectedUnitConfig()).c != null) {
                this.m.setMuteMraidVideo(((b0) this.c).h() && ((com.fyber.inneractive.sdk.config.a0) this.a.getSelectedUnitConfig()).c.b != UnitDisplayType.REWARDED);
            }
            ((b0) this.c).i = this.m;
            Response response2 = this.b;
            if (response2 != 0) {
                UnitDisplayType unitDisplayType2 = ((com.fyber.inneractive.sdk.response.f) response2).n;
                InneractiveAdRequest inneractiveAdRequest3 = this.a;
                boolean z2 = inneractiveAdRequest3 == null || inneractiveAdRequest3.getAllowFullscreen();
                StringBuilder sb = new StringBuilder();
                if (unitDisplayType2 != null && unitDisplayType2.isFullscreenUnit() && !z2) {
                    sb.append("<script type=\"text/javascript\">  var IaCloseBtnHelper = (function initIaCloseBtnHelper(){    var styleContent = '.celtra-close-button {display:none !important;} .close-button {display:none !important;}';    function getStyle(doc){      var style = doc.createElement('style');      style.type = 'text/css';      if (style.styleSheet){        style.styleSheet.cssText = styleContent;      } else {        style.appendChild(doc.createTextNode(styleContent));      }      return style;    }    function onDomReady(){      var iframes = window.document.getElementsByTagName('iframe'),          i = 0,          len = iframes && iframes.length || 0;      for(; i < len; ++i){        if(!iframes[i].src){          try {            iframes[i].contentDocument.body.appendChild(getStyle(iframes[i].contentDocument));          }catch(e){          }}}}    function registerWindowEvents(){      window.addEventListener('load', function onWindowLoad(){        window.removeEventListener('load', onWindowLoad);        onDomReady();      });    }    return {      init: function init(){        if(window.document.readyState != 'complete'){          registerWindowEvents();        }else{          onDomReady();        }}}})();  IaCloseBtnHelper.init();</script>");
                }
                String string = sb.toString();
                String strA = a(unitDisplayType2);
                this.m.setAutoplayMRAIDVideos(unitDisplayType.isFullscreenUnit());
                this.m.a(com.fyber.inneractive.sdk.config.a.a(), "" + ((com.fyber.inneractive.sdk.response.f) this.b).J, string, strA, this.n);
            }
        } catch (Throwable th) {
            a(new InneractiveInfrastructureError(InneractiveErrorCode.SDK_INTERNAL_ERROR, g.COULD_NOT_CREATE_WEBVIEW_CONTROLLER, th));
        }
    }

    public final void l() {
        IAmraidWebViewController iAmraidWebViewController;
        IAlog.a("%s : IAMraidContentLoader : destroyController", IAlog.a(this));
        if (this.c == 0 || (iAmraidWebViewController = this.m) == null) {
            return;
        }
        a.InterfaceC0164a interfaceC0164a = iAmraidWebViewController.I;
        if (interfaceC0164a != null) {
            ((com.fyber.inneractive.sdk.measurement.tracker.c) interfaceC0164a).a(false);
        }
        this.m.c();
        this.m = null;
    }
}
