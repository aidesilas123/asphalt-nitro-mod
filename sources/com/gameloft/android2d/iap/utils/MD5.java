package com.gameloft.android2d.iap.utils;

import com.applovin.exoplayer2.common.base.Ascii;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public class MD5 {
    static int[] a;
    static int[] b;
    static long[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static long[] f2879d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static byte[] f2880e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static byte[] f2881f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static byte[] f2882g = {-128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    private static final char[] h = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static String MD5_AsHex() {
        return MD5_AsHex(MD5_Final());
    }

    public static String MD5_AsHex(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (int i2 = 0; i2 < bArr.length; i2++) {
            int i3 = i + 1;
            char[] cArr2 = h;
            cArr[i] = cArr2[(bArr[i2] >>> 4) & 15];
            i = i3 + 1;
            cArr[i3] = cArr2[bArr[i2] & Ascii.SI];
        }
        return new String(cArr);
    }

    private static void MD5_CopyToFinal() {
        byte[] bArr = new byte[64];
        f2881f = bArr;
        f2879d = new long[]{0};
        b = new int[4];
        System.arraycopy(f2880e, 0, bArr, 0, bArr.length);
        int[] iArr = a;
        int[] iArr2 = b;
        System.arraycopy(iArr, 0, iArr2, 0, iArr2.length);
        f2879d = c;
    }

    private static void MD5_Decode(byte[] bArr, int i, int[] iArr) {
        iArr[0] = (bArr[i + 0] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | (bArr[i + 3] << 24);
        iArr[1] = (bArr[i + 4] & 255) | ((bArr[i + 5] & 255) << 8) | ((bArr[i + 6] & 255) << 16) | (bArr[i + 7] << 24);
        iArr[2] = (bArr[i + 8] & 255) | ((bArr[i + 9] & 255) << 8) | ((bArr[i + 10] & 255) << 16) | (bArr[i + 11] << 24);
        iArr[3] = (bArr[i + 12] & 255) | ((bArr[i + 13] & 255) << 8) | ((bArr[i + 14] & 255) << 16) | (bArr[i + 15] << 24);
        iArr[4] = (bArr[i + 16] & 255) | ((bArr[i + 17] & 255) << 8) | ((bArr[i + 18] & 255) << 16) | (bArr[i + 19] << 24);
        iArr[5] = (bArr[i + 20] & 255) | ((bArr[i + 21] & 255) << 8) | ((bArr[i + 22] & 255) << 16) | (bArr[i + 23] << 24);
        iArr[6] = (bArr[i + 24] & 255) | ((bArr[i + 25] & 255) << 8) | ((bArr[i + 26] & 255) << 16) | (bArr[i + 27] << 24);
        iArr[7] = (bArr[i + 28] & 255) | ((bArr[i + 29] & 255) << 8) | ((bArr[i + 30] & 255) << 16) | (bArr[i + 31] << 24);
        iArr[8] = (bArr[i + 32] & 255) | ((bArr[i + 33] & 255) << 8) | ((bArr[i + 34] & 255) << 16) | (bArr[i + 35] << 24);
        iArr[9] = (bArr[i + 36] & 255) | ((bArr[i + 37] & 255) << 8) | ((bArr[i + 38] & 255) << 16) | (bArr[i + 39] << 24);
        iArr[10] = (bArr[i + 40] & 255) | ((bArr[i + 41] & 255) << 8) | ((bArr[i + 42] & 255) << 16) | (bArr[i + 43] << 24);
        iArr[11] = (bArr[i + 44] & 255) | ((bArr[i + 45] & 255) << 8) | ((bArr[i + 46] & 255) << 16) | (bArr[i + 47] << 24);
        iArr[12] = (bArr[i + 48] & 255) | ((bArr[i + 49] & 255) << 8) | ((bArr[i + 50] & 255) << 16) | (bArr[i + 51] << 24);
        iArr[13] = (bArr[i + 52] & 255) | ((bArr[i + 53] & 255) << 8) | ((bArr[i + 54] & 255) << 16) | (bArr[i + 55] << 24);
        iArr[14] = (bArr[i + 56] & 255) | ((bArr[i + 57] & 255) << 8) | ((bArr[i + 58] & 255) << 16) | (bArr[i + 59] << 24);
        iArr[15] = (bArr[i + 63] << 24) | (bArr[i + 60] & 255) | ((bArr[i + 61] & 255) << 8) | ((bArr[i + 62] & 255) << 16);
    }

    private static byte[] MD5_Encode(int[] iArr, int i) {
        byte[] bArr = new byte[i];
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3 += 4) {
            bArr[i3 + 0] = (byte) (iArr[i2] & 255);
            bArr[i3 + 1] = (byte) ((iArr[i2] >>> 8) & 255);
            bArr[i3 + 2] = (byte) ((iArr[i2] >>> 16) & 255);
            bArr[i3 + 3] = (byte) ((iArr[i2] >>> 24) & 255);
            i2++;
        }
        return bArr;
    }

    private static byte[] MD5_Final() {
        MD5_CopyToFinal();
        long[] jArr = f2879d;
        byte[] bArrMD5_Encode = MD5_Encode(new int[]{(int) (jArr[0] << 3), (int) (jArr[0] >> 29)}, 8);
        long[] jArr2 = f2879d;
        int i = (int) (jArr2[0] & 63);
        MD5_Update(f2881f, b, jArr2, f2882g, 0, i < 56 ? 56 - i : 120 - i);
        MD5_Update(f2881f, b, f2879d, bArrMD5_Encode, 0, 8);
        return MD5_Encode(b, 16);
    }

    public static boolean MD5_HashesEqual(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return bArr2 == null;
        }
        if (bArr2 == null) {
            return false;
        }
        int length = 16;
        if (bArr.length < 16) {
            if (bArr2.length != bArr.length) {
                return false;
            }
            length = bArr.length;
        } else if (bArr2.length < 16) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public static void MD5_Init() {
        f2880e = new byte[64];
        c = new long[]{0};
        a = new int[]{1732584193, -271733879, -1732584194, 271733878};
    }

    private static void MD5_Transform(int[] iArr, byte[] bArr, int i, int[] iArr2) {
        int i2 = iArr[0];
        int i3 = iArr[1];
        int i4 = iArr[2];
        int i5 = iArr[3];
        MD5_Decode(bArr, i, iArr2);
        int i6 = i2 + ((((i3 & i4) | ((~i3) & i5)) + iArr2[0]) - 680876936);
        int i7 = ((i6 >>> 25) | (i6 << 7)) + i3;
        int i8 = i5 + ((((i7 & i3) | ((~i7) & i4)) + iArr2[1]) - 389564586);
        int i9 = ((i8 >>> 20) | (i8 << 12)) + i7;
        int i10 = i4 + ((i9 & i7) | ((~i9) & i3)) + iArr2[2] + 606105819;
        int i11 = ((i10 >>> 15) | (i10 << 17)) + i9;
        int i12 = i3 + ((((i11 & i9) | ((~i11) & i7)) + iArr2[3]) - 1044525330);
        int i13 = ((i12 >>> 10) | (i12 << 22)) + i11;
        int i14 = i7 + ((((i13 & i11) | ((~i13) & i9)) + iArr2[4]) - 176418897);
        int i15 = ((i14 >>> 25) | (i14 << 7)) + i13;
        int i16 = i9 + ((i15 & i13) | ((~i15) & i11)) + iArr2[5] + 1200080426;
        int i17 = ((i16 >>> 20) | (i16 << 12)) + i15;
        int i18 = i11 + ((((i17 & i15) | ((~i17) & i13)) + iArr2[6]) - 1473231341);
        int i19 = ((i18 >>> 15) | (i18 << 17)) + i17;
        int i20 = i13 + ((((i19 & i17) | ((~i19) & i15)) + iArr2[7]) - 45705983);
        int i21 = ((i20 >>> 10) | (i20 << 22)) + i19;
        int i22 = i15 + ((i21 & i19) | ((~i21) & i17)) + iArr2[8] + 1770035416;
        int i23 = ((i22 >>> 25) | (i22 << 7)) + i21;
        int i24 = i17 + ((((i23 & i21) | ((~i23) & i19)) + iArr2[9]) - 1958414417);
        int i25 = ((i24 >>> 20) | (i24 << 12)) + i23;
        int i26 = i19 + (((((~i25) & i21) | (i25 & i23)) + iArr2[10]) - 42063);
        int i27 = ((i26 << 17) | (i26 >>> 15)) + i25;
        int i28 = i21 + ((((i27 & i25) | ((~i27) & i23)) + iArr2[11]) - 1990404162);
        int i29 = ((i28 >>> 10) | (i28 << 22)) + i27;
        int i30 = i23 + ((i29 & i27) | ((~i29) & i25)) + iArr2[12] + 1804603682;
        int i31 = ((i30 >>> 25) | (i30 << 7)) + i29;
        int i32 = i25 + ((((i31 & i29) | ((~i31) & i27)) + iArr2[13]) - 40341101);
        int i33 = ((i32 << 12) | (i32 >>> 20)) + i31;
        int i34 = ~i33;
        int i35 = i27 + ((((i33 & i31) | (i34 & i29)) + iArr2[14]) - 1502002290);
        int i36 = ((i35 >>> 15) | (i35 << 17)) + i33;
        int i37 = i29 + ((i36 & i33) | ((~i36) & i31)) + iArr2[15] + 1236535329;
        int i38 = ((i37 >>> 10) | (i37 << 22)) + i36;
        int i39 = i31 + ((((i38 & i33) | (i34 & i36)) + iArr2[1]) - 165796510);
        int i40 = ((i39 >>> 27) | (i39 << 5)) + i38;
        int i41 = i33 + ((((i40 & i36) | (i38 & r14)) + iArr2[6]) - 1069501632);
        int i42 = ((i41 >>> 23) | (i41 << 9)) + i40;
        int i43 = i36 + ((i42 & i38) | ((~i38) & i40)) + iArr2[11] + 643717713;
        int i44 = ((i43 >>> 18) | (i43 << 14)) + i42;
        int i45 = i38 + ((((i44 & i40) | ((~i40) & i42)) + iArr2[0]) - 373897302);
        int i46 = ((i45 >>> 12) | (i45 << 20)) + i44;
        int i47 = i40 + ((((i46 & i42) | ((~i42) & i44)) + iArr2[5]) - 701558691);
        int i48 = ((i47 >>> 27) | (i47 << 5)) + i46;
        int i49 = i42 + ((i48 & i44) | ((~i44) & i46)) + iArr2[10] + 38016083;
        int i50 = ((i49 >>> 23) | (i49 << 9)) + i48;
        int i51 = i44 + ((((i50 & i46) | ((~i46) & i48)) + iArr2[15]) - 660478335);
        int i52 = ((i51 >>> 18) | (i51 << 14)) + i50;
        int i53 = i46 + ((((i52 & i48) | ((~i48) & i50)) + iArr2[4]) - 405537848);
        int i54 = ((i53 >>> 12) | (i53 << 20)) + i52;
        int i55 = i48 + ((i54 & i50) | ((~i50) & i52)) + iArr2[9] + 568446438;
        int i56 = ((i55 >>> 27) | (i55 << 5)) + i54;
        int i57 = i50 + ((((i56 & i52) | ((~i52) & i54)) + iArr2[14]) - 1019803690);
        int i58 = ((i57 >>> 23) | (i57 << 9)) + i56;
        int i59 = i52 + ((((i58 & i54) | ((~i54) & i56)) + iArr2[3]) - 187363961);
        int i60 = ((i59 >>> 18) | (i59 << 14)) + i58;
        int i61 = i54 + ((i60 & i56) | ((~i56) & i58)) + iArr2[8] + 1163531501;
        int i62 = ((i61 >>> 12) | (i61 << 20)) + i60;
        int i63 = i56 + ((((i62 & i58) | ((~i58) & i60)) + iArr2[13]) - 1444681467);
        int i64 = ((i63 >>> 27) | (i63 << 5)) + i62;
        int i65 = i58 + ((((i64 & i60) | ((~i60) & i62)) + iArr2[2]) - 51403784);
        int i66 = ((i65 >>> 23) | (i65 << 9)) + i64;
        int i67 = i60 + ((i66 & i62) | ((~i62) & i64)) + iArr2[7] + 1735328473;
        int i68 = ((i67 >>> 18) | (i67 << 14)) + i66;
        int i69 = i62 + ((((i68 & i64) | ((~i64) & i66)) + iArr2[12]) - 1926607734);
        int i70 = ((i69 >>> 12) | (i69 << 20)) + i68;
        int i71 = i64 + ((((i70 ^ i68) ^ i66) + iArr2[5]) - 378558);
        int i72 = ((i71 >>> 28) | (i71 << 4)) + i70;
        int i73 = i66 + ((((i72 ^ i70) ^ i68) + iArr2[8]) - 2022574463);
        int i74 = ((i73 >>> 21) | (i73 << 11)) + i72;
        int i75 = i68 + ((i74 ^ i72) ^ i70) + iArr2[11] + 1839030562;
        int i76 = ((i75 >>> 16) | (i75 << 16)) + i74;
        int i77 = i70 + ((((i76 ^ i74) ^ i72) + iArr2[14]) - 35309556);
        int i78 = ((i77 >>> 9) | (i77 << 23)) + i76;
        int i79 = i72 + ((((i78 ^ i76) ^ i74) + iArr2[1]) - 1530992060);
        int i80 = ((i79 >>> 28) | (i79 << 4)) + i78;
        int i81 = i74 + ((i80 ^ i78) ^ i76) + iArr2[4] + 1272893353;
        int i82 = ((i81 >>> 21) | (i81 << 11)) + i80;
        int i83 = i76 + ((((i82 ^ i80) ^ i78) + iArr2[7]) - 155497632);
        int i84 = ((i83 >>> 16) | (i83 << 16)) + i82;
        int i85 = i78 + ((((i84 ^ i82) ^ i80) + iArr2[10]) - 1094730640);
        int i86 = ((i85 >>> 9) | (i85 << 23)) + i84;
        int i87 = i80 + ((i86 ^ i84) ^ i82) + iArr2[13] + 681279174;
        int i88 = ((i87 >>> 28) | (i87 << 4)) + i86;
        int i89 = i82 + ((((i88 ^ i86) ^ i84) + iArr2[0]) - 358537222);
        int i90 = ((i89 >>> 21) | (i89 << 11)) + i88;
        int i91 = i84 + ((((i90 ^ i88) ^ i86) + iArr2[3]) - 722521979);
        int i92 = ((i91 >>> 16) | (i91 << 16)) + i90;
        int i93 = i86 + ((i92 ^ i90) ^ i88) + iArr2[6] + 76029189;
        int i94 = ((i93 >>> 9) | (i93 << 23)) + i92;
        int i95 = i88 + ((((i94 ^ i92) ^ i90) + iArr2[9]) - 640364487);
        int i96 = ((i95 >>> 28) | (i95 << 4)) + i94;
        int i97 = i90 + ((((i96 ^ i94) ^ i92) + iArr2[12]) - 421815835);
        int i98 = ((i97 >>> 21) | (i97 << 11)) + i96;
        int i99 = i92 + ((i98 ^ i96) ^ i94) + iArr2[15] + 530742520;
        int i100 = ((i99 >>> 16) | (i99 << 16)) + i98;
        int i101 = i94 + ((((i100 ^ i98) ^ i96) + iArr2[2]) - 995338651);
        int i102 = ((i101 >>> 9) | (i101 << 23)) + i100;
        int i103 = i96 + (((((~i98) | i102) ^ i100) + iArr2[0]) - 198630844);
        int i104 = ((i103 >>> 26) | (i103 << 6)) + i102;
        int i105 = i98 + (((~i100) | i104) ^ i102) + iArr2[7] + 1126891415;
        int i106 = ((i105 >>> 22) | (i105 << 10)) + i104;
        int i107 = i100 + (((((~i102) | i106) ^ i104) + iArr2[14]) - 1416354905);
        int i108 = ((i107 >>> 17) | (i107 << 15)) + i106;
        int i109 = i102 + (((((~i104) | i108) ^ i106) + iArr2[5]) - 57434055);
        int i110 = ((i109 >>> 11) | (i109 << 21)) + i108;
        int i111 = i104 + (((~i106) | i110) ^ i108) + iArr2[12] + 1700485571;
        int i112 = ((i111 >>> 26) | (i111 << 6)) + i110;
        int i113 = i106 + (((((~i108) | i112) ^ i110) + iArr2[3]) - 1894986606);
        int i114 = ((i113 >>> 22) | (i113 << 10)) + i112;
        int i115 = i108 + (((((~i110) | i114) ^ i112) + iArr2[10]) - 1051523);
        int i116 = ((i115 >>> 17) | (i115 << 15)) + i114;
        int i117 = i110 + (((((~i112) | i116) ^ i114) + iArr2[1]) - 2054922799);
        int i118 = ((i117 >>> 11) | (i117 << 21)) + i116;
        int i119 = i112 + (((~i114) | i118) ^ i116) + iArr2[8] + 1873313359;
        int i120 = ((i119 >>> 26) | (i119 << 6)) + i118;
        int i121 = i114 + (((((~i116) | i120) ^ i118) + iArr2[15]) - 30611744);
        int i122 = ((i121 >>> 22) | (i121 << 10)) + i120;
        int i123 = i116 + (((((~i118) | i122) ^ i120) + iArr2[6]) - 1560198380);
        int i124 = ((i123 >>> 17) | (i123 << 15)) + i122;
        int i125 = i118 + (((~i120) | i124) ^ i122) + iArr2[13] + 1309151649;
        int i126 = ((i125 >>> 11) | (i125 << 21)) + i124;
        int i127 = i120 + (((((~i122) | i126) ^ i124) + iArr2[4]) - 145523070);
        int i128 = ((i127 >>> 26) | (i127 << 6)) + i126;
        int i129 = i122 + (((((~i124) | i128) ^ i126) + iArr2[11]) - 1120210379);
        int i130 = ((i129 >>> 22) | (i129 << 10)) + i128;
        int i131 = i124 + (((~i126) | i130) ^ i128) + iArr2[2] + 718787259;
        int i132 = ((i131 >>> 17) | (i131 << 15)) + i130;
        int i133 = i126 + (((((~i128) | i132) ^ i130) + iArr2[9]) - 343485551);
        iArr[0] = iArr[0] + i128;
        iArr[1] = iArr[1] + ((i133 >>> 11) | (i133 << 21)) + i132;
        iArr[2] = iArr[2] + i132;
        iArr[3] = iArr[3] + i130;
    }

    public static void MD5_Update(String str, String str2) throws UnsupportedEncodingException {
        if (str2 == null) {
            str2 = "ISO8859_1";
        }
        byte[] bytes = str.getBytes(str2);
        MD5_Update(f2880e, a, c, bytes, 0, bytes.length);
    }

    private static void MD5_Update(byte[] bArr, int[] iArr, long[] jArr, byte[] bArr2, int i, int i2) {
        if (i2 - i > bArr2.length) {
            i2 = bArr2.length - i;
        }
        int i3 = 0;
        int i4 = (int) (jArr[0] & 63);
        jArr[0] = jArr[0] + ((long) i2);
        int i5 = 64 - i4;
        if (i2 >= i5) {
            int[] iArr2 = new int[16];
            if (i5 == 64) {
                i5 = 0;
            } else {
                for (int i6 = 0; i6 < i5; i6++) {
                    bArr[i6 + i4] = bArr2[i6 + i];
                }
                MD5_Transform(iArr, bArr, 0, iArr2);
            }
            while (i5 + 63 < i2) {
                MD5_Transform(iArr, bArr2, i5 + i, iArr2);
                i5 += 64;
            }
            i3 = i5;
            i4 = 0;
        }
        if (i3 < i2) {
            for (int i7 = i3; i7 < i2; i7++) {
                bArr[(i4 + i7) - i3] = bArr2[i7 + i];
            }
        }
    }
}
