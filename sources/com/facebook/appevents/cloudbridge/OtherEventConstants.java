package com.facebook.appevents.cloudbridge;

import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.MBridgeConstans;
import java.util.Arrays;

/* JADX INFO: compiled from: AppEventsConversionsAPITransformer.kt */
/* JADX INFO: loaded from: classes2.dex */
public enum OtherEventConstants {
    EVENT(NotificationCompat.CATEGORY_EVENT),
    ACTION_SOURCE("action_source"),
    APP(MBridgeConstans.DYNAMIC_VIEW_WX_APP),
    MOBILE_APP_INSTALL("MobileAppInstall"),
    INSTALL_EVENT_TIME("install_timestamp");

    private final String rawValue;

    OtherEventConstants(String str) {
        this.rawValue = str;
    }

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static OtherEventConstants[] valuesCustom() {
        OtherEventConstants[] otherEventConstantsArrValuesCustom = values();
        return (OtherEventConstants[]) Arrays.copyOf(otherEventConstantsArrValuesCustom, otherEventConstantsArrValuesCustom.length);
    }

    public final String getRawValue() {
        return this.rawValue;
    }
}
