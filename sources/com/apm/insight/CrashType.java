package com.apm.insight;

import com.facebook.internal.AnalyticsEvents;
import com.kidoz.sdk.api.players.web_player.WebPreferenceConstants;

/* JADX INFO: loaded from: classes.dex */
public enum CrashType {
    LAUNCH("launch"),
    JAVA(WebPreferenceConstants.JAVASCRIPT),
    NATIVE(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE),
    ASAN("asan"),
    TSAN("tsan"),
    ANR("anr"),
    BLOCK("block"),
    ENSURE("ensure"),
    DART("dart"),
    CUSTOM_JAVA("custom_java"),
    OOM("oom"),
    ALL("all");

    private String mName;

    CrashType(String str) {
        this.mName = str;
    }

    public String getName() {
        return this.mName;
    }

    @Override // java.lang.Enum
    public String toString() {
        return getName();
    }
}
