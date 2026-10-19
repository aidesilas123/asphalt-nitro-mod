package com.bytedance.sdk.openadsdk.component.reward.a;

import android.content.Context;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.utils.x;
import com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.component.reward.view.RewardFullBaseLayout;
import com.bytedance.sdk.openadsdk.core.model.o;
import com.bytedance.sdk.openadsdk.core.model.q;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: RewardFullContext.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {

    @NonNull
    public final l G;
    public final d H;
    public final g I;
    public final com.bytedance.sdk.openadsdk.component.reward.view.c J;
    public final i K;
    public final h L;
    public final f M;
    public final c N;
    public final com.bytedance.sdk.openadsdk.i.h O;
    public com.bytedance.sdk.openadsdk.common.f P;
    public final m Q;

    @NonNull
    public final j R;
    public final e S;
    public final com.bytedance.sdk.openadsdk.component.reward.view.e T;
    public final RewardFullBaseLayout U;

    @NonNull
    public final TTBaseVideoActivity V;
    public final Context W;
    public final x X;
    public com.bytedance.sdk.openadsdk.component.reward.b.b Y;
    public final q a;
    public final boolean b;
    public String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1314d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f1316f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f1317g;
    public int h;
    public boolean i;
    public float k;
    public int l;
    public int m;
    public boolean n;
    public final int o;
    public boolean p;
    public boolean q;
    public final boolean s;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1315e = false;
    public int j = 1;
    public long r = 0;
    public int t = 0;
    public final AtomicBoolean u = new AtomicBoolean(false);
    public final AtomicBoolean v = new AtomicBoolean(false);
    public final AtomicBoolean w = new AtomicBoolean(false);
    public final AtomicBoolean x = new AtomicBoolean(false);
    public final AtomicBoolean y = new AtomicBoolean(false);
    public final AtomicBoolean z = new AtomicBoolean(false);
    public final AtomicBoolean A = new AtomicBoolean(false);
    public final AtomicBoolean B = new AtomicBoolean(false);
    public final AtomicBoolean C = new AtomicBoolean(false);
    public final AtomicBoolean D = new AtomicBoolean(false);
    public final AtomicBoolean E = new AtomicBoolean(false);
    public final AtomicBoolean F = new AtomicBoolean(false);

    public a(@NonNull TTBaseVideoActivity tTBaseVideoActivity, x xVar, @NonNull q qVar) {
        this.V = tTBaseVideoActivity;
        Context applicationContext = tTBaseVideoActivity.getApplicationContext();
        this.W = applicationContext;
        this.a = qVar;
        this.f1317g = tTBaseVideoActivity.a;
        this.X = xVar;
        this.f1316f = tTBaseVideoActivity.o();
        this.s = o.h(qVar);
        int iAZ = qVar.aZ();
        this.o = iAZ;
        this.f1314d = com.bytedance.sdk.openadsdk.core.o.d().p(String.valueOf(iAZ));
        this.b = com.bytedance.sdk.openadsdk.core.settings.o.aj().m(String.valueOf(iAZ));
        this.K = new i(this);
        this.T = tTBaseVideoActivity.p() ? new com.bytedance.sdk.openadsdk.component.reward.view.e(this) : new com.bytedance.sdk.openadsdk.component.reward.view.d(this);
        this.U = new RewardFullBaseLayout(tTBaseVideoActivity);
        this.G = new l(this);
        this.H = new d(this);
        this.I = new g(this);
        this.J = new com.bytedance.sdk.openadsdk.component.reward.view.c(this);
        this.Q = new m(this);
        this.R = new j(this);
        this.S = new e(this);
        this.L = new h(this);
        this.M = new f(this);
        this.N = new c(this);
        this.O = new com.bytedance.sdk.openadsdk.i.h(applicationContext);
    }

    public void a(boolean z) {
        this.p = z;
        this.R.d(z);
    }
}
