package com.applovin.impl.adview.activity.a;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.adview.v;
import com.applovin.impl.sdk.n;

/* JADX INFO: loaded from: classes.dex */
public class b extends a {
    public b(com.applovin.impl.sdk.ad.e eVar, Activity activity, n nVar) {
        super(eVar, activity, nVar);
    }

    @Override // com.applovin.impl.adview.activity.a.a
    public /* bridge */ /* synthetic */ void a(com.applovin.impl.adview.n nVar) {
        super.a(nVar);
    }

    public void a(com.applovin.impl.adview.n nVar, @Nullable v vVar, AppLovinAdView appLovinAdView, @Nullable ViewGroup viewGroup) {
        this.aiM.addView(appLovinAdView);
        if (nVar != null) {
            a(this.aiL.GN(), (this.aiL.GR() ? 3 : 5) | 48, nVar);
        }
        if (vVar != null) {
            this.aiM.addView(vVar, this.aiN);
        }
        if (viewGroup != null) {
            viewGroup.addView(this.aiM);
        } else {
            this.ahM.setContentView(this.aiM);
        }
    }

    @Override // com.applovin.impl.adview.activity.a.a
    public /* bridge */ /* synthetic */ void k(View view) {
        super.k(view);
    }
}
