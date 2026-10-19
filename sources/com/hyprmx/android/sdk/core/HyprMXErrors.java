package com.hyprmx.android.sdk.core;

import kotlin.Metadata;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u000b\b\u0087\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/hyprmx/android/sdk/core/HyprMXErrors;", "", "(Ljava/lang/String;I)V", "NO_FILL", "DISPLAY_ERROR", "PLACEMENT_DOES_NOT_EXIST", "SDK_NOT_INITIALIZED", "AD_SIZE_NOT_SET", "PLACEMENT_NAME_NOT_SET", "INVALID_BANNER_PLACEMENT_NAME", "AD_FAILED_TO_RENDER", "UNKNOWN", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1}, xi = 48)
public class HyprMXErrors {
    public static final HyprMXErrors NO_FILL = new HyprMXErrors() { // from class: com.hyprmx.android.sdk.core.HyprMXErrors.e
        @Override // java.lang.Enum
        public final String toString() {
            return "No Fill";
        }
    };
    public static final HyprMXErrors DISPLAY_ERROR = new HyprMXErrors() { // from class: com.hyprmx.android.sdk.core.HyprMXErrors.c
        @Override // java.lang.Enum
        public final String toString() {
            return "Display Error";
        }
    };
    public static final HyprMXErrors PLACEMENT_DOES_NOT_EXIST = new HyprMXErrors() { // from class: com.hyprmx.android.sdk.core.HyprMXErrors.f
        @Override // java.lang.Enum
        public final String toString() {
            return "Placement Does Not Exist";
        }
    };
    public static final HyprMXErrors SDK_NOT_INITIALIZED = new HyprMXErrors() { // from class: com.hyprmx.android.sdk.core.HyprMXErrors.h
        @Override // java.lang.Enum
        public final String toString() {
            return "HyprMX has not been initialized.  Please initialize HyprMX before calling loadAd on HyprMXBannerView";
        }
    };
    public static final HyprMXErrors AD_SIZE_NOT_SET = new HyprMXErrors() { // from class: com.hyprmx.android.sdk.core.HyprMXErrors.b
        @Override // java.lang.Enum
        public final String toString() {
            return "Please set the banner size before calling loadAd on HyprMXBannerView";
        }
    };
    public static final HyprMXErrors PLACEMENT_NAME_NOT_SET = new HyprMXErrors() { // from class: com.hyprmx.android.sdk.core.HyprMXErrors.g
        @Override // java.lang.Enum
        public final String toString() {
            return "Please set the placement name before calling loadAd on HyprMXBannerView";
        }
    };
    public static final HyprMXErrors INVALID_BANNER_PLACEMENT_NAME = new HyprMXErrors() { // from class: com.hyprmx.android.sdk.core.HyprMXErrors.d
        @Override // java.lang.Enum
        public final String toString() {
            return "Placement Name is invalid.  Please check value of placementName used to initialize the banner.";
        }
    };
    public static final HyprMXErrors AD_FAILED_TO_RENDER = new HyprMXErrors() { // from class: com.hyprmx.android.sdk.core.HyprMXErrors.a
        @Override // java.lang.Enum
        public final String toString() {
            return "Ad failed to Render.";
        }
    };
    public static final HyprMXErrors UNKNOWN = new HyprMXErrors() { // from class: com.hyprmx.android.sdk.core.HyprMXErrors.i
        @Override // java.lang.Enum
        public final String toString() {
            return "An unknown error has occurred.";
        }
    };
    private static final /* synthetic */ HyprMXErrors[] $VALUES = $values();

    private static final /* synthetic */ HyprMXErrors[] $values() {
        return new HyprMXErrors[]{NO_FILL, DISPLAY_ERROR, PLACEMENT_DOES_NOT_EXIST, SDK_NOT_INITIALIZED, AD_SIZE_NOT_SET, PLACEMENT_NAME_NOT_SET, INVALID_BANNER_PLACEMENT_NAME, AD_FAILED_TO_RENDER, UNKNOWN};
    }

    private HyprMXErrors(String str, int i2) {
    }

    public /* synthetic */ HyprMXErrors(String str, int i2, kotlin.jvm.internal.n nVar) {
        this(str, i2);
    }

    public static HyprMXErrors valueOf(String str) {
        return (HyprMXErrors) Enum.valueOf(HyprMXErrors.class, str);
    }

    public static HyprMXErrors[] values() {
        return (HyprMXErrors[]) $VALUES.clone();
    }
}
