package com.fyber.inneractive.sdk.player.controller;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.fyber.inneractive.sdk.R;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import com.fyber.inneractive.sdk.external.InneractiveErrorCode;
import com.fyber.inneractive.sdk.external.InneractiveInfrastructureError;
import com.fyber.inneractive.sdk.ui.IAmraidWebViewController;
import com.fyber.inneractive.sdk.util.l0;
import com.fyber.inneractive.sdk.util.z;
import com.fyber.inneractive.sdk.web.c0;
import com.fyber.inneractive.sdk.web.d;
import com.fyber.inneractive.sdk.web.i;

/* JADX INFO: loaded from: classes2.dex */
public class c {
    public c0 a;
    public UnitDisplayType c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2171e;
    public i.g b = i.g.INLINE;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public i.d f2170d = i.d.ENABLED;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[com.fyber.inneractive.sdk.model.vast.h.values().length];
            b = iArr;
            try {
                iArr[com.fyber.inneractive.sdk.model.vast.h.Static.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[com.fyber.inneractive.sdk.model.vast.h.Html.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[com.fyber.inneractive.sdk.model.vast.h.FMP_End_Card.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                b[com.fyber.inneractive.sdk.model.vast.h.Iframe.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[UnitDisplayType.values().length];
            a = iArr2;
            try {
                iArr2[UnitDisplayType.INTERSTITIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[UnitDisplayType.REWARDED.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public c(Context context, com.fyber.inneractive.sdk.flow.vast.b bVar, com.fyber.inneractive.sdk.model.vast.h hVar, com.fyber.inneractive.sdk.web.b bVar2) {
        a(bVar.c(), bVar.e());
        try {
            this.a = a(context, bVar2, hVar, com.fyber.inneractive.sdk.util.g.a(bVar.c(), IAConfigManager.c().a()));
            a(hVar);
            if (this.a.e() != null) {
                z.a().a(context, this.a.e(), this.a);
            }
            this.a.i();
            l0 l0VarA = com.fyber.inneractive.sdk.renderers.g.a(bVar.d(), bVar.a(), bVar.b());
            this.a.setAdDefaultSize(l0VarA.a, l0VarA.b);
        } catch (Throwable unused) {
            this.a = null;
        }
    }

    public View a() {
        c0 c0Var = this.a;
        if (c0Var == null) {
            return null;
        }
        return c0Var.b;
    }

    public final c0 a(Context context, com.fyber.inneractive.sdk.web.b bVar, com.fyber.inneractive.sdk.model.vast.h hVar, boolean z) {
        return hVar == com.fyber.inneractive.sdk.model.vast.h.FMP_End_Card ? new com.fyber.inneractive.sdk.web.c(context, bVar, z, false) : new IAmraidWebViewController(context, z, this.b, this.f2170d, i.h.AD_CONTROLLED, true, null);
    }

    public void a(UnitDisplayType unitDisplayType, boolean z) {
        this.c = unitDisplayType;
        this.f2171e = z;
        int i = a.a[unitDisplayType.ordinal()];
        if (i != 1 && i != 2) {
            this.f2170d = i.d.ENABLED;
            return;
        }
        this.f2170d = i.d.ENABLED;
        if (z) {
            this.b = i.g.INTERSTITIAL;
        }
    }

    public void a(com.fyber.inneractive.sdk.model.vast.h hVar) {
        c0 c0Var = this.a;
        com.fyber.inneractive.sdk.web.g gVar = c0Var != null ? c0Var.b : null;
        if (gVar == null) {
            return;
        }
        int i = a.b[hVar.ordinal()];
        if (i == 1) {
            gVar.setId(R.id.inneractive_vast_endcard_gif);
            return;
        }
        if (i == 2 || i == 3) {
            gVar.setId(R.id.inneractive_vast_endcard_html);
        } else {
            if (i != 4) {
                return;
            }
            gVar.setId(R.id.inneractive_vast_endcard_iframe);
        }
    }

    public void a(String str, d.InterfaceC0201d interfaceC0201d) {
        if (this.a == null || TextUtils.isEmpty(str)) {
            interfaceC0201d.a(null, new InneractiveInfrastructureError(InneractiveErrorCode.UNSPECIFIED, com.fyber.inneractive.sdk.flow.g.NO_WEBVIEW_CONTROLLER_AVAILABLE));
            return;
        }
        c0 c0Var = this.a;
        UnitDisplayType unitDisplayType = this.c;
        c0Var.setAutoplayMRAIDVideos(unitDisplayType != null && unitDisplayType.isFullscreenUnit());
        this.a.setCenteringTagsRequired(false);
        c0 c0Var2 = this.a;
        String strA = com.fyber.inneractive.sdk.config.a.a();
        UnitDisplayType unitDisplayType2 = this.c;
        boolean z = this.f2171e;
        StringBuilder sb = new StringBuilder();
        if (unitDisplayType2 != null && unitDisplayType2.isFullscreenUnit() && !z) {
            sb.append("<script type=\"text/javascript\">  var IaCloseBtnHelper = (function initIaCloseBtnHelper(){    var styleContent = '.celtra-close-button {display:none !important;} .close-button {display:none !important;}';    function getStyle(doc){      var style = doc.createElement('style');      style.type = 'text/css';      if (style.styleSheet){        style.styleSheet.cssText = styleContent;      } else {        style.appendChild(doc.createTextNode(styleContent));      }      return style;    }    function onDomReady(){      var iframes = window.document.getElementsByTagName('iframe'),          i = 0,          len = iframes && iframes.length || 0;      for(; i < len; ++i){        if(!iframes[i].src){          try {            iframes[i].contentDocument.body.appendChild(getStyle(iframes[i].contentDocument));          }catch(e){          }}}}    function registerWindowEvents(){      window.addEventListener('load', function onWindowLoad(){        window.removeEventListener('load', onWindowLoad);        onDomReady();      });    }    return {      init: function init(){        if(window.document.readyState != 'complete'){          registerWindowEvents();        }else{          onDomReady();        }}}})();  IaCloseBtnHelper.init();</script>");
        }
        c0Var2.a(strA, str, sb.toString(), com.fyber.inneractive.sdk.flow.n.a(this.c), interfaceC0201d);
    }
}
