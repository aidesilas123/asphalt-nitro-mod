package com.json.adqualitysdk.sdk;

/* JADX INFO: loaded from: classes2.dex */
public enum ISAdQualityDeviceIdType {
    NONE(0),
    GAID(1),
    IDFA(2);

    private final int b;

    ISAdQualityDeviceIdType(int i) {
        this.b = i;
    }

    public static ISAdQualityDeviceIdType fromInt(int i) {
        if (i == 0) {
            return NONE;
        }
        if (i == 1) {
            return GAID;
        }
        if (i != 2) {
            return null;
        }
        return IDFA;
    }

    public final int getValue() {
        return this.b;
    }
}
