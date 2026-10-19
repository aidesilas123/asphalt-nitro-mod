package com.mbridge.msdk.foundation.same.net.e;

import com.mbridge.msdk.foundation.same.net.j;
import com.mbridge.msdk.foundation.same.net.l;
import com.mbridge.msdk.foundation.tools.aa;
import java.io.File;

/* JADX INFO: compiled from: FileDownloadRequest.java */
/* JADX INFO: loaded from: classes4.dex */
public class a extends j<Void> {
    private static final String c = a.class.getSimpleName();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private File f7138d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private File f7139e;

    public a(File file, String str) {
        super(0, str);
        this.f7138d = file;
        this.f7139e = new File(file + ".tmp");
    }

    @Override // com.mbridge.msdk.foundation.same.net.j
    protected final l<Void> a(com.mbridge.msdk.foundation.same.net.f.c cVar) {
        if (d()) {
            return l.a(new com.mbridge.msdk.foundation.same.net.b.a(-2, cVar));
        }
        if (!this.f7139e.canRead() || this.f7139e.length() <= 0) {
            aa.b(c, "Download temporary file was invalid!");
            return l.a(new com.mbridge.msdk.foundation.same.net.b.a(4, cVar));
        }
        if (this.f7139e.renameTo(this.f7138d)) {
            return l.a(null, cVar);
        }
        aa.b(c, "Can't rename the download temporary file!");
        return l.a(new com.mbridge.msdk.foundation.same.net.b.a(4, cVar));
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0095, code lost:
    
        r18.b(r16);
     */
    @Override // com.mbridge.msdk.foundation.same.net.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final byte[] a(com.mbridge.msdk.foundation.same.net.f.b r17, com.mbridge.msdk.foundation.same.net.c r18) throws java.lang.Throwable {
        /*
            r16 = this;
            r7 = r16
            java.lang.String r8 = "Error occured when calling InputStream.close"
            java.util.List r0 = r17.b()
            java.lang.String r1 = "Content-Length"
            java.lang.String r0 = com.mbridge.msdk.foundation.same.net.g.b.a(r0, r1)
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            r2 = 0
            if (r1 != 0) goto L20
            java.lang.Long r0 = java.lang.Long.valueOf(r0)
            long r0 = r0.longValue()
            r9 = r0
            goto L21
        L20:
            r9 = r2
        L21:
            int r0 = (r9 > r2 ? 1 : (r9 == r2 ? 0 : -1))
            if (r0 > 0) goto L2c
            java.lang.String r1 = com.mbridge.msdk.foundation.same.net.e.a.c
            java.lang.String r4 = "Response doesn't present Content-Length!"
            com.mbridge.msdk.foundation.tools.aa.b(r1, r4)
        L2c:
            r11 = 0
            if (r0 <= 0) goto L4a
            java.io.File r0 = r7.f7138d
            long r0 = r0.length()
            int r4 = (r0 > r9 ? 1 : (r0 == r9 ? 0 : -1))
            if (r4 != 0) goto L4a
            java.io.File r0 = r7.f7138d
            java.io.File r1 = r7.f7139e
            r0.renameTo(r1)
            r1 = r18
            r2 = r16
            r3 = r9
            r5 = r9
            r1.a(r2, r3, r5)
            return r11
        L4a:
            java.io.RandomAccessFile r12 = new java.io.RandomAccessFile
            java.io.File r0 = r7.f7139e
            java.lang.String r0 = r0.getAbsolutePath()
            java.lang.String r1 = "rw"
            r12.<init>(r0, r1)
            r12.setLength(r2)
            java.io.InputStream r1 = r17.c()     // Catch: java.lang.Throwable -> Lb2
            java.util.List r0 = r17.b()     // Catch: java.lang.Throwable -> Laf
            boolean r0 = com.mbridge.msdk.foundation.same.net.g.b.b(r0)     // Catch: java.lang.Throwable -> Laf
            if (r0 == 0) goto L73
            boolean r0 = r1 instanceof java.util.zip.GZIPInputStream     // Catch: java.lang.Throwable -> Laf
            if (r0 != 0) goto L73
            java.util.zip.GZIPInputStream r0 = new java.util.zip.GZIPInputStream     // Catch: java.lang.Throwable -> Laf
            r0.<init>(r1)     // Catch: java.lang.Throwable -> Laf
            r13 = r0
            goto L74
        L73:
            r13 = r1
        L74:
            r0 = 6144(0x1800, float:8.61E-42)
            byte[] r0 = new byte[r0]     // Catch: java.lang.Throwable -> Lac
        L78:
            int r1 = r13.read(r0)     // Catch: java.lang.Throwable -> Lac
            r4 = -1
            if (r1 == r4) goto L9f
            r4 = 0
            r12.write(r0, r4, r1)     // Catch: java.lang.Throwable -> Lac
            long r4 = (long) r1     // Catch: java.lang.Throwable -> Lac
            long r14 = r2 + r4
            r1 = r18
            r2 = r16
            r3 = r9
            r5 = r14
            r1.a(r2, r3, r5)     // Catch: java.lang.Throwable -> Lac
            boolean r1 = r16.d()     // Catch: java.lang.Throwable -> Lac
            if (r1 == 0) goto L9b
            r1 = r18
            r1.b(r7)     // Catch: java.lang.Throwable -> Lac
            goto L9f
        L9b:
            r1 = r18
            r2 = r14
            goto L78
        L9f:
            r13.close()     // Catch: java.lang.Exception -> La3
            goto La8
        La3:
            java.lang.String r0 = com.mbridge.msdk.foundation.same.net.e.a.c
            com.mbridge.msdk.foundation.tools.aa.d(r0, r8)
        La8:
            r12.close()
            return r11
        Lac:
            r0 = move-exception
            r11 = r13
            goto Lb3
        Laf:
            r0 = move-exception
            r11 = r1
            goto Lb3
        Lb2:
            r0 = move-exception
        Lb3:
            if (r11 == 0) goto Lbe
            r11.close()     // Catch: java.lang.Exception -> Lb9
            goto Lbe
        Lb9:
            java.lang.String r1 = com.mbridge.msdk.foundation.same.net.e.a.c
            com.mbridge.msdk.foundation.tools.aa.d(r1, r8)
        Lbe:
            r12.close()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.same.net.e.a.a(com.mbridge.msdk.foundation.same.net.f.b, com.mbridge.msdk.foundation.same.net.c):byte[]");
    }

    @Override // com.mbridge.msdk.foundation.same.net.j
    public final int h() {
        return 1;
    }
}
