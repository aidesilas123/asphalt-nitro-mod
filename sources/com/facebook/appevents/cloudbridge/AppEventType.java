package com.facebook.appevents.cloudbridge;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: compiled from: AppEventsConversionsAPITransformer.kt */
/* JADX INFO: loaded from: classes2.dex */
public enum AppEventType {
    MOBILE_APP_INSTALL,
    CUSTOM,
    OTHER;

    public static final Companion Companion = new Companion(null);

    /* JADX INFO: compiled from: AppEventsConversionsAPITransformer.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        public final AppEventType invoke(String rawValue) {
            Intrinsics.checkNotNullParameter(rawValue, "rawValue");
            return Intrinsics.areEqual(rawValue, "MOBILE_APP_INSTALL") ? AppEventType.MOBILE_APP_INSTALL : Intrinsics.areEqual(rawValue, "CUSTOM_APP_EVENTS") ? AppEventType.CUSTOM : AppEventType.OTHER;
        }
    }

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static AppEventType[] valuesCustom() {
        AppEventType[] appEventTypeArrValuesCustom = values();
        return (AppEventType[]) Arrays.copyOf(appEventTypeArrValuesCustom, appEventTypeArrValuesCustom.length);
    }
}
