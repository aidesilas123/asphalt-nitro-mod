package com.applovin.impl.adview.activity.a;

import android.app.Activity;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.annotation.Nullable;
import com.applovin.impl.adview.v;
import com.applovin.impl.sdk.n;

/* JADX INFO: loaded from: classes.dex */
public class c extends a {
    public c(com.applovin.impl.sdk.ad.e eVar, Activity activity, n nVar) {
        super(eVar, activity, nVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean c(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x025e  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x026f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(android.widget.ImageView r17, com.applovin.impl.adview.n r18, final com.applovin.impl.adview.w r19, com.applovin.impl.adview.a r20, android.widget.ProgressBar r21, com.applovin.impl.adview.h r22, android.view.View r23, com.applovin.adview.AppLovinAdView r24, @androidx.annotation.Nullable com.applovin.impl.adview.v r25, @androidx.annotation.Nullable android.widget.ImageView r26, @androidx.annotation.Nullable android.view.ViewGroup r27) {
        /*
            Method dump skipped, instruction units count: 631
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.adview.activity.a.c.a(android.widget.ImageView, com.applovin.impl.adview.n, com.applovin.impl.adview.w, com.applovin.impl.adview.a, android.widget.ProgressBar, com.applovin.impl.adview.h, android.view.View, com.applovin.adview.AppLovinAdView, com.applovin.impl.adview.v, android.widget.ImageView, android.view.ViewGroup):void");
    }

    @Override // com.applovin.impl.adview.activity.a.a
    public /* bridge */ /* synthetic */ void a(com.applovin.impl.adview.n nVar) {
        super.a(nVar);
    }

    public void a(com.applovin.impl.adview.n nVar, @Nullable v vVar, View view, @Nullable ProgressBar progressBar) {
        if (view != null) {
            view.setVisibility(0);
        }
        com.applovin.impl.sdk.utils.c.a(this.aiM, view);
        if (nVar != null) {
            a(this.aiL.GN(), (this.aiL.GR() ? 3 : 5) | 48, nVar);
        }
        if (progressBar != null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, 20, ((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aNw)).booleanValue() ? 80 : 48);
            layoutParams.setMargins(0, 0, 0, ((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aNx)).intValue());
            this.aiM.addView(progressBar, layoutParams);
        }
        if (vVar != null) {
            this.aiM.addView(vVar, this.aiN);
        }
    }

    @Override // com.applovin.impl.adview.activity.a.a
    public /* bridge */ /* synthetic */ void k(View view) {
        super.k(view);
    }
}
