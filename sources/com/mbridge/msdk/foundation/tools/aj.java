package com.mbridge.msdk.foundation.tools;

import com.mbridge.msdk.foundation.tools.FastKV;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: compiled from: StringSetEncoder.java */
/* JADX INFO: loaded from: classes4.dex */
final class aj implements FastKV.a<Set<String>> {
    static final aj a = new aj();

    private aj() {
    }

    @Override // com.mbridge.msdk.foundation.tools.FastKV.a
    public final /* synthetic */ Set<String> a(byte[] bArr, int i, int i2) {
        int i3;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (i2 > 0) {
            m mVar = new m(bArr, i);
            int i4 = i + i2;
            while (true) {
                i3 = mVar.b;
                if (i3 >= i4) {
                    break;
                }
                byte[] bArr2 = mVar.a;
                int i5 = i3 + 1;
                mVar.b = i5;
                int i6 = bArr2[i3];
                if ((i6 >> 7) != 0) {
                    int i7 = i5 + 1;
                    mVar.b = i7;
                    i6 = (i6 & 127) | (bArr2[i5] << 7);
                    if ((i6 >> 14) != 0) {
                        int i8 = i7 + 1;
                        mVar.b = i8;
                        i6 = (i6 & 16383) | (bArr2[i7] << 14);
                        if ((i6 >> 21) != 0) {
                            int i9 = i8 + 1;
                            mVar.b = i9;
                            i6 = (i6 & 2097151) | (bArr2[i8] << 21);
                            if ((i6 >> 28) != 0) {
                                mVar.b = i9 + 1;
                                i6 = (i6 & 268435455) | (bArr2[i9] << 28);
                            }
                        }
                    }
                }
                linkedHashSet.add(mVar.b(i6));
            }
            if (i3 != i4) {
                throw new IllegalArgumentException("Invalid String set");
            }
        }
        return linkedHashSet;
    }

    @Override // com.mbridge.msdk.foundation.tools.FastKV.a
    public final String a() {
        return "StringSet";
    }

    @Override // com.mbridge.msdk.foundation.tools.FastKV.a
    public final /* synthetic */ byte[] a(Set<String> set) {
        Set<String> set2 = set;
        if (set2.isEmpty()) {
            return new byte[0];
        }
        int size = set2.size();
        int[] iArr = new int[size];
        String[] strArr = new String[size];
        int i = 0;
        int i2 = 0;
        for (String str : set2) {
            if (str == null) {
                i += 5;
                iArr[i2] = -1;
            } else {
                int iB = m.b(str);
                strArr[i2] = str;
                iArr[i2] = iB;
                i += ((iB >> 7) == 0 ? 1 : (iB >> 14) == 0 ? 2 : (iB >> 21) == 0 ? 3 : (iB >> 28) == 0 ? 4 : 5) + iB;
            }
            i2++;
        }
        m mVar = new m(i);
        for (int i3 = 0; i3 < size; i3++) {
            int i4 = iArr[i3];
            int i5 = mVar.b;
            int i6 = i4;
            while ((i6 & (-128)) != 0) {
                mVar.a[i5] = (byte) ((i6 & 127) | 128);
                i6 >>>= 7;
                i5++;
            }
            mVar.a[i5] = (byte) i6;
            mVar.b = i5 + 1;
            if (i4 >= 0) {
                mVar.a(strArr[i3]);
            }
        }
        return mVar.a;
    }
}
