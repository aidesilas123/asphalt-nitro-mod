package com.tapjoy;

/* JADX INFO: loaded from: classes4.dex */
public class TapjoyErrorMessage {
    public final ErrorType a;
    public final String b;

    public enum ErrorType {
        a,
        b,
        c,
        f7835d,
        f7836e;

        ErrorType() {
        }
    }

    public TapjoyErrorMessage(ErrorType errorType, String str) {
        this.a = errorType;
        this.b = str;
    }

    public ErrorType a() {
        return this.a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Type=" + this.a.toString());
        sb.append(";Message=" + this.b);
        return sb.toString();
    }
}
