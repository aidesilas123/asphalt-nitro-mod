package com.google.firebase.heartbeatinfo;

import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
final class AutoValue_SdkHeartBeatResult extends SdkHeartBeatResult {
    private final String a;
    private final long b;

    AutoValue_SdkHeartBeatResult(String str, long j) {
        Objects.requireNonNull(str, "Null sdkName");
        this.a = str;
        this.b = j;
    }

    @Override // com.google.firebase.heartbeatinfo.SdkHeartBeatResult
    public long e() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SdkHeartBeatResult)) {
            return false;
        }
        SdkHeartBeatResult sdkHeartBeatResult = (SdkHeartBeatResult) obj;
        return this.a.equals(sdkHeartBeatResult.f()) && this.b == sdkHeartBeatResult.e();
    }

    @Override // com.google.firebase.heartbeatinfo.SdkHeartBeatResult
    public String f() {
        return this.a;
    }

    public int hashCode() {
        int iHashCode = (this.a.hashCode() ^ 1000003) * 1000003;
        long j = this.b;
        return iHashCode ^ ((int) (j ^ (j >>> 32)));
    }

    public String toString() {
        return "SdkHeartBeatResult{sdkName=" + this.a + ", millis=" + this.b + "}";
    }
}
