package com.moat.analytics.mobile.glft;

import android.app.Application;
import android.content.Context;
import androidx.annotation.Nullable;
import com.moat.analytics.mobile.glft.f;
import com.moat.analytics.mobile.glft.u;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
class j extends MoatAnalytics implements u.b {

    @Nullable
    f a;
    WeakReference<Context> b;
    private boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f7659d;

    j() {
    }

    private void a(MoatOptions moatOptions, Application application) {
        u.d().f();
        if (application == null) {
            return;
        }
        if (this.c) {
            n.a(3, "MoatAnalytics", this, "Moat SDK has already been started.");
            return;
        }
        this.b = new WeakReference<>(application.getApplicationContext());
        this.c = true;
        a.a(application);
        u.d().a(this);
        if (moatOptions.disableAdIdCollection) {
            return;
        }
        p.a(application);
    }

    private void d() {
        if (this.a == null) {
            f fVar = new f(a.a(), f.a.DISPLAY);
            this.a = fVar;
            fVar.a(this.f7659d);
            n.a(3, "MoatAnalytics", this, "Preparing native display tracking with partner code " + this.f7659d);
        }
    }

    boolean a() {
        return this.c;
    }

    @Override // com.moat.analytics.mobile.glft.u.b
    public void b() {
        if (this.f7659d != null) {
            try {
                d();
            } catch (Exception e2) {
                l.a(e2);
            }
        }
    }

    @Override // com.moat.analytics.mobile.glft.u.b
    public void c() {
    }

    @Override // com.moat.analytics.mobile.glft.MoatAnalytics
    public void prepareNativeDisplayTracking(String str) {
        this.f7659d = str;
        if (u.d().a() == u.d.OFF) {
            return;
        }
        try {
            d();
        } catch (Exception e2) {
            l.a(e2);
        }
    }

    @Override // com.moat.analytics.mobile.glft.MoatAnalytics
    public void start(Application application) {
        start(new MoatOptions(), application);
    }

    @Override // com.moat.analytics.mobile.glft.MoatAnalytics
    public void start(MoatOptions moatOptions, Application application) {
        try {
            a(moatOptions, application);
        } catch (Exception e2) {
            l.a(e2);
        }
    }
}
