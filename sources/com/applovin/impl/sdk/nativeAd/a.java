package com.applovin.impl.sdk.nativeAd;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.x;
import java.io.File;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public class a extends com.applovin.impl.sdk.e.d {
    private final AppLovinNativeAdImpl aHe;
    private final com.applovin.impl.sdk.d.e aHi;
    private final InterfaceC0080a aHj;

    /* JADX INFO: renamed from: com.applovin.impl.sdk.nativeAd.a$a, reason: collision with other inner class name */
    public interface InterfaceC0080a {
        void a(AppLovinNativeAdImpl appLovinNativeAdImpl);
    }

    public a(AppLovinNativeAdImpl appLovinNativeAdImpl, n nVar, InterfaceC0080a interfaceC0080a) {
        super("TaskCacheNativeAd", nVar);
        this.aHi = new com.applovin.impl.sdk.d.e();
        this.aHe = appLovinNativeAdImpl;
        this.aHj = interfaceC0080a;
    }

    @Nullable
    private Uri p(Uri uri) {
        if (uri == null) {
            return null;
        }
        if (x.Fn()) {
            this.logger.f(this.tag, "Attempting to cache resource: " + uri);
        }
        String strA = this.sdk.Cc().a(rQ(), uri.toString(), this.aHe.getCachePrefix(), Collections.emptyList(), false, false, this.aHi);
        if (StringUtils.isValidString(strA)) {
            File fileA = this.sdk.Cc().a(strA, rQ());
            if (fileA != null) {
                Uri uriFromFile = Uri.fromFile(fileA);
                if (uriFromFile != null) {
                    return uriFromFile;
                }
                if (x.Fn()) {
                    this.logger.i(this.tag, "Unable to extract Uri from image file");
                }
            } else if (x.Fn()) {
                this.logger.i(this.tag, "Unable to retrieve File from cached image filename = " + strA);
            }
        }
        return null;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (x.Fn()) {
            this.logger.f(this.tag, "Begin caching ad #" + this.aHe.getAdIdNumber() + "...");
        }
        Uri uriP = p(this.aHe.getIconUri());
        if (uriP != null) {
            this.aHe.setIconUri(uriP);
        }
        Uri uriP2 = p(this.aHe.getMainImageUri());
        if (uriP2 != null) {
            this.aHe.setMainImageUri(uriP2);
        }
        Uri uriP3 = p(this.aHe.getPrivacyIconUri());
        if (uriP3 != null) {
            this.aHe.setPrivacyIconUri(uriP3);
        }
        if (x.Fn()) {
            this.logger.f(this.tag, "Finished caching ad #" + this.aHe.getAdIdNumber());
        }
        this.aHj.a(this.aHe);
    }
}
