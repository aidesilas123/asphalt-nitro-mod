package com.bytedance.sdk.openadsdk.component.view;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.widget.TTRoundRectImageView;
import com.bytedance.sdk.openadsdk.utils.ad;

/* JADX INFO: compiled from: TTAppOpenAdUserInfoLayoutHelper.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    private static boolean a;
    private static Drawable b;
    private LinearLayout c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TTRoundRectImageView f1446d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f1447e;

    private void a(q qVar, float f2, float f3, boolean z) {
        int iB;
        int iC;
        int iL = qVar.l();
        if (iL == 1 || iL == 3) {
            if (z) {
                iB = qVar.K().c();
                iC = qVar.K().b();
            } else {
                iB = qVar.Q().get(0).b();
                iC = qVar.Q().get(0).c();
            }
            if (iB <= 0 || iC <= 0) {
                return;
            }
            float f4 = iC;
            float fMin = f3 - (f4 * Math.min(f2 / iB, f3 / f4));
            try {
                float fB = ad.b(o.a(), 60.0f);
                if (fMin < fB) {
                    fMin = fB;
                }
                this.c.setLayoutParams(new LinearLayout.LayoutParams(-1, (int) fMin));
            } catch (Throwable unused) {
            }
        }
    }

    public static Drawable c() {
        return b;
    }

    public void a() {
        String strE = h.b().e();
        if (TextUtils.isEmpty(strE)) {
            this.f1447e.setVisibility(8);
        } else {
            this.f1447e.setText(strE);
        }
        b();
        try {
            Drawable drawable = b;
            if (drawable == null) {
                this.f1446d.setVisibility(8);
            } else {
                this.f1446d.setImageDrawable(drawable);
                if (this.f1447e.getVisibility() == 8) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f1446d.getLayoutParams();
                    marginLayoutParams.setMargins(0, 0, 0, 0);
                    this.f1446d.setLayoutParams(marginLayoutParams);
                }
            }
        } catch (Throwable unused) {
            this.f1446d.setVisibility(8);
        }
    }

    public void a(PAGAppOpenBaseLayout pAGAppOpenBaseLayout, q qVar, float f2, float f3, boolean z) {
        if (pAGAppOpenBaseLayout != null) {
            this.c = pAGAppOpenBaseLayout.getUserInfo();
            this.f1446d = pAGAppOpenBaseLayout.getAppIcon();
            this.f1447e = pAGAppOpenBaseLayout.getAppName();
            this.c.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.view.a.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                }
            });
        }
        a(qVar, f2, f3, z);
    }

    public void b() {
        if (a) {
            return;
        }
        try {
            int iF = h.b().f();
            if (iF != 0) {
                b = ResourcesCompat.getDrawable(o.a().getResources(), iF, null);
            }
        } catch (Throwable unused) {
        }
        a = true;
    }
}
