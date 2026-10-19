package com.mbridge.msdk.foundation.same.net.d;

import android.text.TextUtils;
import com.json.o2;

/* JADX INFO: compiled from: Header.java */
/* JADX INFO: loaded from: classes4.dex */
public final class b {
    private final String a;
    private final String b;

    public b(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return TextUtils.equals(this.a, bVar.a) && TextUtils.equals(this.b, bVar.b);
    }

    public final int hashCode() {
        return (this.a.hashCode() * 31) + this.b.hashCode();
    }

    public final String toString() {
        return "Header[name=" + this.a + ",value=" + this.b + o2.i.f6491e;
    }
}
