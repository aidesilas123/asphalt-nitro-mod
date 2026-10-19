package com.tapjoy.internal;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.ByteArrayInputStream;
import java.io.InputStreamReader;
import java.net.URI;
import java.nio.charset.Charset;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class f8 {
    public abstract Object a(k0 k0Var);

    public final Object b(URI uri, ByteArrayInputStream byteArrayInputStream) {
        if (z.a == null) {
            z.a = k0.b;
        }
        k0 k0Var = new k0(new InputStreamReader(byteArrayInputStream, Charset.forName(C.UTF8_NAME)));
        if (k0Var.a == null) {
            k0Var.a = new HashMap();
        }
        k0Var.a.put("BASE_URI", uri);
        int iK = 0;
        try {
            k0Var.I(3);
            Object objA = null;
            String strP = null;
            while (k0Var.e()) {
                String strO = k0Var.o();
                if ("status".equals(strO)) {
                    iK = k0Var.k();
                } else if ("message".equals(strO)) {
                    strP = k0Var.p();
                } else if ("data".equals(strO)) {
                    objA = a(k0Var);
                } else {
                    k0Var.u();
                }
            }
            k0Var.I(4);
            if (iK == 200) {
                return objA;
            }
            throw new q2(strP);
        } finally {
            k0Var.close();
        }
    }

    public final synchronized void c(n7 n7Var) {
        if (!d()) {
            throw new IllegalStateException("Call has not completed");
        }
        throw null;
    }

    public final boolean d() {
        return true;
    }
}
