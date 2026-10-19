package com.mbridge.msdk.foundation.same.net.e;

import com.json.b4;
import com.mbridge.msdk.foundation.same.net.j;
import com.mbridge.msdk.foundation.same.net.l;
import com.mbridge.msdk.foundation.tools.aa;
import java.io.UnsupportedEncodingException;

/* JADX INFO: compiled from: StringRequest.java */
/* JADX INFO: loaded from: classes4.dex */
public class f extends j<String> {
    private static final String c = f.class.getSimpleName();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f7144d;

    public f(int i, String str, String str2, com.mbridge.msdk.foundation.same.net.e<String> eVar) {
        super(i, str, eVar);
        this.f7144d = str2;
    }

    @Override // com.mbridge.msdk.foundation.same.net.j
    protected final l<String> a(com.mbridge.msdk.foundation.same.net.f.c cVar) {
        try {
            return l.a(new String(cVar.b, com.mbridge.msdk.foundation.same.net.g.b.a(cVar.f7145d)), cVar);
        } catch (UnsupportedEncodingException e2) {
            aa.d(c, e2.getMessage());
            return l.a(new com.mbridge.msdk.foundation.same.net.b.a(8, cVar));
        }
    }

    @Override // com.mbridge.msdk.foundation.same.net.j
    public final byte[] f() {
        try {
            String str = this.f7144d;
            if (str == null) {
                return null;
            }
            return str.getBytes(b4.L);
        } catch (UnsupportedEncodingException unused) {
            aa.d(c, "Unsupported Encoding while trying to get the bytes of " + this.f7144d + " using utf-8");
            return null;
        }
    }
}
