package com.tapjoy.internal;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class n3 {
    public static final h0 a;
    public static final e3 b;
    public final URL c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Bitmap f7944d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte[] f7945e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public s4 f7946f;

    static {
        v3 v3Var = new v3();
        boolean z = v3Var instanceof m7;
        h0 c2Var = v3Var;
        if (!z) {
            c2Var = new c2(v3Var);
        }
        a = c2Var;
        b = new e3();
    }

    public n3(b4 b4Var) {
        if (b4Var.h()) {
            this.c = b4Var.r();
            return;
        }
        b4Var.a();
        String strO = b4Var.o();
        while (b4Var.e()) {
            if ("url".equals(strO)) {
                this.c = b4Var.r();
            } else {
                b4Var.u();
            }
        }
        b4Var.d();
    }

    public n3(URL url) {
        this.c = url;
    }

    public final Bitmap a() {
        return this.f7944d;
    }

    public final ByteArrayInputStream b(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                break;
            }
            byteArrayOutputStream.write(bArr, 0, i);
        }
        byteArrayOutputStream.close();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(byteArray);
        j5 j5Var = new j5();
        Bitmap bitmapDecodeStream = null;
        if (byteArray != null) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(byteArray);
            j5Var.b = null;
            Arrays.fill(j5Var.a, (byte) 0);
            j5Var.c = new s4();
            j5Var.f7923d = 0;
            ByteBuffer byteBufferAsReadOnlyBuffer = byteBufferWrap.asReadOnlyBuffer();
            j5Var.b = byteBufferAsReadOnlyBuffer;
            byteBufferAsReadOnlyBuffer.position(0);
            j5Var.b.order(ByteOrder.LITTLE_ENDIAN);
        } else {
            j5Var.b = null;
            j5Var.c.b = 2;
        }
        s4 s4VarC = j5Var.c();
        if (s4VarC.b == 0) {
            this.f7945e = byteArray;
            this.f7946f = s4VarC;
        } else {
            i9.a.getClass();
            int i2 = 1;
            while (true) {
                try {
                    try {
                        bitmapDecodeStream = byteArrayInputStream instanceof u9 ? BitmapFactory.decodeStream(byteArrayInputStream) : BitmapFactory.decodeStream(new u9(byteArrayInputStream));
                    } catch (OutOfMemoryError e2) {
                        if (i2 >= 10) {
                            throw e2;
                        }
                        try {
                            System.gc();
                            i2++;
                        } catch (OutOfMemoryError unused) {
                            byteArrayInputStream.close();
                            this.f7944d = bitmapDecodeStream;
                            byteArrayInputStream.reset();
                            return byteArrayInputStream;
                        }
                    }
                } catch (Throwable th) {
                    byteArrayInputStream.close();
                    throw th;
                }
            }
        }
        return byteArrayInputStream;
    }

    /* JADX WARN: Removed duplicated region for block: B:95:0x0097 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void c() {
        /*
            Method dump skipped, instruction units count: 329
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tapjoy.internal.n3.c():void");
    }
}
