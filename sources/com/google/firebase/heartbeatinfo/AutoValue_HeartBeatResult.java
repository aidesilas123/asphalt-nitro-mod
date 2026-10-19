package com.google.firebase.heartbeatinfo;

import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
final class AutoValue_HeartBeatResult extends HeartBeatResult {
    private final String a;
    private final List<String> b;

    AutoValue_HeartBeatResult(String str, List<String> list) {
        Objects.requireNonNull(str, "Null userAgent");
        this.a = str;
        Objects.requireNonNull(list, "Null usedDates");
        this.b = list;
    }

    @Override // com.google.firebase.heartbeatinfo.HeartBeatResult
    public List<String> a() {
        return this.b;
    }

    @Override // com.google.firebase.heartbeatinfo.HeartBeatResult
    public String b() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof HeartBeatResult)) {
            return false;
        }
        HeartBeatResult heartBeatResult = (HeartBeatResult) obj;
        return this.a.equals(heartBeatResult.b()) && this.b.equals(heartBeatResult.a());
    }

    public int hashCode() {
        return ((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode();
    }

    public String toString() {
        return "HeartBeatResult{userAgent=" + this.a + ", usedDates=" + this.b + "}";
    }
}
