package com.google.zxing.common;

import androidx.core.view.InputDeviceCompat;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.ArrayList;

/* JADX INFO: compiled from: MinimalECIInput.java */
/* JADX INFO: loaded from: classes3.dex */
public class g implements e {
    private final int[] a;
    private final int b;

    /* JADX INFO: compiled from: MinimalECIInput.java */
    private static final class b {
        private final char a;
        private final int b;
        private final b c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f4331d;

        private b(char c, d dVar, int i, b bVar, int i2) {
            char c2 = c == i2 ? (char) 1000 : c;
            this.a = c2;
            this.b = i;
            this.c = bVar;
            int length = c2 == 1000 ? 1 : dVar.b(c, i).length;
            length = (bVar == null ? 0 : bVar.b) != i ? length + 3 : length;
            this.f4331d = bVar != null ? length + bVar.f4331d : length;
        }

        boolean e() {
            return this.a == 1000;
        }
    }

    public g(String str, Charset charset, int i) {
        this.b = i;
        d dVar = new d(str, charset, i);
        if (dVar.g() != 1) {
            this.a = e(str, dVar, i);
            return;
        }
        this.a = new int[str.length()];
        for (int i2 = 0; i2 < this.a.length; i2++) {
            char cCharAt = str.charAt(i2);
            int[] iArr = this.a;
            if (cCharAt == i) {
                cCharAt = 1000;
            }
            iArr[i2] = cCharAt;
        }
    }

    static void c(b[][] bVarArr, int i, b bVar) {
        if (bVarArr[i][bVar.b] == null || bVarArr[i][bVar.b].f4331d > bVar.f4331d) {
            bVarArr[i][bVar.b] = bVar;
        }
    }

    static void d(String str, d dVar, b[][] bVarArr, int i, b bVar, int i2) {
        int i3;
        int iF;
        char cCharAt = str.charAt(i);
        int iG = dVar.g();
        if (dVar.f() < 0 || !(cCharAt == i2 || dVar.a(cCharAt, dVar.f()))) {
            i3 = iG;
            iF = 0;
        } else {
            iF = dVar.f();
            i3 = iF + 1;
        }
        for (int i4 = iF; i4 < i3; i4++) {
            if (cCharAt == i2 || dVar.a(cCharAt, i4)) {
                c(bVarArr, i + 1, new b(cCharAt, dVar, i4, bVar, i2));
            }
        }
    }

    static int[] e(String str, d dVar, int i) {
        int length = str.length();
        b[][] bVarArr = (b[][]) Array.newInstance((Class<?>) b.class, length + 1, dVar.g());
        d(str, dVar, bVarArr, 0, null, i);
        for (int i2 = 1; i2 <= length; i2++) {
            for (int i3 = 0; i3 < dVar.g(); i3++) {
                if (bVarArr[i2][i3] != null && i2 < length) {
                    d(str, dVar, bVarArr, i2, bVarArr[i2][i3], i);
                }
            }
            for (int i4 = 0; i4 < dVar.g(); i4++) {
                bVarArr[i2 - 1][i4] = null;
            }
        }
        int i5 = Integer.MAX_VALUE;
        int i6 = -1;
        for (int i7 = 0; i7 < dVar.g(); i7++) {
            if (bVarArr[length][i7] != null) {
                b bVar = bVarArr[length][i7];
                if (bVar.f4331d < i5) {
                    i5 = bVar.f4331d;
                    i6 = i7;
                }
            }
        }
        if (i6 < 0) {
            throw new IllegalStateException("Failed to encode \"" + str + "\"");
        }
        ArrayList arrayList = new ArrayList();
        for (b bVar2 = bVarArr[length][i6]; bVar2 != null; bVar2 = bVar2.c) {
            if (bVar2.e()) {
                arrayList.add(0, 1000);
            } else {
                byte[] bArrB = dVar.b(bVar2.a, bVar2.b);
                for (int length2 = bArrB.length - 1; length2 >= 0; length2--) {
                    arrayList.add(0, Integer.valueOf(bArrB[length2] & 255));
                }
            }
            if ((bVar2.c == null ? 0 : bVar2.c.b) != bVar2.b) {
                arrayList.add(0, Integer.valueOf(dVar.e(bVar2.b) + 256));
            }
        }
        int size = arrayList.size();
        int[] iArr = new int[size];
        for (int i8 = 0; i8 < size; i8++) {
            iArr[i8] = ((Integer) arrayList.get(i8)).intValue();
        }
        return iArr;
    }

    @Override // com.google.zxing.common.e
    public boolean a(int i) {
        if (i >= 0 && i < length()) {
            int[] iArr = this.a;
            return iArr[i] > 255 && iArr[i] <= 999;
        }
        throw new IndexOutOfBoundsException("" + i);
    }

    @Override // com.google.zxing.common.e
    public int b(int i) {
        if (i < 0 || i >= length()) {
            throw new IndexOutOfBoundsException("" + i);
        }
        if (a(i)) {
            return this.a[i] + InputDeviceCompat.SOURCE_ANY;
        }
        throw new IllegalArgumentException("value at " + i + " is not an ECI but a character");
    }

    @Override // com.google.zxing.common.e
    public char charAt(int i) {
        if (i < 0 || i >= length()) {
            throw new IndexOutOfBoundsException("" + i);
        }
        if (!a(i)) {
            return (char) (h(i) ? this.b : this.a[i]);
        }
        throw new IllegalArgumentException("value at " + i + " is not a character but an ECI");
    }

    public int f() {
        return this.b;
    }

    public boolean g(int i, int i2) {
        if ((i + i2) - 1 >= this.a.length) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (a(i + i3)) {
                return false;
            }
        }
        return true;
    }

    public boolean h(int i) {
        if (i >= 0 && i < length()) {
            return this.a[i] == 1000;
        }
        throw new IndexOutOfBoundsException("" + i);
    }

    @Override // com.google.zxing.common.e
    public int length() {
        return this.a.length;
    }

    @Override // com.google.zxing.common.e
    public CharSequence subSequence(int i, int i2) {
        if (i < 0 || i > i2 || i2 > length()) {
            throw new IndexOutOfBoundsException("" + i);
        }
        StringBuilder sb = new StringBuilder();
        while (i < i2) {
            if (a(i)) {
                throw new IllegalArgumentException("value at " + i + " is not a character but an ECI");
            }
            sb.append(charAt(i));
            i++;
        }
        return sb;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < length(); i++) {
            if (i > 0) {
                sb.append(", ");
            }
            if (a(i)) {
                sb.append("ECI(");
                sb.append(b(i));
                sb.append(')');
            } else if (charAt(i) < 128) {
                sb.append('\'');
                sb.append(charAt(i));
                sb.append('\'');
            } else {
                sb.append((int) charAt(i));
            }
        }
        return sb.toString();
    }
}
