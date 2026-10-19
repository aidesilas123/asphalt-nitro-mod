package com.mbridge.msdk.foundation.same.net.e;

import com.json.b4;
import com.mbridge.msdk.foundation.same.net.j;
import com.mbridge.msdk.foundation.tools.aa;
import java.io.UnsupportedEncodingException;

/* JADX INFO: compiled from: JsonRequest.java */
/* JADX INFO: loaded from: classes4.dex */
public abstract class e<T> extends j<T> {
    private static final String c = e.class.getSimpleName();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f7143d;

    public e(int i, String str, String str2, com.mbridge.msdk.foundation.same.net.e<T> eVar) {
        super(i, str, eVar);
        this.f7143d = str2;
    }

    public e(int i, String str, String str2, com.mbridge.msdk.foundation.same.net.e<T> eVar, boolean z) {
        super(i, str, eVar, z);
        this.f7143d = str2;
    }

    @Override // com.mbridge.msdk.foundation.same.net.j
    public final byte[] f() {
        try {
            String str = this.f7143d;
            if (str == null) {
                return null;
            }
            return str.getBytes(b4.L);
        } catch (UnsupportedEncodingException unused) {
            aa.d(c, "Unsupported Encoding while trying to get the bytes of " + this.f7143d + " using utf-8");
            return null;
        }
    }
}
