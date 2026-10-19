package com.json.adqualitysdk.sdk.i;

/* JADX INFO: loaded from: classes4.dex */
public class ez<T> extends dx {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private T f5612e;

    public ez(T t, Cdo cdo) {
        super(cdo);
        this.f5612e = t;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            T t = this.f5612e;
            T t2 = ((ez) obj).f5612e;
            if (t != null) {
                return t.equals(t2);
            }
            if (t2 == null) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        T t = this.f5612e;
        if (t != null) {
            return t.hashCode();
        }
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f5612e);
        return sb.toString();
    }

    @Override // com.json.adqualitysdk.sdk.i.dx
    /* JADX INFO: renamed from: ﻛ */
    public final dp mo687(dr drVar, cj cjVar) {
        return new dp(this.f5612e);
    }
}
