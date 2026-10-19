package com.bytedance.sdk.openadsdk.component.reward;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import android.os.SystemClock;
import com.bytedance.sdk.component.utils.b;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.activity.TTFullScreenExpressVideoActivity;
import com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity;
import com.bytedance.sdk.openadsdk.activity.TTInterstitialActivity;
import com.bytedance.sdk.openadsdk.activity.TTInterstitialExpressActivity;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAd;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdInteractionCallback;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdInteractionListener;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.s;
import com.bytedance.sdk.openadsdk.utils.aa;
import com.bytedance.sdk.openadsdk.utils.r;
import com.bytedance.sdk.openadsdk.utils.w;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: PAGInterstitialAdImpl.java */
/* JADX INFO: loaded from: classes2.dex */
class f extends PAGInterstitialAd {
    private final Context a;
    private final com.bytedance.sdk.openadsdk.core.model.a b;
    private com.bytedance.sdk.openadsdk.apiImpl.b.b c;
    private boolean h;
    private boolean i;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AtomicBoolean f1381e = new AtomicBoolean(false);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f1382f = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1380d = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f1383g = r.a();

    f(Context context, com.bytedance.sdk.openadsdk.core.model.a aVar) {
        this.a = context;
        this.b = aVar;
    }

    private void a(final int i) {
        if (com.bytedance.sdk.openadsdk.multipro.b.c()) {
            aa.c(new com.bytedance.sdk.component.g.h("FullScreen_registerMultiProcessListener") { // from class: com.bytedance.sdk.openadsdk.component.reward.f.2
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.multipro.aidl.a aVarA = com.bytedance.sdk.openadsdk.multipro.aidl.a.a();
                    if (i != 1 || f.this.c == null) {
                        return;
                    }
                    com.bytedance.sdk.component.utils.l.b("MultiProcess", "start registerFullScreenVideoListener ! ");
                    com.bytedance.sdk.openadsdk.multipro.aidl.b.c cVar = new com.bytedance.sdk.openadsdk.multipro.aidl.b.c(f.this.c);
                    IListenerManager iListenerManagerAsInterface = IListenerManager.Stub.asInterface(aVarA.a(1));
                    if (iListenerManagerAsInterface != null) {
                        try {
                            iListenerManagerAsInterface.registerFullVideoListener(f.this.f1383g, cVar);
                            com.bytedance.sdk.component.utils.l.b("MultiProcess", "end registerFullScreenVideoListener ! ");
                        } catch (RemoteException e2) {
                            com.bytedance.sdk.component.utils.l.e("TTFullScreenVideoAdImpl", e2.getMessage());
                        }
                    }
                }
            }, 5);
        }
    }

    public void a() {
        if (this.f1381e.get()) {
            return;
        }
        this.f1380d = true;
    }

    public void a(boolean z) {
        this.f1382f = z;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PangleAd
    public Map<String, Object> getMediaExtraInfo() {
        com.bytedance.sdk.openadsdk.core.model.a aVar = this.b;
        if (aVar == null || aVar.e() == null) {
            return null;
        }
        return this.b.e().ai();
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGClientBidding
    public void loss(Double d2, String str, String str2) {
        if (this.i) {
            return;
        }
        w.a(this.b.e(), d2, str, str2);
        this.i = true;
    }

    @Override // com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAd
    public void setAdInteractionCallback(PAGInterstitialAdInteractionCallback pAGInterstitialAdInteractionCallback) {
        this.c = new com.bytedance.sdk.openadsdk.component.c.a(pAGInterstitialAdInteractionCallback);
        a(1);
    }

    @Override // com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAd
    public void setAdInteractionListener(PAGInterstitialAdInteractionListener pAGInterstitialAdInteractionListener) {
        this.c = new com.bytedance.sdk.openadsdk.component.c.a(pAGInterstitialAdInteractionListener);
        a(1);
    }

    @Override // com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAd
    public void show(Activity activity) {
        if (activity != null && activity.isFinishing()) {
            com.bytedance.sdk.component.utils.l.e("TTFullScreenVideoAdImpl", "showFullScreenVideoAd error1: activity is finishing");
            activity = null;
        }
        com.bytedance.sdk.openadsdk.core.model.a aVar = this.b;
        if (aVar == null || !aVar.d()) {
            return;
        }
        boolean zF = this.b.f();
        final q qVarE = this.b.e();
        if (!com.bykv.vk.openvk.component.video.a.c.a.b()) {
            com.bytedance.sdk.openadsdk.b.c.b(qVarE, "fullscreen_interstitial_ad", "showFullScreenVideoAd error2: not main looper");
            com.bytedance.sdk.component.utils.l.e("TTFullScreenVideoAdImpl", "showFullScreenVideoAd error2: not main looper");
            throw new IllegalStateException("Cannot be called in a child thread —— TTFullScreenVideoAd.showFullScreenVideoAd");
        }
        if (this.f1381e.get()) {
            return;
        }
        this.f1381e.set(true);
        if (qVarE == null || (qVarE.K() == null && qVarE.Q() == null)) {
            com.bytedance.sdk.openadsdk.b.c.b(qVarE, "fullscreen_interstitial_ad", "materialMeta error ");
            return;
        }
        Context contextA = activity == null ? this.a : activity;
        if (contextA == null) {
            contextA = com.bytedance.sdk.openadsdk.core.o.a();
        }
        Intent intent = zF ? new Intent(contextA, (Class<?>) TTFullScreenExpressVideoActivity.class) : (qVarE.u() != 2 || qVarE.o() == 5 || qVarE.o() == 6 || qVarE.o() == 19) ? com.bytedance.sdk.openadsdk.component.reward.b.h.a(qVarE) ? new Intent(contextA, (Class<?>) TTInterstitialActivity.class) : new Intent(contextA, (Class<?>) TTFullScreenVideoActivity.class) : com.bytedance.sdk.openadsdk.component.reward.b.h.a(qVarE) ? new Intent(contextA, (Class<?>) TTInterstitialExpressActivity.class) : new Intent(contextA, (Class<?>) TTFullScreenExpressVideoActivity.class);
        intent.putExtra("start_show_time", SystemClock.elapsedRealtime());
        com.bytedance.sdk.openadsdk.component.reward.a.b.a(intent, activity, this.f1380d, this.b, this.f1383g);
        intent.putExtra("is_verity_playable", this.f1382f);
        if (!com.bytedance.sdk.openadsdk.multipro.b.c()) {
            s.a().a(this.c);
            this.c = null;
        }
        com.bytedance.sdk.component.utils.b.a(contextA, intent, new b.a() { // from class: com.bytedance.sdk.openadsdk.component.reward.f.1
            @Override // com.bytedance.sdk.component.utils.b.a
            public void a() {
                if (f.this.f1382f) {
                    try {
                        com.bytedance.sdk.openadsdk.j.b.a().a(qVarE.K().l());
                    } catch (Throwable unused) {
                    }
                }
            }

            @Override // com.bytedance.sdk.component.utils.b.a
            public void a(Throwable th) {
                com.bytedance.sdk.component.utils.l.c("TTFullScreenVideoAdImpl", "show full screen video error: ", th);
                if (f.this.f1382f) {
                    try {
                        com.bytedance.sdk.openadsdk.j.b.a().a(qVarE.K().l(), -1, th != null ? th.getMessage() : "playable tool error open");
                    } catch (Throwable unused) {
                    }
                }
                com.bytedance.sdk.openadsdk.b.c.b(qVarE, "fullscreen_interstitial_ad", "activity start  fail ");
            }
        });
        if (zF) {
            return;
        }
        a.a(this.b.e(), this.f1380d);
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGClientBidding
    public void win(Double d2) {
        if (this.h) {
            return;
        }
        w.a(this.b.e(), d2);
        this.h = true;
    }
}
