package com.applovin.mediation.hybridAds;

import android.os.Bundle;
import android.view.View;
import androidx.annotation.Nullable;
import com.applovin.impl.mediation.a.b;
import com.applovin.impl.mediation.a.c;
import com.applovin.impl.sdk.n;
import com.applovin.mediation.adapter.listeners.MaxAdapterListener;

/* JADX INFO: loaded from: classes.dex */
public class MaxHybridMRecAdActivity extends b {
    private View aYB;

    public void a(c cVar, View view, n nVar, MaxAdapterListener maxAdapterListener) {
        super.a(cVar, nVar, maxAdapterListener);
        this.aYB = view;
    }

    @Override // com.applovin.impl.mediation.a.b, android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        a(this.aYB, "MaxHybridMRecAdActivity");
    }
}
