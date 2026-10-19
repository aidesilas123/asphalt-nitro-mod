package com.bytedance.sdk.openadsdk.component;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.RemoteException;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.applovin.impl.adview.activity.FullscreenAdService;
import com.bytedance.sdk.component.g.h;
import com.bytedance.sdk.component.utils.b;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAd;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAdInteractionCallback;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAdInteractionListener;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.s;
import com.bytedance.sdk.openadsdk.utils.aa;
import com.bytedance.sdk.openadsdk.utils.r;
import com.bytedance.sdk.openadsdk.utils.w;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: PAGAppOpenAdImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class d extends PAGAppOpenAd {
    private final Context a;
    private final q b;
    private final AdSlot c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.apiImpl.c.b f1285d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AtomicBoolean f1286e = new AtomicBoolean(false);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f1287f = r.a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f1288g;
    private boolean h;
    private boolean i;

    public d(Context context, @NonNull q qVar, boolean z, AdSlot adSlot) {
        this.a = context;
        this.b = qVar;
        this.f1288g = z;
        this.c = adSlot;
    }

    private void a() {
        if (com.bytedance.sdk.openadsdk.multipro.b.c()) {
            aa.c(new h("AppOpenAd_registerMultiProcessListener") { // from class: com.bytedance.sdk.openadsdk.component.d.1
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.multipro.aidl.a aVarA = com.bytedance.sdk.openadsdk.multipro.aidl.a.a();
                    if (d.this.f1285d != null) {
                        l.b("MultiProcess", "start registerAppOpenListener ! ");
                        IListenerManager iListenerManagerAsInterface = IListenerManager.Stub.asInterface(aVarA.a(7));
                        if (iListenerManagerAsInterface != null) {
                            try {
                                iListenerManagerAsInterface.registerAppOpenAdListener(d.this.f1287f, new com.bytedance.sdk.openadsdk.multipro.aidl.b.a(d.this.f1285d));
                                d.this.f1285d = null;
                                l.b("MultiProcess", "end registerAppOpenAdListener ! ");
                            } catch (RemoteException e2) {
                                l.e("TTAppOpenAdImpl", e2.getMessage());
                            }
                        }
                    }
                }
            }, 5);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.PangleAd
    public Map<String, Object> getMediaExtraInfo() {
        q qVar = this.b;
        if (qVar != null) {
            return qVar.ai();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGClientBidding
    public void loss(Double d2, String str, String str2) {
        if (this.i) {
            return;
        }
        w.a(this.b, d2, str, str2);
        this.i = true;
    }

    @Override // com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAd
    public void setAdInteractionCallback(PAGAppOpenAdInteractionCallback pAGAppOpenAdInteractionCallback) {
        this.f1285d = new e(pAGAppOpenAdInteractionCallback);
        a();
    }

    @Override // com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAd
    public void setAdInteractionListener(PAGAppOpenAdInteractionListener pAGAppOpenAdInteractionListener) {
        this.f1285d = new e(pAGAppOpenAdInteractionListener);
        a();
    }

    @Override // com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAd
    public void show(Activity activity) {
        if (activity != null && activity.isFinishing()) {
            activity = null;
        }
        if (this.f1286e.getAndSet(true)) {
            return;
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            l.e("TTAppOpenAdImpl", "showTTAppOpenAd error: not main looper");
            throw new IllegalStateException("Cannot be called in a child thread ---- TTAppOpenAdImpl.showAppOpenAd");
        }
        Context contextA = activity != null ? activity : this.a;
        if (contextA == null) {
            contextA = o.a();
        }
        int rotation = 0;
        try {
            rotation = activity.getWindowManager().getDefaultDisplay().getRotation();
        } catch (Exception unused) {
        }
        Intent intent = new Intent(contextA, (Class<?>) TTAppOpenAdActivity.class);
        intent.putExtra("orientation_angle", rotation);
        intent.putExtra(FullscreenAdService.DATA_KEY_AD_SOURCE, this.f1288g ? 1 : 2);
        if (com.bytedance.sdk.openadsdk.multipro.b.c()) {
            intent.putExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA, this.b.ao().toString());
            intent.putExtra(TTAdConstant.MULTI_PROCESS_META_MD5, this.f1287f);
        } else {
            s.a().f();
            s.a().a(this.b);
            s.a().a(this.f1285d);
            this.f1285d = null;
        }
        intent.putExtra("start_show_time", SystemClock.elapsedRealtime());
        com.bytedance.sdk.component.utils.b.a(contextA, intent, new b.a() { // from class: com.bytedance.sdk.openadsdk.component.d.2
            @Override // com.bytedance.sdk.component.utils.b.a
            public void a() {
                l.b("TTAppOpenAdImpl", "app open ad startActivitySuccess");
            }

            @Override // com.bytedance.sdk.component.utils.b.a
            public void a(Throwable th) {
                l.b("TTAppOpenAdImpl", "app open ad startActivityFail");
            }
        });
        if (this.c != null) {
            try {
                if (com.bytedance.sdk.openadsdk.core.settings.o.aj().x(this.c.getCodeId()) == 1) {
                    f fVarA = f.a(this.a);
                    fVarA.g(Integer.parseInt(this.c.getCodeId()));
                    fVarA.a(this.c);
                }
            } catch (Throwable unused2) {
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGClientBidding
    public void win(Double d2) {
        if (this.h) {
            return;
        }
        w.a(this.b, d2);
        this.h = true;
    }
}
