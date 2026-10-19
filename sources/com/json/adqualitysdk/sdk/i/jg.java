package com.json.adqualitysdk.sdk.i;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes4.dex */
public final class jg {
    private jf b;
    private boolean a = false;
    private Handler c = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private jc f5908d = new a();

    final class a extends je {
        a() {
        }

        @Override // com.json.adqualitysdk.sdk.i.je, android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
            jg.c(jg.this);
        }

        @Override // com.json.adqualitysdk.sdk.i.je, android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            jg.c(jg.this);
        }

        @Override // com.json.adqualitysdk.sdk.i.je, android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            jg.b(jg.this, activity);
        }

        @Override // com.json.adqualitysdk.sdk.i.je, android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
            jg.e(jg.this, activity);
        }

        @Override // com.json.adqualitysdk.sdk.i.je, android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            jg.c(jg.this);
        }

        @Override // com.json.adqualitysdk.sdk.i.je, android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            jg.c(jg.this);
        }

        @Override // com.json.adqualitysdk.sdk.i.je, android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
            jg.c(jg.this);
        }
    }

    final class b extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ Activity f5909d;

        b(Activity activity) {
            this.f5909d = activity;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            jg.d(jg.this);
            if (jg.this.b != null) {
                jg.this.b.mo269(this.f5909d);
            }
        }
    }

    public jg(jf jfVar) {
        this.b = jfVar;
        jb.m899().m904(this.f5908d);
    }

    static /* synthetic */ void b(jg jgVar, Activity activity) {
        jgVar.c.postDelayed(jgVar.new b(activity), 500L);
    }

    static /* synthetic */ void c(jg jgVar) {
        jgVar.c.removeCallbacksAndMessages(null);
    }

    static /* synthetic */ boolean d(jg jgVar) {
        jgVar.a = true;
        return true;
    }

    static /* synthetic */ void e(jg jgVar, Activity activity) {
        if (jgVar.a) {
            jgVar.a = false;
            jf jfVar = jgVar.b;
            if (jfVar != null) {
                jfVar.mo268(activity);
            }
        }
        jgVar.c.removeCallbacksAndMessages(null);
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final void m910() {
        this.c.removeCallbacksAndMessages(null);
        if (this.f5908d != null) {
            jb.m899().m901(this.f5908d);
            this.f5908d = null;
        }
    }
}
