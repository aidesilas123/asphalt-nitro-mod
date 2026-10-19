package f.a.a;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes5.dex */
public class a {
    private byte[] a;
    private int b;
    private int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f8113d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private OutputStream f8114e;

    public void a(int i, int i2) throws IOException {
        int i3 = (this.b - i) - 1;
        if (i3 < 0) {
            i3 += this.c;
        }
        while (i2 != 0) {
            int i4 = this.c;
            if (i3 >= i4) {
                i3 = 0;
            }
            byte[] bArr = this.a;
            int i5 = this.b;
            int i6 = i5 + 1;
            this.b = i6;
            int i7 = i3 + 1;
            bArr[i5] = bArr[i3];
            if (i6 >= i4) {
                c();
            }
            i2--;
            i3 = i7;
        }
    }

    public void b(int i) {
        if (this.a == null || this.c != i) {
            this.a = new byte[i];
        }
        this.c = i;
        this.b = 0;
        this.f8113d = 0;
    }

    public void c() throws IOException {
        int i = this.b;
        int i2 = this.f8113d;
        int i3 = i - i2;
        if (i3 == 0) {
            return;
        }
        this.f8114e.write(this.a, i2, i3);
        if (this.b >= this.c) {
            this.b = 0;
        }
        this.f8113d = this.b;
    }

    public byte d(int i) {
        int i2 = (this.b - i) - 1;
        if (i2 < 0) {
            i2 += this.c;
        }
        return this.a[i2];
    }

    public void e(boolean z) {
        if (z) {
            return;
        }
        this.f8113d = 0;
        this.b = 0;
    }

    public void f(byte b) throws IOException {
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        bArr[i] = b;
        if (i2 >= this.c) {
            c();
        }
    }

    public void g() throws IOException {
        c();
        this.f8114e = null;
    }

    public void h(OutputStream outputStream) throws IOException {
        g();
        this.f8114e = outputStream;
    }
}
