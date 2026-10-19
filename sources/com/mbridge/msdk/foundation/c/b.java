package com.mbridge.msdk.foundation.c;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.mbridge.msdk.c.e;
import com.mbridge.msdk.c.f;
import com.mbridge.msdk.foundation.c.a.a;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.widget.FeedBackButton;
import com.mbridge.msdk.widget.dialog.MBFeedBackDialog;
import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;

/* JADX INFO: compiled from: FeedbackManager.java */
/* JADX INFO: loaded from: classes4.dex */
public final class b {
    public static int a = -2;
    public static int b = -2;
    public static volatile boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ConcurrentHashMap<String, com.mbridge.msdk.foundation.c.a.a> f7020d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final RelativeLayout.LayoutParams f7021e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private e f7022f;

    /* JADX INFO: compiled from: FeedbackManager.java */
    static class a {
        private static final b a = new b();
    }

    private b() {
        this.f7020d = new ConcurrentHashMap<>();
        this.f7021e = new RelativeLayout.LayoutParams(a, b);
    }

    public static b a() {
        return a.a;
    }

    private boolean a(Context context, MBFeedBackDialog mBFeedBackDialog) {
        Activity activityA = a(context);
        if (activityA == null || mBFeedBackDialog == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 17 && activityA.isDestroyed()) {
            return false;
        }
        try {
            if (mBFeedBackDialog.isShowing() || activityA.isFinishing()) {
                return false;
            }
            mBFeedBackDialog.show();
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private com.mbridge.msdk.foundation.c.a.a d(String str) {
        if (TextUtils.isEmpty(str)) {
            str = com.mbridge.msdk.foundation.controller.b.d().h();
        }
        if (this.f7020d.containsKey(str)) {
            return this.f7020d.get(str);
        }
        return null;
    }

    public final Activity a(Context context) {
        Activity activity;
        Context contextC = com.mbridge.msdk.foundation.controller.b.d().c();
        Activity activity2 = null;
        try {
            Activity activity3 = contextC instanceof Activity ? (Activity) contextC : null;
            try {
                if ((context instanceof Activity) && (Build.VERSION.SDK_INT < 17 || !((Activity) context).isDestroyed())) {
                    activity3 = (Activity) context;
                }
                WeakReference<Activity> weakReferenceA = com.mbridge.msdk.foundation.controller.b.d().a();
                if (weakReferenceA != null && (activity = weakReferenceA.get()) != null && !activity.isFinishing() && (Build.VERSION.SDK_INT < 17 || !activity.isDestroyed())) {
                    activity3 = activity;
                }
                if (activity3 == null || activity3.isFinishing()) {
                    return null;
                }
                if (Build.VERSION.SDK_INT >= 17) {
                    if (activity3.isDestroyed()) {
                        return null;
                    }
                }
                return activity3;
            } catch (Exception e2) {
                e = e2;
                activity2 = activity3;
                e.printStackTrace();
                return activity2;
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    public final com.mbridge.msdk.foundation.c.a.a a(String str) {
        com.mbridge.msdk.foundation.c.a.a aVar;
        if (TextUtils.isEmpty(str)) {
            str = com.mbridge.msdk.foundation.controller.b.d().h();
        }
        if (this.f7020d.containsKey(str)) {
            aVar = this.f7020d.get(str);
        } else {
            aVar = new com.mbridge.msdk.foundation.c.a.a(str);
            this.f7020d.put(str, aVar);
        }
        if (aVar != null) {
            return aVar;
        }
        com.mbridge.msdk.foundation.c.a.a aVar2 = new com.mbridge.msdk.foundation.c.a.a(str);
        this.f7020d.put(str, aVar2);
        return aVar2;
    }

    public final void a(String str, int i) {
        a(str).b(i);
    }

    public final void a(String str, int i, int i2, int i3, float f2, float f3, float f4, String str2, String str3, float f5, JSONArray jSONArray) {
        com.mbridge.msdk.foundation.c.a.a aVarA = a(str);
        Context contextG = com.mbridge.msdk.foundation.controller.b.d().g();
        aVarA.a(af.b(contextG, f2), af.b(contextG, f3), af.b(contextG, i), af.b(contextG, i2), af.b(contextG, i3), f4, str2, str3, f5, jSONArray);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x006e A[PHI: r2
      0x006e: PHI (r2v8 com.mbridge.msdk.foundation.c.a.a) = 
      (r2v7 com.mbridge.msdk.foundation.c.a.a)
      (r2v11 com.mbridge.msdk.foundation.c.a.a)
      (r2v14 com.mbridge.msdk.foundation.c.a.a)
     binds: [B:5:0x0035, B:7:0x004e, B:9:0x0067] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(java.lang.String r15, int r16, int r17, java.lang.String r18, java.lang.String r19) {
        /*
            r14 = this;
            r0 = r14
            r1 = r15
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r15)
            java.lang.String r3 = "_"
            r2.append(r3)
            r4 = 1
            r2.append(r4)
            java.lang.String r2 = r2.toString()
            com.mbridge.msdk.foundation.c.a.a r2 = r14.d(r2)
            r4 = 0
            if (r2 != 0) goto L71
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r15)
            r2.append(r3)
            r5 = 2
            r2.append(r5)
            java.lang.String r2 = r2.toString()
            com.mbridge.msdk.foundation.c.a.a r2 = r14.d(r2)
            if (r2 != 0) goto L6e
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r15)
            r2.append(r3)
            r5 = 3
            r2.append(r5)
            java.lang.String r2 = r2.toString()
            com.mbridge.msdk.foundation.c.a.a r2 = r14.d(r2)
            if (r2 != 0) goto L6e
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r15)
            r2.append(r3)
            r3 = 4
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            com.mbridge.msdk.foundation.c.a.a r2 = r14.d(r2)
            if (r2 != 0) goto L6e
            com.mbridge.msdk.foundation.c.a.a r2 = r14.a(r15)
            goto L71
        L6e:
            r2.b(r4)
        L71:
            if (r2 == 0) goto La6
            com.mbridge.msdk.foundation.entity.CampaignEx r5 = r2.e()
            java.lang.String r1 = ""
            if (r5 == 0) goto L81
            java.lang.String r3 = r5.getCampaignUnitId()
            r6 = r3
            goto L82
        L81:
            r6 = r1
        L82:
            int r7 = r2.f()
            int r8 = r2.g()
            boolean r2 = android.text.TextUtils.isEmpty(r18)
            if (r2 != 0) goto L93
            r9 = r18
            goto L94
        L93:
            r9 = r1
        L94:
            if (r5 == 0) goto L9c
            int r4 = r5.getAdType()
            r11 = r4
            goto L9d
        L9c:
            r11 = 0
        L9d:
            r10 = r16
            r12 = r17
            r13 = r19
            com.mbridge.msdk.foundation.same.report.q.a(r5, r6, r7, r8, r9, r10, r11, r12, r13)
        La6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.c.b.a(java.lang.String, int, int, java.lang.String, java.lang.String):void");
    }

    public final void a(String str, int i, ViewGroup viewGroup) {
        com.mbridge.msdk.foundation.c.a.a aVarA = a(str);
        if (aVarA.c() != null) {
            aVarA.a(i);
            if (i == 0) {
                a(str, com.mbridge.msdk.foundation.controller.b.d().g(), viewGroup, (ViewGroup.LayoutParams) null, (com.mbridge.msdk.foundation.c.a) null);
            }
        }
    }

    public final void a(String str, int i, com.mbridge.msdk.foundation.c.a aVar) {
        com.mbridge.msdk.foundation.c.a.a aVarA = a(str);
        aVarA.a(new a.C0399a(str, aVar));
        if (i == 1) {
            aVarA.b();
        } else {
            aVarA.a();
        }
    }

    public final void a(String str, Context context, ViewGroup viewGroup, ViewGroup.LayoutParams layoutParams, com.mbridge.msdk.foundation.c.a aVar) {
        if (b()) {
            com.mbridge.msdk.foundation.c.a.a aVarA = a(str);
            if (aVar != null) {
                aVarA.a(new a.C0399a(str, aVar));
            }
            FeedBackButton feedBackButtonC = aVarA.c();
            if (feedBackButtonC != null) {
                if (layoutParams == null) {
                    int iB = af.b(com.mbridge.msdk.foundation.controller.b.d().g(), 10.0f);
                    this.f7021e.setMargins(iB, iB, iB, iB);
                    layoutParams = this.f7021e;
                }
                ViewGroup viewGroup2 = (ViewGroup) feedBackButtonC.getParent();
                if (viewGroup2 != null) {
                    viewGroup2.removeView(feedBackButtonC);
                }
                Activity activityA = a(context);
                if (activityA != null && viewGroup == null) {
                    viewGroup = (ViewGroup) activityA.findViewById(R.id.content);
                }
                if (viewGroup != null) {
                    viewGroup.removeView(feedBackButtonC);
                    viewGroup.addView(feedBackButtonC, layoutParams);
                }
            }
        }
    }

    public final void a(String str, com.mbridge.msdk.foundation.c.a aVar) {
        com.mbridge.msdk.foundation.c.a.a aVarA = a(str);
        if (aVar != null) {
            aVarA.a(new a.C0399a(str, aVar));
        }
    }

    public final void a(String str, CampaignEx campaignEx) {
        a(str).a(campaignEx);
    }

    public final void a(String str, FeedBackButton feedBackButton) {
        a(str).a(feedBackButton);
    }

    public final void a(String str, String str2) {
        a(str).a(str2);
    }

    public final boolean a(String str, Context context, MBFeedBackDialog mBFeedBackDialog) {
        if (mBFeedBackDialog != null) {
            return a(context, mBFeedBackDialog);
        }
        aa.b("", "mbAlertDialog  is null");
        return false;
    }

    public final FeedBackButton b(String str) {
        return a(str).c();
    }

    public final void b(String str, int i) {
        a(str).c(i);
    }

    public final boolean b() {
        e eVarB = f.a().b(com.mbridge.msdk.foundation.controller.b.d().h());
        this.f7022f = eVarB;
        if (eVarB != null) {
            return false;
        }
        this.f7022f = f.a().b();
        return false;
    }

    public final void c(String str) {
        try {
            com.mbridge.msdk.foundation.c.a.a aVarD = d(str);
            if (aVarD != null) {
                aVarD.d();
            }
            this.f7020d.remove(str);
            c = false;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
