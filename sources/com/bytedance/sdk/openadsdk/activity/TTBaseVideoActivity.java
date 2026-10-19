package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.component.utils.x;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.b.b;
import com.bytedance.sdk.openadsdk.component.reward.a.a;
import com.bytedance.sdk.openadsdk.component.reward.a.h;
import com.bytedance.sdk.openadsdk.component.reward.b.f;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.model.t;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.video.c.b;
import com.bytedance.sdk.openadsdk.core.video.c.c;
import com.bytedance.sdk.openadsdk.i.e;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TTBaseVideoActivity extends TTBaseActivity implements x.a, b, c {
    public final String a;
    a b;

    @Nullable
    protected com.bytedance.sdk.openadsdk.component.reward.b.b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final x f1113d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected IListenerManager f1114e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f1115f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f1116g;
    int h;
    public boolean i;
    protected e j;
    private boolean k;
    private int l;
    private final AtomicBoolean m;

    public TTBaseVideoActivity() {
        this.a = o() ? "rewarded_video" : "fullscreen_interstitial_ad";
        this.f1113d = new x(Looper.getMainLooper(), this);
        this.k = false;
        this.l = 0;
        this.h = 1;
        this.i = true;
        this.m = new AtomicBoolean(false);
        this.j = new e() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.1
            @Override // com.bytedance.sdk.openadsdk.i.e
            public void a() {
                TTBaseVideoActivity.this.j();
            }
        };
    }

    private void a(q qVar, Bundle bundle) {
        a aVar = new a(this, this.f1113d, qVar);
        this.b = aVar;
        com.bytedance.sdk.openadsdk.component.reward.a.b.a(aVar, getIntent(), bundle);
        Intent intent = getIntent();
        if (intent != null) {
            a(intent);
            qVar.a(intent.getLongExtra("start_show_time", 0L));
        }
        if (bundle != null && this.b.p) {
            a();
        }
        com.bytedance.sdk.openadsdk.component.reward.b.b bVarA = f.a(this.b);
        this.c = bVarA;
        this.b.Y = bVarA;
        l.b("TTAD.BVA", "init: mAdType = " + this.c);
    }

    private void s() {
        setContentView(this.b.U);
        this.b.U.a(this.c);
        this.c.a(this, this.f1113d);
        this.c.l();
    }

    private void t() {
        this.c.a(this.j);
        this.f1115f = (int) this.b.G.A();
        n();
        f();
        if (this.b.a.au() == null || this.b.a.au().a() == null) {
            return;
        }
        this.b.a.au().a().a(0L);
    }

    private boolean u() {
        if (this.b.u.get() && this.b.s) {
            return false;
        }
        if ((this instanceof TTFullScreenExpressVideoActivity) || (this instanceof TTRewardExpressVideoActivity)) {
            return this.b.u.get();
        }
        return true;
    }

    protected IListenerManager a(int i) {
        if (this.f1114e == null) {
            this.f1114e = IListenerManager.Stub.asInterface(com.bytedance.sdk.openadsdk.multipro.aidl.a.a().a(i));
        }
        return this.f1114e;
    }

    protected abstract void a();

    protected void a(@NonNull Intent intent) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.c.b
    public void a(Bundle bundle) {
    }

    @Override // com.bytedance.sdk.component.utils.x.a
    public void a(Message message) {
        com.bytedance.sdk.openadsdk.component.reward.b.b bVar = this.c;
        if (bVar == null) {
            return;
        }
        bVar.a(message);
    }

    public void a(boolean z, int i) {
        a(z, false, i);
    }

    public void a(boolean z, boolean z2, int i) {
        com.bytedance.sdk.openadsdk.component.reward.b.b bVar = this.c;
        if (bVar == null) {
            return;
        }
        bVar.a(z, z2, false, i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.c.c
    public void b() {
        if (!this.b.y.getAndSet(true) || t.k(this.b.a)) {
            this.b.L.a();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.c.c
    public void c() {
        com.bytedance.sdk.openadsdk.component.reward.b.b bVar = this.c;
        if (bVar == null) {
            return;
        }
        bVar.n();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.c.c
    public void d() {
        this.b.G.B();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.c.c
    public View e() {
        return this.b.G.C();
    }

    protected void f() {
        if (t.k(this.b.a)) {
            a(false, b.a.c);
            return;
        }
        com.bytedance.sdk.openadsdk.component.reward.b.b bVar = this.c;
        if (bVar != null) {
            bVar.a(this.b.T.f());
            this.c.z();
        }
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        if (this.b == null) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.utils.t.e()) {
            ad.b((Activity) this);
        }
        if (!t.b(this.b.a) || this.b.u.get()) {
            return;
        }
        ApmHelper.reportCustomError("invalid finish", "playable", new RuntimeException());
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.c.b
    public final void g() {
        if (this.m.compareAndSet(false, true)) {
            h();
        }
    }

    protected abstract void h();

    @Override // com.bytedance.sdk.openadsdk.core.video.c.c
    public void i() {
    }

    public void j() {
    }

    protected void k() {
        if (p() && !this.k) {
            this.k = true;
            getWindow().getDecorView().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.2
                /* JADX WARN: Type inference fix 'apply assigned field type' failed
                java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
                	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
                	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                 */
                @Override // java.lang.Runnable
                public void run() {
                    TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                    a aVar = tTBaseVideoActivity.b;
                    com.bytedance.sdk.openadsdk.component.reward.a.f fVar = aVar.M;
                    float[] fArrA = aVar.K.a(tTBaseVideoActivity.h);
                    TTBaseVideoActivity tTBaseVideoActivity2 = TTBaseVideoActivity.this;
                    fVar.a(fArrA, tTBaseVideoActivity2, tTBaseVideoActivity2.c);
                }
            });
        }
    }

    protected void l() {
        Message message = new Message();
        message.what = 400;
        if (o()) {
            c(10000);
        }
        this.f1113d.sendMessageDelayed(message, AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS);
    }

    protected void m() {
        this.f1113d.removeMessages(400);
    }

    protected abstract void n();

    public abstract boolean o();

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        a aVar = this.b;
        if (aVar == null) {
            return;
        }
        aVar.K.a();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        com.bytedance.sdk.openadsdk.component.reward.b.b bVar;
        if (this.b == null || (bVar = this.c) == null) {
            super.onBackPressed();
        } else {
            bVar.w();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        o.a(getApplicationContext());
        if (!com.bytedance.sdk.openadsdk.core.l.e()) {
            finish();
            return;
        }
        q qVarA = com.bytedance.sdk.openadsdk.component.reward.a.b.a(getIntent(), bundle, this);
        if (qVarA == null) {
            finish();
            return;
        }
        com.bytedance.sdk.openadsdk.utils.b.a(qVarA);
        this.h = qVarA.ak();
        a(qVarA, bundle);
        try {
            s();
            t();
        } catch (Throwable th) {
            l.c("TTAD.BVA", "onCreate: ", th);
            this.i = false;
            com.bytedance.sdk.openadsdk.b.c.b();
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        a aVar = this.b;
        if (aVar == null || this.c == null) {
            return;
        }
        if (aVar.r > 0 && aVar.x.get()) {
            String strValueOf = String.valueOf(SystemClock.elapsedRealtime() - this.b.r);
            a aVar2 = this.b;
            com.bytedance.sdk.openadsdk.b.c.a(strValueOf, aVar2.a, this.a, aVar2.G.a());
            this.b.r = 0L;
        }
        this.b.N.b();
        this.f1113d.removeCallbacksAndMessages(null);
        this.c.v();
        com.bytedance.sdk.openadsdk.n.a.e.a(this.b.a);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        com.bytedance.sdk.openadsdk.component.reward.b.b bVar = this.c;
        if (bVar == null) {
            return;
        }
        bVar.t();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    protected void onResume() {
        com.bytedance.sdk.openadsdk.component.reward.b.b bVar;
        l.b("TTAD.BVA", "onResume: ");
        super.onResume();
        if (this.b == null || (bVar = this.c) == null) {
            return;
        }
        bVar.r();
        a aVar = this.b;
        aVar.f1315e = true;
        aVar.K.b(this.f1113d);
        if (u()) {
            a aVar2 = this.b;
            aVar2.R.a(aVar2.a.an());
        }
        this.b.T.o();
        this.b.Q.s();
        this.b.I.l();
        if (this.c.b()) {
            this.b.G.a(this.c);
            this.b.G.a(false, this, this.l != 0);
        }
        this.l++;
        k();
        com.bytedance.sdk.openadsdk.component.reward.view.c cVar = this.b.J;
        if (cVar != null) {
            cVar.g();
        }
        this.b.K.a(this.f1113d);
        this.c.s();
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        a aVar = this.b;
        if (aVar == null) {
            super.onSaveInstanceState(bundle);
        } else {
            com.bytedance.sdk.openadsdk.component.reward.a.b.a(aVar, bundle);
            super.onSaveInstanceState(bundle);
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        a aVar = this.b;
        if (aVar == null) {
            return;
        }
        aVar.Q.D();
        com.bytedance.sdk.openadsdk.utils.c.a(this, this.b.a);
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        com.bytedance.sdk.openadsdk.component.reward.b.b bVar = this.c;
        if (bVar == null) {
            return;
        }
        bVar.u();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        h hVar;
        super.onWindowFocusChanged(z);
        a aVar = this.b;
        if (aVar != null && (hVar = aVar.L) != null) {
            hVar.b(z);
            this.b.L.c(z);
        }
        a aVar2 = this.b;
        if (aVar2 != null) {
            com.bytedance.sdk.openadsdk.component.reward.b.b bVar = aVar2.Y;
            if (bVar instanceof com.bytedance.sdk.openadsdk.component.reward.b.e) {
                ((com.bytedance.sdk.openadsdk.component.reward.b.e) bVar).b(z);
            }
        }
    }

    public boolean p() {
        return false;
    }

    public boolean q() {
        return false;
    }
}
