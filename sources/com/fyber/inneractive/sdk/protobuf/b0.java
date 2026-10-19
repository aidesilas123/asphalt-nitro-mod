package com.fyber.inneractive.sdk.protobuf;

/* JADX INFO: loaded from: classes2.dex */
public class b0 {
    public volatile o0 a;
    public volatile i b;

    static {
        q.a();
    }

    public i a() {
        if (this.b != null) {
            return this.b;
        }
        synchronized (this) {
            if (this.b != null) {
                return this.b;
            }
            if (this.a == null) {
                this.b = i.b;
            } else {
                this.b = this.a.toByteString();
            }
            return this.b;
        }
    }

    public o0 a(o0 o0Var) {
        if (this.a == null) {
            synchronized (this) {
                if (this.a == null) {
                    try {
                        this.a = o0Var;
                        this.b = i.b;
                    } catch (z unused) {
                        this.a = o0Var;
                        this.b = i.b;
                    }
                }
            }
        }
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b0)) {
            return false;
        }
        b0 b0Var = (b0) obj;
        o0 o0Var = this.a;
        o0 o0Var2 = b0Var.a;
        return (o0Var == null && o0Var2 == null) ? a().equals(b0Var.a()) : (o0Var == null || o0Var2 == null) ? o0Var != null ? o0Var.equals(b0Var.a(o0Var.getDefaultInstanceForType())) : a(o0Var2.getDefaultInstanceForType()).equals(o0Var2) : o0Var.equals(o0Var2);
    }

    public int hashCode() {
        return 1;
    }
}
