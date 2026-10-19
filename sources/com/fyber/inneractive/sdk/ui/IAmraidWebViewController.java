package com.fyber.inneractive.sdk.ui;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.view.ViewTreeObserver;
import android.webkit.WebView;
import com.fyber.inneractive.sdk.R;
import com.fyber.inneractive.sdk.activities.InneractiveRichMediaVideoPlayerActivityCore;
import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.external.InneractiveUnitController;
import com.fyber.inneractive.sdk.flow.q;
import com.fyber.inneractive.sdk.measurement.a;
import com.fyber.inneractive.sdk.mraid.a0;
import com.fyber.inneractive.sdk.mraid.b0;
import com.fyber.inneractive.sdk.mraid.f;
import com.fyber.inneractive.sdk.mraid.h;
import com.fyber.inneractive.sdk.mraid.j;
import com.fyber.inneractive.sdk.mraid.k;
import com.fyber.inneractive.sdk.mraid.l;
import com.fyber.inneractive.sdk.mraid.n;
import com.fyber.inneractive.sdk.mraid.o;
import com.fyber.inneractive.sdk.mraid.p;
import com.fyber.inneractive.sdk.mraid.u;
import com.fyber.inneractive.sdk.mraid.v;
import com.fyber.inneractive.sdk.mraid.w;
import com.fyber.inneractive.sdk.mraid.x;
import com.fyber.inneractive.sdk.mraid.y;
import com.fyber.inneractive.sdk.mraid.z;
import com.fyber.inneractive.sdk.network.r;
import com.fyber.inneractive.sdk.network.s;
import com.fyber.inneractive.sdk.response.e;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.k0;
import com.fyber.inneractive.sdk.util.m;
import com.fyber.inneractive.sdk.web.g;
import com.fyber.inneractive.sdk.web.i;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.net.URI;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class IAmraidWebViewController extends i<i.f> {
    public i.g o0;
    public final Runnable p0;
    public final Runnable q0;

    public static class MraidVideoFailedToDisplayError extends InneractiveUnitController.AdDisplayError {
        public MraidVideoFailedToDisplayError(String str) {
            super(str);
        }
    }

    public class a implements Runnable {

        /* JADX INFO: renamed from: com.fyber.inneractive.sdk.ui.IAmraidWebViewController$a$a, reason: collision with other inner class name */
        public class ViewTreeObserverOnPreDrawListenerC0199a implements ViewTreeObserver.OnPreDrawListener {

            /* JADX INFO: renamed from: com.fyber.inneractive.sdk.ui.IAmraidWebViewController$a$a$a, reason: collision with other inner class name */
            public class RunnableC0200a implements Runnable {
                public RunnableC0200a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    a.InterfaceC0164a interfaceC0164a;
                    IAmraidWebViewController iAmraidWebViewController = IAmraidWebViewController.this;
                    if (iAmraidWebViewController.H == null || (interfaceC0164a = iAmraidWebViewController.I) == null) {
                        return;
                    }
                    interfaceC0164a.a();
                }
            }

            public ViewTreeObserverOnPreDrawListenerC0199a() {
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                g gVar;
                g gVar2 = IAmraidWebViewController.this.b;
                if (gVar2 == null) {
                    return false;
                }
                gVar2.getViewTreeObserver().removeOnPreDrawListener(this);
                IAmraidWebViewController.this.m();
                IAmraidWebViewController iAmraidWebViewController = IAmraidWebViewController.this;
                iAmraidWebViewController.a(new x(iAmraidWebViewController.o0));
                IAmraidWebViewController iAmraidWebViewController2 = IAmraidWebViewController.this;
                if (iAmraidWebViewController2.o0 == i.g.INTERSTITIAL && (gVar = iAmraidWebViewController2.b) != null) {
                    gVar.a("if (window.showInterstitial) { showInterstitial(); }");
                }
                g gVar3 = IAmraidWebViewController.this.b;
                if (gVar3 != null) {
                    gVar3.a("window.mraidbridge.fireReadyEvent();");
                }
                IAmraidWebViewController iAmraidWebViewController3 = IAmraidWebViewController.this;
                iAmraidWebViewController3.a(iAmraidWebViewController3.b.getContext(), true);
                IAmraidWebViewController.this.q();
                m.b.postDelayed(new RunnableC0200a(), 100L);
                return false;
            }
        }

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g gVar = IAmraidWebViewController.this.b;
            if (gVar != null) {
                gVar.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserverOnPreDrawListenerC0199a());
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g gVar = IAmraidWebViewController.this.b;
            if (gVar != null) {
                gVar.a("if (FyberMraidVideoController.getCurrentTime() < 0.2) { var ifr = document.createElement('iframe'); var container = document.body || document.documentElement; container.appendChild(ifr); ifr.setAttribute('sandbox', ''); ifr.setAttribute('style', 'position: fixed; bottom: -20px; border: none; visibility: hidden; height: 20px; z-index: -99999'); ifr.setAttribute('src','FyMraidVideo://fyMraidVideoAdPlaybackFailure'); console.log('dispatched closure event'); } else { console.log('video has progressed'); };");
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g gVar = IAmraidWebViewController.this.b;
            if (gVar != null) {
                try {
                    gVar.invalidate();
                } catch (Throwable unused) {
                }
            }
        }
    }

    public IAmraidWebViewController(Context context, boolean z, i.g gVar, i.d dVar, i.h hVar, boolean z2, com.fyber.inneractive.sdk.measurement.a aVar) {
        super(context, z, false, gVar, dVar, hVar, aVar);
        this.p0 = new a();
        this.q0 = new b();
        this.E = z2;
        this.b.setId(R.id.inneractive_webview_mraid);
        this.o0 = gVar;
    }

    public final void a(long j) {
        m.b.postDelayed(new c(), j);
    }

    @Override // com.fyber.inneractive.sdk.web.i, com.fyber.inneractive.sdk.web.d, com.fyber.inneractive.sdk.web.g.a
    public void a(boolean z) {
        g gVar;
        super.a(z);
        if (this.C && this.B && this.z && (gVar = this.b) != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("FyberMraidVideoController.");
            sb.append(z ? "play" : CampaignEx.JSON_NATIVE_VIDEO_PAUSE);
            sb.append("();");
            gVar.a(sb.toString());
        }
        if (this.b == null || !z) {
            return;
        }
        a(1L);
        a(100L);
        a(250L);
        a(1000L);
    }

    @Override // com.fyber.inneractive.sdk.web.i, com.fyber.inneractive.sdk.web.d, com.fyber.inneractive.sdk.web.f
    public boolean a(WebView webView, String str) {
        IAlog.a("IAmraidWebViewController: handleUrl = %s", str);
        if (this.b == null) {
            IAlog.a("handleUrl: web view already destroyed. Cannot handle url", new Object[0]);
            return false;
        }
        if (str == null || !str.toLowerCase().startsWith("FyMraidVideo".toLowerCase())) {
            return super.a(webView, str);
        }
        if (str.toLowerCase().endsWith("fyMraidVideoAd".toLowerCase())) {
            r rVar = r.MRAID_VIDEO_DETECTED;
            InneractiveAdRequest inneractiveAdRequest = this.r;
            q qVar = this.s;
            e eVarD = qVar == null ? null : qVar.d();
            q qVar2 = this.s;
            new s.a(rVar, inneractiveAdRequest, eVarD, qVar2 == null ? null : qVar2.c.c()).a((String) null);
            this.C = true;
            q();
        } else if (str.toLowerCase().endsWith("fyMraidVideoAdPlaybackFailure".toLowerCase())) {
            IAlog.b("MRAID Video has not started in a timely fashion, showing close button", new Object[0]);
            if (this.f2756g != 0) {
                c(false);
                com.fyber.inneractive.sdk.network.q qVar3 = com.fyber.inneractive.sdk.network.q.MRAID_VIDEO_HAS_NOT_STARTED_PLAYING_IN_A_TIMELY_FASHION;
                InneractiveAdRequest inneractiveAdRequest2 = this.r;
                q qVar4 = this.s;
                e eVarD2 = qVar4 == null ? null : qVar4.d();
                q qVar5 = this.s;
                new s.a(qVar3, inneractiveAdRequest2, eVarD2, qVar5 == null ? null : qVar5.c.c()).a("video_timeout_in_msecs", String.valueOf(5000)).a((String) null);
            }
            L l = this.f2756g;
            if (l != 0) {
                ((i.f) l).a(new MraidVideoFailedToDisplayError("an MRAID video has not started playing in a timely fashion"));
            }
        } else if (str.toLowerCase().endsWith("fyMraidVideoAdCompleted".toLowerCase())) {
            L l2 = this.f2756g;
            if (l2 instanceof i.k) {
                ((i.k) l2).a();
            }
        }
        return true;
    }

    @Override // com.fyber.inneractive.sdk.web.d
    public boolean a(String str, k0 k0Var) {
        com.fyber.inneractive.sdk.mraid.b cVar;
        g gVar;
        Uri uri = Uri.parse(str);
        String string = uri.toString();
        uri.getScheme();
        if (string.startsWith("iaadfinishedloading")) {
            if (string.endsWith("success") && !this.a && this.f2755f != null && (gVar = this.b) != null) {
                gVar.a();
                this.a = true;
                g();
            }
            return true;
        }
        String scheme = Uri.parse(str).getScheme();
        g gVar2 = this.b;
        if (!(gVar2 != null && gVar2.isShown())) {
            return true;
        }
        if (!CampaignEx.JSON_KEY_MRAID.equals(scheme)) {
            return false;
        }
        URI uriCreate = URI.create(str);
        String host = uriCreate.getHost();
        try {
            Map<String, String> mapA = a(uriCreate);
            switch (f.a[com.fyber.inneractive.sdk.mraid.g.a(host).ordinal()]) {
                case 1:
                    cVar = new com.fyber.inneractive.sdk.mraid.c(mapA, this, k0Var);
                    break;
                case 2:
                    cVar = new com.fyber.inneractive.sdk.mraid.e(mapA, this, k0Var);
                    break;
                case 3:
                    cVar = new com.fyber.inneractive.sdk.mraid.s(mapA, this, k0Var);
                    break;
                case 4:
                    cVar = new com.fyber.inneractive.sdk.mraid.m(mapA, this, k0Var);
                    break;
                case 5:
                    cVar = new o(mapA, this, k0Var);
                    break;
                case 6:
                    cVar = new k(mapA, this, k0Var);
                    break;
                case 7:
                    cVar = new com.fyber.inneractive.sdk.mraid.q(mapA, this, k0Var);
                    break;
                case 8:
                    cVar = new p(mapA, this, k0Var);
                    break;
                case 9:
                    cVar = new n(mapA, this, k0Var);
                    break;
                case 10:
                    cVar = new com.fyber.inneractive.sdk.mraid.r(mapA, this, k0Var);
                    break;
                case 11:
                    cVar = new h(mapA, this, k0Var);
                    break;
                case 12:
                    cVar = new com.fyber.inneractive.sdk.mraid.i(mapA, this, k0Var);
                    break;
                case 13:
                    cVar = new j(mapA, this, k0Var);
                    break;
                case 14:
                    cVar = new l(mapA, this, k0Var);
                    break;
                case 15:
                    cVar = new com.fyber.inneractive.sdk.mraid.d(mapA, this, k0Var);
                    break;
                default:
                    cVar = null;
                    break;
            }
            if (cVar == null || ((cVar instanceof com.fyber.inneractive.sdk.mraid.e) && this.Q == i.g.INTERSTITIAL)) {
                b(host);
                return true;
            }
            cVar.a = host;
            if (cVar instanceof com.fyber.inneractive.sdk.mraid.a) {
                a(new i.j((com.fyber.inneractive.sdk.mraid.a) cVar, k0Var));
            } else {
                if (cVar.b()) {
                    j();
                }
                cVar.a();
            }
            b(host);
            return true;
        } catch (Exception unused) {
            return true;
        }
    }

    @Override // com.fyber.inneractive.sdk.web.d
    public void c() {
        b(false);
        Handler handler = m.b;
        handler.removeCallbacks(this.q0);
        handler.removeCallbacks(this.p0);
    }

    @Override // com.fyber.inneractive.sdk.web.d
    public a.InterfaceC0164a d() {
        return this.I;
    }

    @Override // com.fyber.inneractive.sdk.web.c0
    public void m() {
        ArrayList<u> arrayList = new ArrayList<>();
        g gVar = this.b;
        if (gVar == null || gVar.getScaleX() == 1.0f || this.b.getScaleY() == 1.0f) {
            arrayList.add(new y(this.Z, this.a0));
            arrayList.add(new w(this.b0, this.c0));
        } else {
            arrayList.add(new y(this.b.getWidthDp(), this.b.getHeightDp()));
            arrayList.add(new w(this.b.getWidthDp(), this.b.getHeightDp()));
        }
        g gVar2 = this.b;
        int iC = com.fyber.inneractive.sdk.util.l.c(gVar2 != null ? gVar2.getWidth() : this.b0);
        g gVar3 = this.b;
        boolean zA = false;
        arrayList.add(new v(0, 0, iC, com.fyber.inneractive.sdk.util.l.c(gVar3 != null ? gVar3.getHeight() : this.c0)));
        a(arrayList);
        b0 b0Var = b0.DEFAULT;
        this.N = b0Var;
        a(new z(b0Var));
        g gVar4 = this.b;
        if (gVar4 != null && gVar4.getContext() != null) {
            zA = com.fyber.inneractive.sdk.util.j.a(new Intent(this.b.getContext(), (Class<?>) InneractiveRichMediaVideoPlayerActivityCore.class));
        }
        a0 a0Var = new a0();
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:"));
        a0Var.b = com.fyber.inneractive.sdk.util.j.a(intent);
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.setData(Uri.parse("sms:"));
        a0Var.a = com.fyber.inneractive.sdk.util.j.a(intent2);
        a0Var.c = com.fyber.inneractive.sdk.util.j.a(new Intent("android.intent.action.INSERT").setType("vnd.android.cursor.item/event"));
        a0Var.f2098e = zA;
        a0Var.f2097d = com.fyber.inneractive.sdk.util.j.m();
        a(a0Var);
    }

    @Override // com.fyber.inneractive.sdk.web.c0
    public void q() {
        g gVar;
        if (this.B && this.C && this.z && (gVar = this.b) != null) {
            gVar.a("FyberMraidVideoController.play()");
            Runnable runnable = this.q0;
            if (runnable != null) {
                m.b.postDelayed(runnable, 5000L);
            }
            if (this.D) {
                this.b.a("FyberMraidVideoController.mute(true)");
            }
        }
    }

    public void setMuteMraidVideo(boolean z) {
        this.D = z;
    }
}
