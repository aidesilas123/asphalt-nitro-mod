package com.applovin.impl.sdk.a;

import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.iab.omid.library.applovin.adsession.AdSessionConfiguration;
import com.iab.omid.library.applovin.adsession.AdSessionContext;
import com.iab.omid.library.applovin.adsession.CreativeType;
import com.iab.omid.library.applovin.adsession.ImpressionType;
import com.iab.omid.library.applovin.adsession.Owner;

/* JADX INFO: loaded from: classes.dex */
public class c extends b {
    public c(com.applovin.impl.sdk.ad.a aVar) {
        super(aVar);
    }

    @Override // com.applovin.impl.sdk.a.b
    @Nullable
    protected AdSessionConfiguration II() {
        try {
            return AdSessionConfiguration.createAdSessionConfiguration(CreativeType.HTML_DISPLAY, ImpressionType.LOADED, Owner.NATIVE, Owner.NONE, false);
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.c(this.tag, "Failed to create ad session configuration", th);
            }
            return null;
        }
    }

    @Override // com.applovin.impl.sdk.a.b
    @Nullable
    protected AdSessionContext h(@Nullable WebView webView) {
        try {
            return this.aIy.getOpenMeasurementVerificationScriptResources().size() > 0 ? AdSessionContext.createNativeAdSessionContext(this.sdk.Cp().getPartner(), this.sdk.Cp().IT(), this.aIy.getOpenMeasurementVerificationScriptResources(), this.aIy.getOpenMeasurementContentUrl(), this.aIy.getOpenMeasurementCustomReferenceData()) : AdSessionContext.createHtmlAdSessionContext(this.sdk.Cp().getPartner(), webView, this.aIy.getOpenMeasurementContentUrl(), this.aIy.getOpenMeasurementCustomReferenceData());
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.c(this.tag, "Failed to create ad session context", th);
            }
            return null;
        }
    }
}
