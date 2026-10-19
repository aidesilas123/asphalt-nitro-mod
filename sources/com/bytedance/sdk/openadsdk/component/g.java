package com.bytedance.sdk.openadsdk.component;

import android.content.Context;
import android.os.Build;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.g.h;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.component.utils.x;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAdLoadListener;
import com.bytedance.sdk.openadsdk.component.f;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.model.s;
import com.bytedance.sdk.openadsdk.core.model.v;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.p;
import com.bytedance.sdk.openadsdk.utils.aa;
import com.bytedance.sdk.openadsdk.utils.ab;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.o2;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: TTAppOpenAdLoadManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class g implements x.a {
    private final Context a;
    private final p<com.bytedance.sdk.openadsdk.b.a> b;
    private final f c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AdSlot f1311f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private PAGAppOpenAdLoadListener f1312g;
    private int h;
    private boolean k;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AtomicBoolean f1309d = new AtomicBoolean(false);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1310e = 0;
    private volatile int i = 0;
    private final v j = new v();

    public g(Context context) {
        if (context != null) {
            this.a = context.getApplicationContext();
        } else {
            this.a = o.a();
        }
        this.b = o.c();
        this.c = f.a(this.a);
    }

    public static g a(Context context) {
        return new g(context);
    }

    private void a() {
        aa.b(new h("tryGetAppOpenAdFromCache") { // from class: com.bytedance.sdk.openadsdk.component.g.2
            @Override // java.lang.Runnable
            public void run() {
                boolean z;
                q qVarE = g.this.c.e(g.this.f1310e);
                if (qVarE == null) {
                    g.this.a(false);
                    return;
                }
                boolean zC = q.c(qVarE);
                if (qVarE.br()) {
                    g.this.a(new com.bytedance.sdk.openadsdk.component.e.b(1, 101, qVarE));
                    return;
                }
                if (zC || o.d().k() != 1) {
                    z = false;
                } else {
                    g.this.a(new com.bytedance.sdk.openadsdk.component.e.b(1, 101, qVarE));
                    z = true;
                }
                if (!g.this.c.b(g.this.f1310e) && !g.this.c.d(g.this.f1310e)) {
                    g.this.a(true);
                    return;
                }
                if (com.bytedance.sdk.openadsdk.core.settings.o.aj().x(g.this.f1311f.getCodeId()) == 0) {
                    g.this.c.g(g.this.f1310e);
                }
                l.b("TTAppOpenAdLoadManager", "Cached material resolution success, video = " + zC);
                if (zC) {
                    if (!TextUtils.isEmpty(g.this.c.a(qVarE)) || Build.VERSION.SDK_INT < 23) {
                        g.this.a(new com.bytedance.sdk.openadsdk.component.e.b(1, 101, qVarE));
                        return;
                    }
                    l.b("TTAppOpenAdLoadManager", "Video cache path not found");
                    g.this.a(false);
                    com.bytedance.sdk.openadsdk.component.d.a.b(qVarE);
                    return;
                }
                if (g.this.c.b(qVarE)) {
                    if (z) {
                        return;
                    }
                    g.this.a(new com.bytedance.sdk.openadsdk.component.e.b(1, 101, qVarE));
                } else {
                    l.b("TTAppOpenAdLoadManager", "Image cache path not found");
                    g.this.a(false);
                    com.bytedance.sdk.openadsdk.component.d.a.b(qVarE);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.bytedance.sdk.openadsdk.component.e.b bVar) {
        int iB = bVar.b();
        int iC = bVar.c();
        if (this.f1309d.get()) {
            if (iB == 1 && iC == 100 && bVar.a()) {
                f.a(o.a()).a(new com.bytedance.sdk.openadsdk.component.e.a(this.f1310e, bVar.d()));
                if (this.k) {
                    return;
                }
                com.bytedance.sdk.openadsdk.component.d.a.a(bVar.d(), 1, this.j);
                return;
            }
            return;
        }
        if (iB != 1) {
            if (iB == 2 || iB == 3) {
                PAGAppOpenAdLoadListener pAGAppOpenAdLoadListener = this.f1312g;
                if (pAGAppOpenAdLoadListener != null) {
                    pAGAppOpenAdLoadListener.onError(bVar.e(), bVar.f());
                }
                this.f1309d.set(true);
                if (iB == 3) {
                    com.bytedance.sdk.openadsdk.component.d.a.a(this.i, this.h);
                    return;
                }
                return;
            }
            return;
        }
        if (this.f1312g != null) {
            this.f1312g.onAdLoaded(new d(this.a, bVar.d(), iC == 101, this.f1311f));
        }
        this.f1309d.set(true);
        if (iC == 101) {
            com.bytedance.sdk.openadsdk.component.d.a.a(bVar.d(), this.j.a().c());
            return;
        }
        if (iC == 100) {
            com.bytedance.sdk.openadsdk.component.d.a.a(bVar.d(), 0, this.j);
            this.k = true;
            if (this.j.a) {
                return;
            }
            if (com.bytedance.sdk.openadsdk.core.settings.o.aj().x(this.f1311f.getCodeId()) == 0) {
                this.c.a(this.f1311f);
            } else {
                this.c.a(new com.bytedance.sdk.openadsdk.component.e.a(this.f1310e, bVar.d()));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(@NonNull final q qVar) {
        this.c.a(qVar, this.j, new f.b() { // from class: com.bytedance.sdk.openadsdk.component.g.4
            @Override // com.bytedance.sdk.openadsdk.component.f.b
            public void a() {
                Log.d("TTAppOpenAdLoadManager", "preLoadFail: image load fail");
                g.this.i = 5;
                g.this.a(new com.bytedance.sdk.openadsdk.component.e.b(2, 100, 10003, com.bytedance.sdk.openadsdk.core.g.a(10003)));
            }

            @Override // com.bytedance.sdk.openadsdk.component.f.b
            public void a(com.bytedance.sdk.openadsdk.k.a.b bVar) {
                Log.d("TTAppOpenAdLoadManager", "preLoadSuccess: image load success");
                g.this.i = 4;
                com.bytedance.sdk.openadsdk.component.e.b bVar2 = new com.bytedance.sdk.openadsdk.component.e.b(1, 100, qVar);
                bVar2.a(true);
                g.this.a(bVar2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(@NonNull final q qVar, AdSlot adSlot) {
        this.c.a(qVar, adSlot, this.j, new f.c() { // from class: com.bytedance.sdk.openadsdk.component.g.3
            @Override // com.bytedance.sdk.openadsdk.component.f.c
            public void a() {
                Log.d("TTAppOpenAdLoadManager", "preLoadSuccess: video load success");
                g.this.i = 4;
                com.bytedance.sdk.openadsdk.component.e.b bVar = new com.bytedance.sdk.openadsdk.component.e.b(1, 100, qVar);
                bVar.a(true);
                g.this.a(bVar);
            }

            @Override // com.bytedance.sdk.openadsdk.component.f.c
            public void a(int i, String str) {
                l.b("TTAppOpenAdLoadManager", "preLoadFail() called with: code = [" + i + "], message = [" + str + o2.i.f6491e);
                g.this.i = 5;
                g.this.a(new com.bytedance.sdk.openadsdk.component.e.b(2, 100, 10003, com.bytedance.sdk.openadsdk.core.g.a(10003)));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        if (z) {
            this.c.g(this.f1310e);
        }
        if (com.bytedance.sdk.openadsdk.core.settings.o.aj().x(this.f1311f.getCodeId()) == 1) {
            b(this.f1311f);
        }
    }

    private void b(@NonNull final AdSlot adSlot) {
        final ab abVarA = ab.a();
        this.i = 1;
        s sVar = new s();
        sVar.h = this.j;
        sVar.f1593d = 1;
        sVar.f1595f = 2;
        this.b.a(adSlot, sVar, 3, new p.a() { // from class: com.bytedance.sdk.openadsdk.component.g.1
            @Override // com.bytedance.sdk.openadsdk.core.p.a
            public void a(int i, String str) {
                g.this.i = 3;
                l.b("TTAppOpenAdLoadManager", "try load app open ad from network fail, " + i + ", " + str);
                g.this.a(new com.bytedance.sdk.openadsdk.component.e.b(2, 100, i, str));
            }

            @Override // com.bytedance.sdk.openadsdk.core.p.a
            public void a(com.bytedance.sdk.openadsdk.core.model.a aVar, com.bytedance.sdk.openadsdk.core.model.b bVar) {
                g.this.i = 2;
                l.b("TTAppOpenAdLoadManager", "try load app open ad from network success");
                if (aVar == null || aVar.c() == null || aVar.c().size() == 0) {
                    g.this.i = 3;
                    g.this.a(new com.bytedance.sdk.openadsdk.component.e.b(2, 100, 20001, com.bytedance.sdk.openadsdk.core.g.a(20001)));
                    bVar.a(-3);
                    com.bytedance.sdk.openadsdk.core.model.b.a(bVar);
                    return;
                }
                final q qVar = aVar.c().get(0);
                long jM = qVar.m();
                g.this.j.b = jM;
                if (qVar.br()) {
                    g.this.a(new com.bytedance.sdk.openadsdk.component.e.b(1, 100, qVar));
                } else if (q.c(qVar)) {
                    g.this.a(qVar, adSlot);
                } else {
                    if (o.d().k() == 1) {
                        g.this.j.b = -1L;
                        g.this.j.a(3);
                        g.this.a(new com.bytedance.sdk.openadsdk.component.e.b(1, 100, qVar));
                    }
                    g.this.a(qVar);
                }
                if (g.this.j.a) {
                    com.bytedance.sdk.openadsdk.b.c.c(qVar, "open_ad", abVarA.c());
                    l.a("TTAppOpenAdLoadManager", "onAdLoad: invoke callback after ", Long.valueOf(jM), "ms for bidding");
                    if (jM != 0) {
                        com.bytedance.sdk.openadsdk.core.l.b().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.g.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                g.this.j.a(2);
                                g.this.a(new com.bytedance.sdk.openadsdk.component.e.b(1, 100, qVar));
                            }
                        }, jM);
                    } else {
                        g.this.j.a(2);
                        g.this.a(new com.bytedance.sdk.openadsdk.component.e.b(1, 100, qVar));
                    }
                }
            }
        });
    }

    public int a(@NonNull AdSlot adSlot) {
        try {
            return Integer.parseInt(adSlot.getCodeId());
        } catch (Throwable unused) {
            return 0;
        }
    }

    @Override // com.bytedance.sdk.component.utils.x.a
    public void a(Message message) {
        if (message.what != 1 || this.f1309d.get()) {
            return;
        }
        a(new com.bytedance.sdk.openadsdk.component.e.b(3, 102, 10002, com.bytedance.sdk.openadsdk.core.g.a(10002)));
    }

    public void a(@NonNull AdSlot adSlot, com.bytedance.sdk.openadsdk.common.b bVar, int i) {
        if (bVar == null) {
            return;
        }
        if (i <= 0) {
            l.b("TTAppOpenAdLoadManager", "Since the timeout value passed by loadAppOpenAd is <=0, now it is set to the default value of 3500ms");
            i = IronSourceConstants.BN_AUCTION_REQUEST;
        }
        this.f1311f = adSlot;
        this.j.a = !TextUtils.isEmpty(adSlot.getBidAdm());
        if (bVar instanceof PAGAppOpenAdLoadListener) {
            this.f1312g = (PAGAppOpenAdLoadListener) bVar;
        }
        this.f1310e = a(this.f1311f);
        this.h = i;
        this.j.a(ab.a());
        if (this.j.a || com.bytedance.sdk.openadsdk.core.settings.o.aj().x(this.f1311f.getCodeId()) == 0) {
            b(this.f1311f);
        }
        if (this.j.a) {
            return;
        }
        new x(com.bytedance.sdk.openadsdk.core.l.b().getLooper(), this).sendEmptyMessageDelayed(1, i);
        a();
    }
}
