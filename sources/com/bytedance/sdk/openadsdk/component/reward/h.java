package com.bytedance.sdk.openadsdk.component.reward;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.b;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.activity.TTRewardExpressVideoActivity;
import com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAd;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdInteractionCallback;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdInteractionListener;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.s;
import com.bytedance.sdk.openadsdk.utils.aa;
import com.bytedance.sdk.openadsdk.utils.r;
import com.bytedance.sdk.openadsdk.utils.w;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: PAGRewardVideoAdImpl.java */
/* JADX INFO: loaded from: classes2.dex */
class h extends PAGRewardedAd {
    private final Context a;
    private final com.bytedance.sdk.openadsdk.core.model.a b;
    private final AdSlot c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.apiImpl.d.a f1384d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f1385e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final AtomicBoolean f1386f = new AtomicBoolean(false);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f1387g = r.a();
    private boolean h;
    private boolean i;

    h(Context context, com.bytedance.sdk.openadsdk.core.model.a aVar, AdSlot adSlot) {
        this.a = context;
        this.b = aVar;
        this.c = adSlot;
    }

    private void a(final int i) {
        if (com.bytedance.sdk.openadsdk.multipro.b.c()) {
            aa.c(new com.bytedance.sdk.component.g.h("Reward_registerMultiProcessListener") { // from class: com.bytedance.sdk.openadsdk.component.reward.h.3
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.multipro.aidl.a aVarA = com.bytedance.sdk.openadsdk.multipro.aidl.a.a();
                    if (i != 0 || h.this.f1384d == null) {
                        return;
                    }
                    com.bytedance.sdk.component.utils.l.b("MultiProcess", "start registerRewardVideoListener ! ");
                    com.bytedance.sdk.openadsdk.multipro.aidl.b.d dVar = new com.bytedance.sdk.openadsdk.multipro.aidl.b.d(h.this.f1384d);
                    IListenerManager iListenerManagerAsInterface = IListenerManager.Stub.asInterface(aVarA.a(0));
                    if (iListenerManagerAsInterface != null) {
                        try {
                            iListenerManagerAsInterface.registerRewardVideoListener(h.this.f1387g, dVar);
                            com.bytedance.sdk.component.utils.l.b("MultiProcess", "end registerRewardVideoListener ! ");
                        } catch (RemoteException e2) {
                            com.bytedance.sdk.component.utils.l.e("TTRewardVideoAdImpl", e2.getMessage());
                        }
                    }
                }
            }, 5);
        }
    }

    public void a() {
        if (this.f1386f.get()) {
            return;
        }
        this.f1385e = true;
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

    @Override // com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAd
    public void setAdInteractionCallback(PAGRewardedAdInteractionCallback pAGRewardedAdInteractionCallback) {
        this.f1384d = new i(pAGRewardedAdInteractionCallback);
        a(0);
    }

    @Override // com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAd
    public void setAdInteractionListener(PAGRewardedAdInteractionListener pAGRewardedAdInteractionListener) {
        this.f1384d = new i(pAGRewardedAdInteractionListener);
        a(0);
    }

    @Override // com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAd
    public void show(@Nullable Activity activity) {
        if (activity != null && activity.isFinishing()) {
            com.bytedance.sdk.component.utils.l.e("TTRewardVideoAdImpl", "showRewardVideoAd error1: activity is finishing");
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
            com.bytedance.sdk.component.utils.l.e("TTRewardVideoAdImpl", "showRewardVideoAd error2: not main looper");
            throw new IllegalStateException("Cannot be called in a child thread —— TTRewardVideoAd.showRewardVideoAd");
        }
        if (this.f1386f.compareAndSet(false, true)) {
            if (qVarE == null || qVarE.K() == null) {
                com.bytedance.sdk.openadsdk.b.c.b(qVarE, "fullscreen_interstitial_ad", "materialMeta error ");
                return;
            }
            Context contextA = activity == null ? this.a : activity;
            if (contextA == null) {
                contextA = com.bytedance.sdk.openadsdk.core.o.a();
            }
            Intent intent = zF ? new Intent(contextA, (Class<?>) TTRewardExpressVideoActivity.class) : (qVarE.u() != 2 || qVarE.o() == 5 || qVarE.o() == 6 || qVarE.o() == 19) ? new Intent(contextA, (Class<?>) TTRewardVideoActivity.class) : new Intent(contextA, (Class<?>) TTRewardExpressVideoActivity.class);
            com.bytedance.sdk.openadsdk.component.reward.a.b.a(intent, activity, this.f1385e, this.b, this.f1387g);
            intent.putExtra("media_extra", this.c.getMediaExtra());
            intent.putExtra("user_id", this.c.getUserID());
            intent.putExtra("start_show_time", SystemClock.elapsedRealtime());
            if (!com.bytedance.sdk.openadsdk.multipro.b.c()) {
                s.a().a(this.f1384d);
                this.f1384d = null;
            }
            com.bytedance.sdk.component.utils.b.a(contextA, intent, new b.a() { // from class: com.bytedance.sdk.openadsdk.component.reward.h.1
                @Override // com.bytedance.sdk.component.utils.b.a
                public void a() {
                }

                @Override // com.bytedance.sdk.component.utils.b.a
                public void a(Throwable th) {
                    com.bytedance.sdk.component.utils.l.c("TTRewardVideoAdImpl", "show reward video error: ", th);
                    com.bytedance.sdk.openadsdk.b.c.b(qVarE, "fullscreen_interstitial_ad", "activity start  fail ");
                }
            });
            com.bytedance.sdk.openadsdk.core.l.b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.h.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        AdSlot adSlotD = qVarE.D();
                        if (adSlotD != null) {
                            l.a(h.this.a).a(adSlotD.getCodeId());
                            if (h.this.f1385e) {
                                l.a(h.this.a).b(adSlotD);
                            }
                        }
                    } catch (Throwable unused) {
                    }
                }
            });
        }
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
