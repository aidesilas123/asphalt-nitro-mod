package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAd;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdLoadListener;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.model.s;
import com.bytedance.sdk.openadsdk.core.p;
import com.bytedance.sdk.openadsdk.utils.aa;
import com.bytedance.sdk.openadsdk.utils.ab;
import com.bytedance.sdk.openadsdk.utils.ac;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: ExpressAdLoadManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class e {
    private static final Set<e> j = Collections.synchronizedSet(new HashSet());
    private AdSlot a;
    private final Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PAGBannerAdLoadListener f1638d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<q> f1640f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<q> f1641g;
    private a h;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AtomicBoolean f1639e = new AtomicBoolean(false);
    private int i = 5;
    private final ScheduledFuture<?> k = null;
    private ScheduledFuture<?> l = null;
    private ScheduledFuture<?> m = null;
    private final ab n = ab.b();
    private final com.bytedance.sdk.openadsdk.core.p b = com.bytedance.sdk.openadsdk.core.o.c();

    /* JADX INFO: compiled from: ExpressAdLoadManager.java */
    public interface a {
        void a();

        void a(List<q> list);
    }

    private e(Context context) {
        if (context != null) {
            this.c = context.getApplicationContext();
        } else {
            this.c = com.bytedance.sdk.openadsdk.core.o.a();
        }
        j.add(this);
    }

    private PAGBannerAd a(q qVar) {
        if (this.i == 1) {
            return qVar.K() != null ? new com.bytedance.sdk.openadsdk.core.bannerexpress.c(this.c, qVar, this.a) : new com.bytedance.sdk.openadsdk.core.bannerexpress.a(this.c, qVar, this.a);
        }
        return null;
    }

    public static e a(Context context) {
        return new e(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        List<q> list = this.f1640f;
        if (list != null) {
            list.clear();
        }
        List<q> list2 = this.f1641g;
        if (list2 != null) {
            list2.clear();
        }
        a(true);
        b(true);
        c(true);
        b();
    }

    private void a(int i) {
        List<q> list = this.f1640f;
        com.bytedance.sdk.openadsdk.j.a.b bVarE = com.bytedance.sdk.openadsdk.j.a.b.b().a(this.i).c(this.a.getCodeId()).e((list == null || list.size() <= 0) ? "" : this.f1640f.get(0).bc());
        bVarE.b(i).f(com.bytedance.sdk.openadsdk.core.g.a(i));
        com.bytedance.sdk.openadsdk.j.b.a().a(bVarE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, String str) {
        if (this.f1639e.getAndSet(false)) {
            PAGBannerAdLoadListener pAGBannerAdLoadListener = this.f1638d;
            if (pAGBannerAdLoadListener != null) {
                pAGBannerAdLoadListener.onError(i, str);
            }
            a aVar = this.h;
            if (aVar != null) {
                aVar.a();
            }
            a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AdSlot adSlot) {
        List<q> list = this.f1640f;
        if (list == null) {
            return;
        }
        for (q qVar : list) {
            if (q.c(qVar) && qVar.K() != null && qVar.K().k() != null) {
                if (com.bytedance.sdk.openadsdk.core.o.d().e(String.valueOf(qVar.aZ())) && com.bytedance.sdk.openadsdk.core.o.d().X()) {
                    com.bytedance.sdk.openadsdk.core.video.a.b bVarA = q.a(CacheDirFactory.getICacheDir(qVar.aK()).c(), qVar);
                    bVarA.a("material_meta", qVar);
                    bVarA.a("ad_slot", adSlot);
                    com.bytedance.sdk.openadsdk.core.video.d.a.a(bVarA, null);
                }
            }
        }
    }

    private void a(final AdSlot adSlot, com.bytedance.sdk.openadsdk.common.b bVar) {
        if (adSlot == null) {
            return;
        }
        s sVar = new s();
        sVar.f1595f = 2;
        this.b.a(adSlot, sVar, this.i, new p.a() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.e.1
            @Override // com.bytedance.sdk.openadsdk.core.p.a
            public void a(int i, String str) {
                e.this.a(i, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.p.a
            public void a(com.bytedance.sdk.openadsdk.core.model.a aVar, com.bytedance.sdk.openadsdk.core.model.b bVar2) {
                if (aVar.c() == null || aVar.c().isEmpty()) {
                    e.this.a(-3, com.bytedance.sdk.openadsdk.core.g.a(-3));
                    bVar2.a(-3);
                    com.bytedance.sdk.openadsdk.core.model.b.a(bVar2);
                    return;
                }
                e.this.f1640f = aVar.c();
                e.this.f1641g = aVar.c();
                e.this.a(adSlot);
                e eVar = e.this;
                eVar.a(eVar.n);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final ab abVar) {
        if (this.f1639e.getAndSet(false)) {
            aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.e.2
                @Override // java.lang.Runnable
                public void run() {
                    if (e.this.f1641g != null && e.this.f1641g.size() > 0) {
                        e.this.b(abVar);
                        if (e.this.h != null) {
                            e.this.h.a(e.this.f1641g);
                        }
                    } else if (e.this.h != null) {
                        e.this.h.a();
                    }
                    e.this.a();
                }
            });
        }
    }

    private void a(boolean z) {
        try {
            ScheduledFuture<?> scheduledFuture = this.l;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                return;
            }
            com.bytedance.sdk.component.utils.l.e("ExpressAdLoadManager", "CheckValidFutureTask-->cancel......success=" + this.l.cancel(z));
        } catch (Throwable unused) {
        }
    }

    private void b() {
        j.remove(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(ab abVar) {
        if (this.f1638d != null) {
            PAGBannerAd pAGBannerAdA = null;
            Iterator<q> it = this.f1641g.iterator();
            while (it.hasNext() && (pAGBannerAdA = a(it.next())) == null) {
            }
            if (pAGBannerAdA == null) {
                this.f1638d.onError(103, com.bytedance.sdk.openadsdk.core.g.a(103));
                a(103);
            } else {
                if (TextUtils.isEmpty(this.a.getBidAdm())) {
                    com.bytedance.sdk.openadsdk.b.c.b(this.f1641g.get(0), ac.c(this.a.getDurationSlotType()), abVar);
                } else {
                    com.bytedance.sdk.openadsdk.b.c.c(this.f1641g.get(0), ac.c(this.i), this.n.c());
                }
                this.f1638d.onAdLoaded(pAGBannerAdA);
            }
        }
    }

    private void b(boolean z) {
        try {
            ScheduledFuture<?> scheduledFuture = this.m;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                return;
            }
            com.bytedance.sdk.component.utils.l.b("ExpressAdLoadManager", "CheckValidDoneFutureTask-->cancel.....success=" + this.m.cancel(z));
        } catch (Throwable unused) {
        }
    }

    private void c(boolean z) {
        try {
            ScheduledFuture<?> scheduledFuture = this.k;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                return;
            }
            com.bytedance.sdk.component.utils.l.e("ExpressAdLoadManager", "TimeOutFutureTask-->cancel......success=" + this.k.cancel(z));
        } catch (Throwable unused) {
        }
    }

    public void a(AdSlot adSlot, int i, @NonNull com.bytedance.sdk.openadsdk.common.b bVar, int i2) {
        a(adSlot, i, bVar, null, i2);
    }

    public void a(AdSlot adSlot, int i, @Nullable com.bytedance.sdk.openadsdk.common.b bVar, @Nullable a aVar, int i2) {
        this.n.d();
        if (this.f1639e.get()) {
            com.bytedance.sdk.component.utils.l.e("ExpressAdLoadManager", "express ad is loading...");
            return;
        }
        this.i = i;
        this.f1639e.set(true);
        this.a = adSlot;
        if (bVar instanceof PAGBannerAdLoadListener) {
            this.f1638d = (PAGBannerAdLoadListener) bVar;
        }
        this.h = aVar;
        a(adSlot, bVar);
    }
}
