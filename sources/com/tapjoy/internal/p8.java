package com.tapjoy.internal;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.tapjoy.TJContentActivity;
import com.tapjoy.TapjoyErrorMessage;
import com.tapjoy.TapjoyLog;
import java.io.IOException;
import java.io.StringWriter;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class p8 extends x0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static p8 f7961d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final v1 f7962e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f7963f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final t5 f7964g;
    public boolean h;
    public boolean i;
    public final Context j;
    public b7 k;
    public Activity l;
    public g2 m;
    public Handler n;
    public d8 o;

    public p8(v1 v1Var, String str, t5 t5Var, Context context) {
        this.f7962e = v1Var;
        this.f7963f = str;
        this.f7964g = t5Var;
        this.j = context;
    }

    @Override // com.tapjoy.internal.x0
    public final void a(g2 g2Var) {
        Activity activity;
        this.m = g2Var;
        WeakReference weakReference = t.f8002e.a;
        Activity activityA = (Activity) (weakReference != null ? weakReference.get() : null);
        if (activityA == null) {
            activityA = t.a();
        }
        this.l = activityA;
        if (activityA != null && !activityA.isFinishing()) {
            try {
                d(this.l, g2Var);
                return;
            } catch (WindowManager.BadTokenException unused) {
            }
        }
        Context baseContext = this.j;
        while (true) {
            if (!(baseContext instanceof ContextWrapper)) {
                activity = null;
                break;
            } else {
                if (baseContext instanceof Activity) {
                    activity = (Activity) baseContext;
                    break;
                }
                baseContext = ((ContextWrapper) baseContext).getBaseContext();
            }
        }
        this.l = activity;
        if (activity != null && !activity.isFinishing()) {
            try {
                d(this.l, g2Var);
                return;
            } catch (WindowManager.BadTokenException unused2) {
            }
        }
        g2Var.a(this.f7963f, this.c, null);
    }

    @Override // com.tapjoy.internal.x0
    public final boolean b() {
        return this.f7964g.a();
    }

    @Override // com.tapjoy.internal.x0
    public final void c() {
        Iterator it = this.f7964g.a.iterator();
        while (it.hasNext()) {
            for (u0 u0Var : ((o2) it.next()).f7948d) {
                n3 n3Var = u0Var.l;
                if (n3Var != null) {
                    n3Var.c();
                }
                n3 n3Var2 = u0Var.m;
                if (n3Var2 != null) {
                    n3Var2.c();
                }
            }
        }
    }

    public final void d(Activity activity, g2 g2Var) {
        if (this.h) {
            TapjoyLog.e("x0", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.f7835d, "Content is already displayed"));
            return;
        }
        this.h = true;
        this.i = true;
        f7961d = this;
        this.k = new b7(activity, this.f7964g, new w7(this, activity, g2Var));
        Window window = activity.getWindow();
        b7 b7Var = this.k;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1, 17);
        Window.Callback callback = window.getCallback();
        window.setCallback(null);
        window.addContentView(b7Var, layoutParams);
        window.setCallback(callback);
        SystemClock.elapsedRealtime();
        v1 v1Var = this.f7962e;
        LinkedHashMap linkedHashMap = this.f7964g.b;
        i5 i5Var = v1Var.i;
        i5Var.getClass();
        d4 d4VarA = i5Var.a(r1.CAMPAIGN, "impression");
        if (linkedHashMap != null) {
            StringWriter stringWriter = new StringWriter();
            h1 h1Var = new h1(stringWriter);
            try {
                h1Var.a(linkedHashMap);
                try {
                    h1Var.a.flush();
                    stringWriter.toString();
                } catch (IOException e2) {
                    s9.a(e2);
                    throw null;
                }
            } catch (IOException e3) {
                s9.a(e3);
                throw null;
            }
        }
        i5Var.b(d4VarA);
        g2Var.b(this.f7963f);
        if (this.f7964g.c > 0.0f) {
            Handler handler = new Handler(Looper.getMainLooper());
            this.n = handler;
            d8 d8Var = new d8(this);
            this.o = d8Var;
            handler.postDelayed(d8Var, (long) (this.f7964g.c * 1000.0f));
        }
    }

    public final void e() {
        g2 g2Var;
        if (this.i) {
            this.i = false;
            Handler handler = this.n;
            if (handler != null) {
                handler.removeCallbacks(this.o);
                this.o = null;
                this.n = null;
            }
            if (f7961d == this) {
                f7961d = null;
            }
            v1 v1Var = this.f7962e;
            LinkedHashMap linkedHashMap = this.f7964g.b;
            SystemClock.elapsedRealtime();
            i5 i5Var = v1Var.i;
            i5Var.getClass();
            d4 d4VarA = i5Var.a(r1.CAMPAIGN, "view");
            if (linkedHashMap != null) {
                StringWriter stringWriter = new StringWriter();
                h1 h1Var = new h1(stringWriter);
                try {
                    h1Var.a(linkedHashMap);
                    try {
                        h1Var.a.flush();
                        stringWriter.toString();
                    } catch (IOException e2) {
                        s9.a(e2);
                        throw null;
                    }
                } catch (IOException e3) {
                    s9.a(e3);
                    throw null;
                }
            }
            i5Var.b(d4VarA);
            if (!this.a && (g2Var = this.m) != null) {
                g2Var.a(this.f7963f, this.c, null);
                this.m = null;
            }
            ViewGroup viewGroup = (ViewGroup) this.k.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.k);
            }
            this.k = null;
            Activity activity = this.l;
            if (activity instanceof TJContentActivity) {
                activity.finish();
            }
            this.l = null;
        }
    }
}
