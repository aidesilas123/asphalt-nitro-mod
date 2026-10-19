package com.hyprmx.android.sdk.api.data;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class p {
    public static /* synthetic */ int a(String str) {
        Objects.requireNonNull(str, "Name is null");
        if (str.equals("Date")) {
            return 1;
        }
        if (str.equals("SingleSelectSet")) {
            return 2;
        }
        if (str.equals("NaturalNumber")) {
            return 3;
        }
        throw new IllegalArgumentException("No enum constant com.hyprmx.android.sdk.api.data.RequiredInformation.Type.".concat(str));
    }
}
