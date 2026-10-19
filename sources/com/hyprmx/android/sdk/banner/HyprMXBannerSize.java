package com.hyprmx.android.sdk.banner;

import com.gameloft.adsmanager.JavaUtils;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.n;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0004\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0006\u000f\u0010\u0011\u0012\u0013\u0014B\u0017\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\u0019\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\nH\u0000¢\u0006\u0002\b\rJ\b\u0010\u000e\u001a\u00020\u000bH\u0016R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007\u0082\u0001\u0006\u0015\u0016\u0017\u0018\u0019\u001a¨\u0006\u001b"}, d2 = {"Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;", "", "width", "", "height", "(II)V", "getHeight", "()I", "getWidth", "toMap", "", "", "", "toMap$HyprMX_Mobile_Android_SDK_release", "toString", "HyprMXAdSizeBanner", "HyprMXAdSizeCustom", "HyprMXAdSizeLeaderboard", "HyprMXAdSizeMediumRectangle", "HyprMXAdSizeShort", "HyprMXAdSizeSkyScraper", "Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize$HyprMXAdSizeBanner;", "Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize$HyprMXAdSizeCustom;", "Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize$HyprMXAdSizeLeaderboard;", "Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize$HyprMXAdSizeMediumRectangle;", "Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize$HyprMXAdSizeShort;", "Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize$HyprMXAdSizeSkyScraper;", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1}, xi = 48)
public abstract class HyprMXBannerSize {
    private final int height;
    private final int width;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize$HyprMXAdSizeBanner;", "Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;", "()V", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class HyprMXAdSizeBanner extends HyprMXBannerSize {
        public static final HyprMXAdSizeBanner INSTANCE = new HyprMXAdSizeBanner();

        private HyprMXAdSizeBanner() {
            super(JavaUtils.Constants.BANNER_WIDTH_DP, 50, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize$HyprMXAdSizeCustom;", "Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;", "width", "", "height", "(II)V", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class HyprMXAdSizeCustom extends HyprMXBannerSize {
        public HyprMXAdSizeCustom(int i, int i2) {
            super(i, i2, null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize$HyprMXAdSizeLeaderboard;", "Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;", "()V", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class HyprMXAdSizeLeaderboard extends HyprMXBannerSize {
        public static final HyprMXAdSizeLeaderboard INSTANCE = new HyprMXAdSizeLeaderboard();

        private HyprMXAdSizeLeaderboard() {
            super(JavaUtils.Constants.TABLET_WIDTH_DP, 90, null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize$HyprMXAdSizeMediumRectangle;", "Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;", "()V", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class HyprMXAdSizeMediumRectangle extends HyprMXBannerSize {
        public static final HyprMXAdSizeMediumRectangle INSTANCE = new HyprMXAdSizeMediumRectangle();

        private HyprMXAdSizeMediumRectangle() {
            super(JavaUtils.Constants.NATIVE_HEIGHT_DP_300, 250, null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize$HyprMXAdSizeShort;", "Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;", "()V", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class HyprMXAdSizeShort extends HyprMXBannerSize {
        public static final HyprMXAdSizeShort INSTANCE = new HyprMXAdSizeShort();

        private HyprMXAdSizeShort() {
            super(JavaUtils.Constants.NATIVE_HEIGHT_DP_300, 50, null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize$HyprMXAdSizeSkyScraper;", "Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;", "()V", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class HyprMXAdSizeSkyScraper extends HyprMXBannerSize {
        public static final HyprMXAdSizeSkyScraper INSTANCE = new HyprMXAdSizeSkyScraper();

        private HyprMXAdSizeSkyScraper() {
            super(160, 600, null);
        }
    }

    private HyprMXBannerSize(int i, int i2) {
        this.width = i;
        this.height = i2;
    }

    public /* synthetic */ HyprMXBannerSize(int i, int i2, n nVar) {
        this(i, i2);
    }

    public final int getHeight() {
        return this.height;
    }

    public final int getWidth() {
        return this.width;
    }

    public final Map<String, Number> toMap$HyprMX_Mobile_Android_SDK_release() {
        return MapsKt__MapsKt.mapOf(TuplesKt.to("width", Integer.valueOf(this.width)), TuplesKt.to("height", Integer.valueOf(this.height)));
    }

    public String toString() {
        return getClass().getSimpleName() + " (width = " + this.width + ", height = " + this.height + ')';
    }
}
