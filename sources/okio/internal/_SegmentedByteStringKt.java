package okio.internal;

import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.k;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.ByteString;
import okio._UtilKt;
import okio.u;
import okio.v;

/* JADX INFO: compiled from: -SegmentedByteString.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class _SegmentedByteStringKt {
    public static final int binarySearch(int[] iArr, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(iArr, "<this>");
        int i4 = i3 - 1;
        while (i2 <= i4) {
            int i5 = (i2 + i4) >>> 1;
            int i6 = iArr[i5];
            if (i6 < i) {
                i2 = i5 + 1;
            } else {
                if (i6 <= i) {
                    return i5;
                }
                i4 = i5 - 1;
            }
        }
        return (-i2) - 1;
    }

    public static final void commonCopyInto(v vVar, int i, byte[] target, int i2, int i3) {
        Intrinsics.checkNotNullParameter(vVar, "<this>");
        Intrinsics.checkNotNullParameter(target, "target");
        long j = i3;
        _UtilKt.checkOffsetAndCount(vVar.F(), i, j);
        _UtilKt.checkOffsetAndCount(target.length, i2, j);
        int i4 = i3 + i;
        int iSegment = segment(vVar, i);
        while (i < i4) {
            int i5 = iSegment == 0 ? 0 : vVar.M()[iSegment - 1];
            int i6 = vVar.M()[iSegment] - i5;
            int i7 = vVar.M()[vVar.N().length + iSegment];
            int iMin = Math.min(i4, i6 + i5) - i;
            int i8 = i7 + (i - i5);
            ArraysKt___ArraysJvmKt.copyInto(vVar.N()[iSegment], target, i2, i8, i8 + iMin);
            i2 += iMin;
            i += iMin;
            iSegment++;
        }
    }

    public static final boolean commonEquals(v vVar, Object obj) {
        Intrinsics.checkNotNullParameter(vVar, "<this>");
        if (obj == vVar) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.F() == vVar.F() && vVar.z(0, byteString, 0, vVar.F())) {
                return true;
            }
        }
        return false;
    }

    public static final int commonGetSize(v vVar) {
        Intrinsics.checkNotNullParameter(vVar, "<this>");
        return vVar.M()[vVar.N().length - 1];
    }

    public static final int commonHashCode(v vVar) {
        Intrinsics.checkNotNullParameter(vVar, "<this>");
        int iM = vVar.m();
        if (iM != 0) {
            return iM;
        }
        int length = vVar.N().length;
        int i = 0;
        int i2 = 0;
        int i3 = 1;
        while (i < length) {
            int i4 = vVar.M()[length + i];
            int i5 = vVar.M()[i];
            byte[] bArr = vVar.N()[i];
            int i6 = (i5 - i2) + i4;
            while (i4 < i6) {
                i3 = (i3 * 31) + bArr[i4];
                i4++;
            }
            i++;
            i2 = i5;
        }
        vVar.B(i3);
        return i3;
    }

    public static final byte commonInternalGet(v vVar, int i) {
        Intrinsics.checkNotNullParameter(vVar, "<this>");
        _UtilKt.checkOffsetAndCount(vVar.M()[vVar.N().length - 1], i, 1L);
        int iSegment = segment(vVar, i);
        return vVar.N()[iSegment][(i - (iSegment == 0 ? 0 : vVar.M()[iSegment - 1])) + vVar.M()[vVar.N().length + iSegment]];
    }

    public static final boolean commonRangeEquals(v vVar, int i, ByteString other, int i2, int i3) {
        Intrinsics.checkNotNullParameter(vVar, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (i < 0 || i > vVar.F() - i3) {
            return false;
        }
        int i4 = i3 + i;
        int iSegment = segment(vVar, i);
        while (i < i4) {
            int i5 = iSegment == 0 ? 0 : vVar.M()[iSegment - 1];
            int i6 = vVar.M()[iSegment] - i5;
            int i7 = vVar.M()[vVar.N().length + iSegment];
            int iMin = Math.min(i4, i6 + i5) - i;
            if (!other.A(i2, vVar.N()[iSegment], i7 + (i - i5), iMin)) {
                return false;
            }
            i2 += iMin;
            i += iMin;
            iSegment++;
        }
        return true;
    }

    public static final boolean commonRangeEquals(v vVar, int i, byte[] other, int i2, int i3) {
        Intrinsics.checkNotNullParameter(vVar, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (i < 0 || i > vVar.F() - i3 || i2 < 0 || i2 > other.length - i3) {
            return false;
        }
        int i4 = i3 + i;
        int iSegment = segment(vVar, i);
        while (i < i4) {
            int i5 = iSegment == 0 ? 0 : vVar.M()[iSegment - 1];
            int i6 = vVar.M()[iSegment] - i5;
            int i7 = vVar.M()[vVar.N().length + iSegment];
            int iMin = Math.min(i4, i6 + i5) - i;
            if (!_UtilKt.arrayRangeEquals(vVar.N()[iSegment], i7 + (i - i5), other, i2, iMin)) {
                return false;
            }
            i2 += iMin;
            i += iMin;
            iSegment++;
        }
        return true;
    }

    public static final ByteString commonSubstring(v vVar, int i, int i2) {
        Intrinsics.checkNotNullParameter(vVar, "<this>");
        int iResolveDefaultParameter = _UtilKt.resolveDefaultParameter(vVar, i2);
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("beginIndex=" + i + " < 0").toString());
        }
        if (!(iResolveDefaultParameter <= vVar.F())) {
            throw new IllegalArgumentException(("endIndex=" + iResolveDefaultParameter + " > length(" + vVar.F() + ')').toString());
        }
        int i3 = iResolveDefaultParameter - i;
        if (!(i3 >= 0)) {
            throw new IllegalArgumentException(("endIndex=" + iResolveDefaultParameter + " < beginIndex=" + i).toString());
        }
        if (i == 0 && iResolveDefaultParameter == vVar.F()) {
            return vVar;
        }
        if (i == iResolveDefaultParameter) {
            return ByteString.b;
        }
        int iSegment = segment(vVar, i);
        int iSegment2 = segment(vVar, iResolveDefaultParameter - 1);
        byte[][] bArr = (byte[][]) k.copyOfRange(vVar.N(), iSegment, iSegment2 + 1);
        int[] iArr = new int[bArr.length * 2];
        if (iSegment <= iSegment2) {
            int i4 = iSegment;
            int i5 = 0;
            while (true) {
                int i6 = i4 + 1;
                iArr[i5] = Math.min(vVar.M()[i4] - i, i3);
                int i7 = i5 + 1;
                iArr[i5 + bArr.length] = vVar.M()[vVar.N().length + i4];
                if (i4 == iSegment2) {
                    break;
                }
                i4 = i6;
                i5 = i7;
            }
        }
        int i8 = iSegment != 0 ? vVar.M()[iSegment - 1] : 0;
        int length = bArr.length;
        iArr[length] = iArr[length] + (i - i8);
        return new v(bArr, iArr);
    }

    public static final byte[] commonToByteArray(v vVar) {
        Intrinsics.checkNotNullParameter(vVar, "<this>");
        byte[] bArr = new byte[vVar.F()];
        int length = vVar.N().length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            int i4 = vVar.M()[length + i];
            int i5 = vVar.M()[i];
            int i6 = i5 - i2;
            ArraysKt___ArraysJvmKt.copyInto(vVar.N()[i], bArr, i3, i4, i4 + i6);
            i3 += i6;
            i++;
            i2 = i5;
        }
        return bArr;
    }

    public static final void commonWrite(v vVar, Buffer buffer, int i, int i2) {
        Intrinsics.checkNotNullParameter(vVar, "<this>");
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        int i3 = i + i2;
        int iSegment = segment(vVar, i);
        while (i < i3) {
            int i4 = iSegment == 0 ? 0 : vVar.M()[iSegment - 1];
            int i5 = vVar.M()[iSegment] - i4;
            int i6 = vVar.M()[vVar.N().length + iSegment];
            int iMin = Math.min(i3, i5 + i4) - i;
            int i7 = i6 + (i - i4);
            u uVar = new u(vVar.N()[iSegment], i7, i7 + iMin, true, false);
            u uVar2 = buffer.a;
            if (uVar2 == null) {
                uVar.h = uVar;
                uVar.f10901g = uVar;
                buffer.a = uVar;
            } else {
                Intrinsics.checkNotNull(uVar2);
                u uVar3 = uVar2.h;
                Intrinsics.checkNotNull(uVar3);
                uVar3.c(uVar);
            }
            i += iMin;
            iSegment++;
        }
        buffer.x(buffer.I() + ((long) i2));
    }

    public static final void forEachSegment(v vVar, Function3<? super byte[], ? super Integer, ? super Integer, kotlin.v> action) {
        Intrinsics.checkNotNullParameter(vVar, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        int length = vVar.N().length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = vVar.M()[length + i];
            int i4 = vVar.M()[i];
            action.invoke(vVar.N()[i], Integer.valueOf(i3), Integer.valueOf(i4 - i2));
            i++;
            i2 = i4;
        }
    }

    public static final int segment(v vVar, int i) {
        Intrinsics.checkNotNullParameter(vVar, "<this>");
        int iBinarySearch = binarySearch(vVar.M(), i + 1, 0, vVar.N().length);
        return iBinarySearch >= 0 ? iBinarySearch : ~iBinarySearch;
    }
}
