package com.applovin.impl.sdk.network;

import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.SessionTracker;
import com.applovin.impl.sdk.e.ab;
import com.applovin.impl.sdk.e.q;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.u;
import com.applovin.impl.sdk.x;
import com.applovin.sdk.AppLovinPostbackListener;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class f implements AppLovinBroadcastManager.Receiver {
    private final Object aFv = new Object();
    private final int aId;

    @Nullable
    private final g aIe;
    private final List<h> aIf;
    private final Set<h> aIg;
    private final List<h> aIh;
    private final x logger;
    private final n sdk;

    public f(n nVar) {
        ArrayList arrayList = new ArrayList();
        this.aIf = arrayList;
        this.aIg = new HashSet();
        this.aIh = new ArrayList();
        if (nVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.sdk = nVar;
        this.logger = nVar.BN();
        int iIntValue = ((Integer) nVar.a(com.applovin.impl.sdk.c.b.aNF)).intValue();
        this.aId = iIntValue;
        if (!((Boolean) nVar.a(com.applovin.impl.sdk.c.b.aNI)).booleanValue()) {
            this.aIe = null;
            return;
        }
        g gVar = new g(this, nVar);
        this.aIe = gVar;
        if (u.a(com.applovin.impl.sdk.c.b.aMb, nVar) && u.Lx()) {
            a(new Runnable() { // from class: com.applovin.impl.sdk.network.m
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.ln();
                }
            }, true, true);
        } else {
            arrayList.addAll(gVar.gJ(iIntValue));
        }
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Is() {
        synchronized (this.aFv) {
            Iterator<h> it = this.aIh.iterator();
            while (it.hasNext()) {
                b(it.next());
            }
            this.aIh.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void It() {
        synchronized (this.aFv) {
            Iterator it = new ArrayList(this.aIf).iterator();
            while (it.hasNext()) {
                b((h) it.next());
            }
        }
    }

    private void a(final h hVar, @Nullable final AppLovinPostbackListener appLovinPostbackListener) {
        if (x.Fn()) {
            this.logger.f("PersistentPostbackManager", "Preparing to submit postback: " + hVar);
        }
        if (this.sdk.Bp() && !hVar.IE()) {
            if (x.Fn()) {
                this.logger.f("PersistentPostbackManager", "Skipping postback dispatch because SDK is still initializing - postback will be dispatched afterwards");
                return;
            }
            return;
        }
        if (TextUtils.isEmpty(hVar.Iu())) {
            if (x.Fn()) {
                this.logger.i("PersistentPostbackManager", "Skipping empty postback dispatch...");
                return;
            }
            return;
        }
        synchronized (this.aFv) {
            if (this.aIg.contains(hVar)) {
                if (x.Fn()) {
                    this.logger.f("PersistentPostbackManager", "Skipping in progress postback: " + hVar.Iu());
                }
                return;
            }
            hVar.IA();
            Integer num = (Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aNE);
            if (hVar.Iz() > num.intValue()) {
                if (x.Fn()) {
                    this.logger.h("PersistentPostbackManager", "Exceeded maximum persisted attempt count of " + num + ". Dequeuing postback: " + hVar);
                }
                d(hVar);
                return;
            }
            synchronized (this.aFv) {
                this.aIg.add(hVar);
            }
            i iVarIH = i.E(this.sdk).cW(hVar.Iu()).cY(hVar.Iv()).k(hVar.HR()).cX(hVar.HQ()).l(hVar.HS()).K(hVar.Iw() != null ? new JSONObject(hVar.Iw()) : null).aU(hVar.If()).aS(hVar.Ic()).a(hVar.Id()).bb(hVar.Ix()).di(hVar.Iy()).Ig();
            if (x.Fn()) {
                this.logger.f("PersistentPostbackManager", "Submitting postback: " + hVar);
            }
            this.sdk.Ct().dispatchPostbackRequest(iVarIH, new AppLovinPostbackListener() { // from class: com.applovin.impl.sdk.network.f.1
                @Override // com.applovin.sdk.AppLovinPostbackListener
                public void onPostbackFailure(String str, int i) {
                    x unused = f.this.logger;
                    if (x.Fn()) {
                        f.this.logger.g("PersistentPostbackManager", "Failed to submit postback: " + hVar + " with error code: " + i + "; will retry later...");
                    }
                    f.this.e(hVar);
                    com.applovin.impl.sdk.utils.m.a(appLovinPostbackListener, str, i);
                    if (hVar.Iz() == 1) {
                        f.this.sdk.Cs().b(str, "dispatchPostback", i);
                    }
                }

                @Override // com.applovin.sdk.AppLovinPostbackListener
                public void onPostbackSuccess(String str) {
                    f.this.d(hVar);
                    x unused = f.this.logger;
                    if (x.Fn()) {
                        f.this.logger.f("PersistentPostbackManager", "Successfully submit postback: " + hVar);
                    }
                    f.this.Is();
                    com.applovin.impl.sdk.utils.m.a(appLovinPostbackListener, str);
                }
            });
        }
    }

    private void a(Runnable runnable, boolean z, boolean z2) {
        if (!z) {
            runnable.run();
        } else {
            this.sdk.BO().a(new ab(this.sdk, z2, "runPostbackTask", runnable), q.b.POSTBACKS);
        }
    }

    private void b(h hVar) {
        a(hVar, (AppLovinPostbackListener) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(h hVar, AppLovinPostbackListener appLovinPostbackListener) {
        synchronized (this.aFv) {
            c(hVar);
            a(hVar, appLovinPostbackListener);
        }
    }

    private void c(h hVar) {
        synchronized (this.aFv) {
            while (this.aIf.size() > this.aId) {
                this.aIf.remove(0);
            }
            this.aIf.add(hVar);
        }
        if (x.Fn()) {
            this.logger.f("PersistentPostbackManager", "Enqueued postback: " + hVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(h hVar) {
        synchronized (this.aFv) {
            this.aIg.remove(hVar);
            this.aIf.remove(hVar);
        }
        if (x.Fn()) {
            this.logger.f("PersistentPostbackManager", "Dequeued postback: " + hVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(h hVar) {
        synchronized (this.aFv) {
            this.aIg.remove(hVar);
            this.aIh.add(hVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void ln() {
        synchronized (this.aFv) {
            this.aIf.addAll(0, this.aIe.gJ(this.aId));
        }
    }

    public void Iq() {
        a(new Runnable() { // from class: com.applovin.impl.sdk.network.l
            @Override // java.lang.Runnable
            public final void run() {
                this.a.It();
            }
        }, true, false);
    }

    protected List<h> Ir() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.aFv) {
            if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aNH)).booleanValue()) {
                arrayList.ensureCapacity(this.aIh.size());
                arrayList.addAll(this.aIh);
            } else {
                arrayList.ensureCapacity(this.aIf.size());
                arrayList.addAll(this.aIf);
            }
        }
        return arrayList;
    }

    public void a(h hVar) {
        a(hVar, true);
    }

    public void a(h hVar, boolean z) {
        a(hVar, z, (AppLovinPostbackListener) null);
    }

    public void a(final h hVar, boolean z, @Nullable final AppLovinPostbackListener appLovinPostbackListener) {
        if (TextUtils.isEmpty(hVar.Iu())) {
            if (x.Fn()) {
                this.logger.i("PersistentPostbackManager", "Requested a postback dispatch for empty URL; nothing to do...");
            }
        } else {
            if (z) {
                hVar.IB();
            }
            a(new Runnable() { // from class: com.applovin.impl.sdk.network.k
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.b(hVar, appLovinPostbackListener);
                }
            }, u.Lx(), hVar.IE());
        }
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, @Nullable Map<String, Object> map) {
        this.sdk.BO().a(this.aIe, q.b.POSTBACKS);
    }
}
