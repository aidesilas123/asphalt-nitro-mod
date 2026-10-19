package com.bytedance.sdk.component.b.a.b;

import com.applovin.exoplayer2.common.base.Ascii;
import com.json.o2;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Arrays;

/* JADX INFO: compiled from: ByteString.java */
/* JADX INFO: loaded from: classes2.dex */
public class d implements Serializable, Comparable<d> {
    static final char[] a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static final Charset b = Charset.forName(C.UTF8_NAME);
    public static final d c = a(new byte[0]);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final byte[] f895d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    transient int f896e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    transient String f897f;

    d(byte[] bArr) {
        this.f895d = bArr;
    }

    static int a(String str, int i) {
        int length = str.length();
        int iCharCount = 0;
        int i2 = 0;
        while (iCharCount < length) {
            if (i2 == i) {
                return iCharCount;
            }
            int iCodePointAt = str.codePointAt(iCharCount);
            if ((Character.isISOControl(iCodePointAt) && iCodePointAt != 10 && iCodePointAt != 13) || iCodePointAt == 65533) {
                return -1;
            }
            i2++;
            iCharCount += Character.charCount(iCodePointAt);
        }
        return str.length();
    }

    public static d a(byte... bArr) {
        if (bArr != null) {
            return new d((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    public byte a(int i) {
        return this.f895d[i];
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(d dVar) {
        int iC = c();
        int iC2 = dVar.c();
        int iMin = Math.min(iC, iC2);
        for (int i = 0; i < iMin; i++) {
            int iA = a(i) & 255;
            int iA2 = dVar.a(i) & 255;
            if (iA != iA2) {
                return iA < iA2 ? -1 : 1;
            }
        }
        if (iC == iC2) {
            return 0;
        }
        return iC < iC2 ? -1 : 1;
    }

    public d a(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("beginIndex < 0");
        }
        byte[] bArr = this.f895d;
        if (i2 > bArr.length) {
            throw new IllegalArgumentException("endIndex > length(" + this.f895d.length + ")");
        }
        int i3 = i2 - i;
        if (i3 < 0) {
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        if (i == 0 && i2 == bArr.length) {
            return this;
        }
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, i, bArr2, 0, i3);
        return new d(bArr2);
    }

    public String a() {
        String str = this.f897f;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.f895d, b);
        this.f897f = str2;
        return str2;
    }

    public boolean a(int i, d dVar, int i2, int i3) {
        return dVar.a(i2, this.f895d, i, i3);
    }

    public boolean a(int i, byte[] bArr, int i2, int i3) {
        if (i >= 0) {
            byte[] bArr2 = this.f895d;
            if (i <= bArr2.length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && i.a(bArr2, i, bArr, i2, i3)) {
                return true;
            }
        }
        return false;
    }

    public String b() {
        byte[] bArr = this.f895d;
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (byte b2 : bArr) {
            int i2 = i + 1;
            char[] cArr2 = a;
            cArr[i] = cArr2[(b2 >> 4) & 15];
            i = i2 + 1;
            cArr[i2] = cArr2[b2 & Ascii.SI];
        }
        return new String(cArr);
    }

    public int c() {
        return this.f895d.length;
    }

    public byte[] d() {
        return (byte[]) this.f895d.clone();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof d) {
            d dVar = (d) obj;
            int iC = dVar.c();
            byte[] bArr = this.f895d;
            if (iC == bArr.length && dVar.a(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i = this.f896e;
        if (i != 0) {
            return i;
        }
        int iHashCode = Arrays.hashCode(this.f895d);
        this.f896e = iHashCode;
        return iHashCode;
    }

    public String toString() {
        StringBuilder sb;
        if (this.f895d.length == 0) {
            return "[size=0]";
        }
        String strA = a();
        int iA = a(strA, 64);
        if (iA == -1) {
            if (this.f895d.length <= 64) {
                return "[hex=" + b() + o2.i.f6491e;
            }
            return "[size=" + this.f895d.length + " hex=" + a(0, 64).b() + "…]";
        }
        String strReplace = strA.substring(0, iA).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
        if (iA < strA.length()) {
            sb = new StringBuilder();
            sb.append("[size=");
            sb.append(this.f895d.length);
            sb.append(" text=");
            sb.append(strReplace);
            sb.append("…]");
        } else {
            sb = new StringBuilder();
            sb.append("[text=");
            sb.append(strReplace);
            sb.append(o2.i.f6491e);
        }
        return sb.toString();
    }
}
