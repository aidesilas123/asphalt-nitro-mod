package com.tapjoy.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.SystemClock;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.tapjoy.TJContentActivity;
import com.tapjoy.TapjoyErrorMessage;
import com.tapjoy.TapjoyLog;
import java.io.IOException;
import java.io.StringWriter;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class i6 extends x0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static i6 f7913d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final v1 f7914e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f7915f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final t3 f7916g;
    public d h;
    public boolean i;
    public long j;
    public final Context k;
    public boolean l = false;

    public i6(v1 v1Var, String str, t3 t3Var, Context context) {
        this.f7914e = v1Var;
        this.f7915f = str;
        this.f7916g = t3Var;
        this.k = context;
    }

    @Override // com.tapjoy.internal.x0
    public final void a(g2 g2Var) {
        Activity activity;
        Context baseContext = this.k;
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
        if (activity != null && !activity.isFinishing()) {
            try {
                d(activity, g2Var);
                return;
            } catch (WindowManager.BadTokenException unused) {
            }
        }
        WeakReference weakReference = t.f8002e.a;
        Activity activityA = (Activity) (weakReference != null ? weakReference.get() : null);
        if (activityA == null) {
            activityA = t.a();
        }
        boolean z = false;
        if (activityA != null && (activityA.getWindow().getAttributes().flags & 1024) != 0) {
            z = true;
        }
        try {
            TJContentActivity.start(v1.a.f8018g, new h4(this, g2Var), z);
        } catch (ActivityNotFoundException unused2) {
            if (activityA != null && !activityA.isFinishing()) {
                try {
                    d(activityA, g2Var);
                    return;
                } catch (WindowManager.BadTokenException unused3) {
                    g2Var.a(this.f7915f, this.c, null);
                }
            }
            g2Var.a(this.f7915f, this.c, null);
        }
    }

    @Override // com.tapjoy.internal.x0
    public final boolean b() {
        g8 g8Var;
        n3 n3Var;
        n3 n3Var2;
        n3 n3Var3;
        n3 n3Var4;
        n3 n3Var5;
        t3 t3Var = this.f7916g;
        n3 n3Var6 = t3Var.c;
        return (n3Var6 == null || n3Var6.f7944d == null || ((g8Var = t3Var.l) != null && (n3Var5 = g8Var.b) != null && n3Var5.f7944d == null) || (((n3Var = t3Var.b) == null || (n3Var4 = t3Var.f8005f) == null || n3Var.f7944d == null || n3Var4.f7944d == null) && ((n3Var2 = t3Var.a) == null || (n3Var3 = t3Var.f8004e) == null || n3Var2.f7944d == null || n3Var3.f7944d == null))) ? false : true;
    }

    @Override // com.tapjoy.internal.x0
    public final void c() {
        n3 n3Var;
        t3 t3Var = this.f7916g;
        n3 n3Var2 = t3Var.a;
        if (n3Var2 != null) {
            n3Var2.c();
        }
        n3 n3Var3 = t3Var.b;
        if (n3Var3 != null) {
            n3Var3.c();
        }
        t3Var.c.c();
        n3 n3Var4 = t3Var.f8004e;
        if (n3Var4 != null) {
            n3Var4.c();
        }
        n3 n3Var5 = t3Var.f8005f;
        if (n3Var5 != null) {
            n3Var5.c();
        }
        g8 g8Var = t3Var.l;
        if (g8Var == null || (n3Var = g8Var.b) == null) {
            return;
        }
        n3Var.c();
    }

    public final void d(Activity activity, g2 g2Var) {
        if (this.i) {
            TapjoyLog.e("r3", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.f7835d, "Content is already displayed"));
            return;
        }
        this.i = true;
        f7913d = this;
        d dVar = new d(activity);
        this.h = dVar;
        dVar.setOnCancelListener(new t4(this, g2Var));
        this.h.setOnDismissListener(new k5(this, activity, g2Var));
        this.h.setCanceledOnTouchOutside(false);
        r6 r6Var = new r6(activity, this.f7916g, new c7(activity, this.f7916g, new y5(this, activity, g2Var)));
        FrameLayout frameLayout = new FrameLayout(activity);
        frameLayout.addView(r6Var, new FrameLayout.LayoutParams(-2, -2, 17));
        this.h.setContentView(frameLayout);
        this.h.show();
        this.h.getWindow().setLayout(-1, -1);
        if ((activity.getWindow().getAttributes().flags & 1024) != 0) {
            this.h.getWindow().setFlags(1024, 1024);
        }
        this.j = SystemClock.elapsedRealtime();
        v1 v1Var = this.f7914e;
        LinkedHashMap linkedHashMap = this.f7916g.k;
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
        g2Var.b(this.f7915f);
    }
}
