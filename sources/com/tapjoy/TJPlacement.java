package com.tapjoy;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.gms.drive.DriveFile;
import com.json.d1;
import com.tapjoy.TapjoyErrorMessage;
import com.tapjoy.internal.c6;
import com.tapjoy.internal.i6;
import com.tapjoy.internal.i8;
import com.tapjoy.internal.n4;
import com.tapjoy.internal.p5;
import com.tapjoy.internal.p8;
import com.tapjoy.internal.v1;
import com.tapjoy.internal.v2;
import com.tapjoy.internal.z4;
import java.lang.reflect.Proxy;
import java.util.HashMap;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public class TJPlacement {
    public o a;
    public TJPlacementListener b;
    public TJPlacementListener c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public TJPlacementVideoListener f7804d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f7805e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f7806f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public TJEntryPoint f7807g = null;

    @Deprecated
    public TJPlacement(Context context, String str, TJPlacementListener tJPlacementListener) {
        o oVarA = TJPlacementManager.a(str);
        oVarA = oVarA == null ? TJPlacementManager.a(str, "", "", false) : oVarA;
        oVarA.n(context);
        a(oVarA, tJPlacementListener);
    }

    public TJPlacement(o oVar, TJPlacementListener tJPlacementListener) {
        a(oVar, tJPlacementListener);
    }

    public static void dismissContent() {
        TJPlacementManager.dismissContentShowing("true".equals(TapjoyConnectCore.getConnectFlagValue("TJC_OPTION_DISMISS_CONTENT_ALL")));
    }

    public final void a(o oVar, TJPlacementListener tJPlacementListener) {
        this.a = oVar;
        this.f7805e = UUID.randomUUID().toString();
        this.b = tJPlacementListener;
        this.c = tJPlacementListener != null ? (TJPlacementListener) Proxy.newProxyInstance(TJPlacementListener.class.getClassLoader(), new Class[]{TJPlacementListener.class}, new v2(tJPlacementListener, Thread.currentThread(), Looper.myLooper())) : null;
        FiveRocksIntegration.addPlacementCallback(e(), this);
    }

    public TJEntryPoint b() {
        return this.f7807g;
    }

    public String c() {
        return this.f7805e;
    }

    public TJPlacementListener d() {
        return this.b;
    }

    public String e() {
        return this.a.k() != null ? this.a.k().i() : "";
    }

    @Deprecated
    public TJPlacementVideoListener f() {
        return this.f7804d;
    }

    public boolean g() {
        return this.a.m();
    }

    public void h() {
        String strE = e();
        TapjoyLog.i("TJPlacement", "requestContent() called for placement " + strE);
        if (TJPrivacyPolicy.getInstance() != null && TJPrivacyPolicy.getInstance().e() == TJStatus.c) {
            TapjoyLog.w("TJPlacement", "[INFO] Your application calls requestContent without having previously called setUserConsent. You can review Tapjoy supported consent API here - https://dev.tapjoy.com/sdk-integration/#sdk11122_gdpr_release.");
        }
        boolean z = false;
        if (!TapjoyConnectCore.isConnected()) {
            this.a.d(this, TapjoyErrorMessage.ErrorType.f7835d, new r(0, "SDK not connected -- connect must be called first with a successful callback"));
            return;
        }
        if (this.a.i() == null) {
            this.a.d(this, TapjoyErrorMessage.ErrorType.f7835d, new r(0, "Context is null -- TJPlacement requires a valid Context."));
            return;
        }
        if (TextUtils.isEmpty(strE)) {
            this.a.d(this, TapjoyErrorMessage.ErrorType.f7835d, new r(0, "Invalid placement name -- TJPlacement requires a valid placement name."));
            return;
        }
        this.a.h.x();
        o oVar = this.a;
        oVar.e("REQUEST", this);
        if (oVar.f8040g - SystemClock.elapsedRealtime() > 0) {
            TapjoyLog.d("TJCorePlacement", "Content has not expired yet for " + oVar.f8037d.i());
            if (!oVar.p) {
                oVar.c(this);
                return;
            }
            oVar.o = false;
            oVar.c(this);
            oVar.b();
            return;
        }
        if (!TextUtils.isEmpty(oVar.t)) {
            HashMap map = new HashMap();
            map.put("mediation_agent", oVar.t);
            map.put("mediation_id", oVar.u);
            HashMap map2 = oVar.v;
            if (map2 != null && !map2.isEmpty()) {
                z = true;
            }
            if (!z) {
                oVar.f(oVar.f8037d.h(), map);
                return;
            }
            for (String str : oVar.v.keySet()) {
                map.put("auction_" + str, (String) oVar.v.get(str));
            }
            oVar.f(oVar.f8037d.c(), map);
            return;
        }
        synchronized (oVar) {
            String strK = oVar.f8037d.k();
            if (TextUtils.isEmpty(strK)) {
                strK = oVar.j();
                if (TextUtils.isEmpty(strK)) {
                    oVar.d(oVar.a("REQUEST"), TapjoyErrorMessage.ErrorType.b, new r(0, "TJPlacement is missing APP_ID"));
                } else {
                    oVar.f8037d.E(strK);
                    TapjoyLog.d("TJCorePlacement", "sendContentRequest -- URL: " + strK + " name: " + oVar.f8037d.i());
                    oVar.f(strK, null);
                }
            } else {
                TapjoyLog.d("TJCorePlacement", "sendContentRequest -- URL: " + strK + " name: " + oVar.f8037d.i());
                oVar.f(strK, null);
            }
        }
    }

    @Deprecated
    public void i(TJPlacementVideoListener tJPlacementVideoListener) {
        this.f7804d = tJPlacementVideoListener;
    }

    public void j() {
        TapjoyLog.i("TJPlacement", "showContent() called for placement " + e());
        if (i8.c) {
            HashMap map = new HashMap();
            map.put("contentReady", String.valueOf(g()));
            this.a.h().i().a(d1.u, map);
        }
        if (!this.a.l()) {
            TapjoyLog.e("TJPlacement", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.f7835d, "No placement content available. Can not show content for non-200 placement."));
            return;
        }
        o oVar = this.a;
        oVar.getClass();
        if (TapjoyConnectCore.isFullScreenViewOpen()) {
            TapjoyLog.w("TJCorePlacement", "Only one view can be presented at a time.");
            return;
        }
        if (TapjoyConnectCore.isViewOpen()) {
            TapjoyLog.w("TJCorePlacement", "Will close N2E content.");
            TapjoyUtil.runOnMainThread(new n4());
        }
        oVar.e("SHOW", this);
        String string = UUID.randomUUID().toString();
        com.tapjoy.internal.x0 x0Var = oVar.l;
        if (x0Var != null) {
            x0Var.c = string;
            TapjoyConnectCore.viewWillOpen(string, x0Var instanceof p8 ? 3 : x0Var instanceof i6 ? 2 : 0);
            oVar.l.b = new z4(oVar, string);
            p5 p5Var = new p5(oVar);
            synchronized (v1.class) {
                if (v1.b == null) {
                    v1.b = new Handler(Looper.getMainLooper());
                }
                v1.b.post(p5Var);
            }
        } else {
            oVar.f8037d.s(string);
            TJMemoryDataStorage.getInstance().b(oVar.f8037d.i(), oVar.f8037d);
            Intent intent = new Intent(oVar.b, (Class<?>) TJAdUnitActivity.class);
            intent.putExtra("placement_name", oVar.f8037d.i());
            intent.setFlags(DriveFile.MODE_READ_ONLY);
            TapjoyUtil.runOnMainThread(new c6(oVar, intent));
        }
        oVar.f8040g = 0L;
        oVar.p = false;
        oVar.q = false;
    }
}
