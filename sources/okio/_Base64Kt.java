package okio;

import com.applovin.exoplayer2.common.base.Ascii;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;

/* JADX INFO: compiled from: -Base64.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class _Base64Kt {
    private static final byte[] a;
    private static final byte[] b;

    static {
        ByteString.Companion companion = ByteString.a;
        a = companion.d("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/").k();
        b = companion.d("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_").k();
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x00b8 A[LOOP:1: B:16:0x003e->B:63:0x00b8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00b4 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final byte[] decodeBase64ToArray(java.lang.String r17) {
        /*
            Method dump skipped, instruction units count: 242
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: okio._Base64Kt.decodeBase64ToArray(java.lang.String):byte[]");
    }

    public static final String encodeBase64(byte[] bArr, byte[] map) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(map, "map");
        byte[] bArr2 = new byte[((bArr.length + 2) / 3) * 4];
        int length = bArr.length - (bArr.length % 3);
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = i + 1;
            byte b2 = bArr[i];
            int i4 = i3 + 1;
            byte b3 = bArr[i3];
            int i5 = i4 + 1;
            byte b4 = bArr[i4];
            int i6 = i2 + 1;
            bArr2[i2] = map[(b2 & 255) >> 2];
            int i7 = i6 + 1;
            bArr2[i6] = map[((b2 & 3) << 4) | ((b3 & 255) >> 4)];
            int i8 = i7 + 1;
            bArr2[i7] = map[((b3 & Ascii.SI) << 2) | ((b4 & 255) >> 6)];
            i2 = i8 + 1;
            bArr2[i8] = map[b4 & 63];
            i = i5;
        }
        int length2 = bArr.length - length;
        if (length2 == 1) {
            byte b5 = bArr[i];
            int i9 = i2 + 1;
            bArr2[i2] = map[(b5 & 255) >> 2];
            int i10 = i9 + 1;
            bArr2[i9] = map[(b5 & 3) << 4];
            byte b6 = (byte) 61;
            bArr2[i10] = b6;
            bArr2[i10 + 1] = b6;
        } else if (length2 == 2) {
            int i11 = i + 1;
            byte b7 = bArr[i];
            byte b8 = bArr[i11];
            int i12 = i2 + 1;
            bArr2[i2] = map[(b7 & 255) >> 2];
            int i13 = i12 + 1;
            bArr2[i12] = map[((b7 & 3) << 4) | ((b8 & 255) >> 4)];
            bArr2[i13] = map[(b8 & Ascii.SI) << 2];
            bArr2[i13 + 1] = (byte) 61;
        }
        return _JvmPlatformKt.toUtf8String(bArr2);
    }

    public static /* synthetic */ String encodeBase64$default(byte[] bArr, byte[] bArr2, int i, Object obj) {
        if ((i & 1) != 0) {
            bArr2 = a;
        }
        return encodeBase64(bArr, bArr2);
    }

    public static final byte[] getBASE64() {
        return a;
    }

    public static /* synthetic */ void getBASE64$annotations() {
    }

    public static final byte[] getBASE64_URL_SAFE() {
        return b;
    }

    public static /* synthetic */ void getBASE64_URL_SAFE$annotations() {
    }
}
