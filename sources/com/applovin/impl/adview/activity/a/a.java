package com.applovin.impl.adview.activity.a;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import com.applovin.impl.sdk.ad.e;
import com.applovin.impl.sdk.n;

/* JADX INFO: loaded from: classes.dex */
abstract class a {
    final Activity ahM;
    final com.applovin.impl.sdk.ad.e aiL;
    final ViewGroup aiM;
    final FrameLayout.LayoutParams aiN;
    final n sdk;

    a(com.applovin.impl.sdk.ad.e eVar, Activity activity, n nVar) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1, 17);
        this.aiN = layoutParams;
        this.aiL = eVar;
        this.sdk = nVar;
        this.ahM = activity;
        FrameLayout frameLayout = new FrameLayout(activity);
        this.aiM = frameLayout;
        frameLayout.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        frameLayout.setLayoutParams(layoutParams);
    }

    public void a(com.applovin.impl.adview.n nVar) {
        if (nVar == null || nVar.getParent() != null) {
            return;
        }
        a(this.aiL.GN(), (this.aiL.GR() ? 3 : 5) | 48, nVar);
    }

    void a(e.c cVar, int i, com.applovin.impl.adview.n nVar) {
        nVar.d(cVar.aGN, cVar.aGR, cVar.aGQ, i);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(nVar.getLayoutParams());
        int i2 = cVar.aGP;
        layoutParams.setMargins(i2, cVar.aGO, i2, 0);
        layoutParams.gravity = i;
        this.aiM.addView(nVar, layoutParams);
    }

    public void k(View view) {
        this.aiM.removeView(view);
    }
}
