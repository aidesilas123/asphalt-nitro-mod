package com.json.adqualitysdk.sdk;

/* JADX INFO: loaded from: classes2.dex */
public enum ISAdQualityLogLevel {
    NONE(0),
    ERROR(1),
    WARNING(2),
    INFO(3),
    DEBUG(4),
    VERBOSE(5);

    private final int b;

    ISAdQualityLogLevel(int i) {
        this.b = i;
    }

    public static ISAdQualityLogLevel fromInt(int i) {
        if (i == 0) {
            return NONE;
        }
        if (i == 1) {
            return ERROR;
        }
        if (i == 2) {
            return WARNING;
        }
        if (i == 3) {
            return INFO;
        }
        if (i == 4) {
            return DEBUG;
        }
        if (i != 5) {
            return null;
        }
        return VERBOSE;
    }

    public final int getValue() {
        return this.b;
    }

    public final boolean shouldPrintLog(ISAdQualityLogLevel iSAdQualityLogLevel) {
        int i = this.b;
        return i != NONE.b && i >= iSAdQualityLogLevel.b;
    }
}
