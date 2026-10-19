package com.applovin.impl.mediation.a;

import android.R;
import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.applovin.impl.mediation.a.a;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.v;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.mediation.adapter.listeners.MaxAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener;

/* JADX INFO: loaded from: classes.dex */
public class b extends Activity implements a.InterfaceC0059a {
    protected a aup;
    protected c auq = new c(null);
    private MaxAdapterListener aur;
    protected n sdk;

    private void bU(String str) {
        MaxAdapterError maxAdapterError = new MaxAdapterError(MaxAdapterError.ERROR_CODE_AD_DISPLAY_FAILED, "Null hybrid ad view (" + str + ")");
        MaxAdapterListener maxAdapterListener = this.aur;
        if (maxAdapterListener instanceof MaxInterstitialAdapterListener) {
            ((MaxInterstitialAdapterListener) maxAdapterListener).onInterstitialAdDisplayFailed(maxAdapterError);
        } else {
            if (!(maxAdapterListener instanceof MaxAppOpenAdapterListener)) {
                throw new IllegalStateException("Failed to fire display failed callback (" + this.aur + "): neither interstitial nor app open ad");
            }
            ((MaxAppOpenAdapterListener) maxAdapterListener).onAppOpenAdDisplayFailed(maxAdapterError);
        }
        finish();
    }

    protected void a(View view, String str) {
        if (view == null) {
            bU(str);
            return;
        }
        ((ViewGroup) findViewById(R.id.content)).addView(view);
        this.aup.bringToFront();
        MaxAdapterListener maxAdapterListener = this.aur;
        if (maxAdapterListener instanceof MaxInterstitialAdapterListener) {
            ((MaxInterstitialAdapterListener) maxAdapterListener).onInterstitialAdDisplayed();
            return;
        }
        if (maxAdapterListener instanceof MaxAppOpenAdapterListener) {
            ((MaxAppOpenAdapterListener) maxAdapterListener).onAppOpenAdDisplayed();
            return;
        }
        throw new IllegalStateException("Failed to fire display callback (" + this.aur + "): neither interstitial nor app open ad");
    }

    @Override // com.applovin.impl.mediation.a.a.InterfaceC0059a
    public void a(a aVar) {
        if (isFinishing()) {
            return;
        }
        finish();
    }

    protected void a(c cVar, n nVar, MaxAdapterListener maxAdapterListener) {
        this.sdk = nVar;
        this.auq = cVar;
        this.aur = maxAdapterListener;
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        getWindow().addFlags(16777216);
        getWindow().addFlags(128);
        ViewGroup viewGroup = (ViewGroup) findViewById(R.id.content);
        viewGroup.setBackgroundColor(this.auq.mN());
        n nVar = this.sdk;
        com.applovin.impl.sdk.utils.b.a(nVar != null ? ((Boolean) nVar.a(com.applovin.impl.sdk.c.b.aNs)).booleanValue() : true, this);
        a aVar = new a(this.auq, this);
        this.aup = aVar;
        aVar.setListener(this);
        this.aup.setVisibility(4);
        viewGroup.addView(this.aup);
        v.a(this.aup, this.auq.xr());
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        MaxAdapterListener maxAdapterListener = this.aur;
        if (maxAdapterListener != null) {
            if (maxAdapterListener instanceof MaxInterstitialAdapterListener) {
                ((MaxInterstitialAdapterListener) maxAdapterListener).onInterstitialAdHidden();
            } else {
                if (!(maxAdapterListener instanceof MaxAppOpenAdapterListener)) {
                    throw new IllegalStateException("Failed to fire hidden callback (" + this.aur + "): neither interstitial nor app open ad");
                }
                ((MaxAppOpenAdapterListener) maxAdapterListener).onAppOpenAdHidden();
            }
        }
        super.onDestroy();
    }
}
