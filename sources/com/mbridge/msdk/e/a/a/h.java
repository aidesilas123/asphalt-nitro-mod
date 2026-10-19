package com.mbridge.msdk.e.a.a;

import com.mbridge.msdk.e.a.u;
import com.mbridge.msdk.e.a.v;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: NetworkUtility.java */
/* JADX INFO: loaded from: classes4.dex */
final class h {

    /* JADX INFO: compiled from: NetworkUtility.java */
    static class a {
        private final String a;
        private final u b;

        private a(String str, u uVar) {
            this.a = str;
            this.b = uVar;
        }
    }

    static byte[] a(InputStream inputStream, int i, c cVar) throws Throwable {
        byte[] bArrA;
        j jVar = new j(cVar, i);
        try {
            bArrA = cVar.a(1024);
            while (true) {
                try {
                    int i2 = inputStream.read(bArrA);
                    if (i2 == -1) {
                        break;
                    }
                    jVar.write(bArrA, 0, i2);
                } catch (Throwable th) {
                    th = th;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused) {
                            v.a("Error occurred when closing InputStream", new Object[0]);
                        }
                    }
                    cVar.a(bArrA);
                    jVar.close();
                    throw th;
                }
            }
            byte[] byteArray = jVar.toByteArray();
            try {
                inputStream.close();
            } catch (IOException unused2) {
                v.a("Error occurred when closing InputStream", new Object[0]);
            }
            cVar.a(bArrA);
            jVar.close();
            return byteArray;
        } catch (Throwable th2) {
            th = th2;
            bArrA = null;
        }
    }
}
