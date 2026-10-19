package com.gameloft.android2d.iap.utils;

import com.applovin.exoplayer2.common.base.Ascii;
import com.gameloft.android.ANMP.GloftAGHM.R;
import com.gameloft.android2d.iap.IAPLib;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public class XXTEA implements com.gameloft.android2d.iap.a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final char[] f2896f = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static String DecryptString(String str) {
        return DecryptString(str, IAPLib.GetIAPKey(SUtils.getStringRS(R.string.k_kdefaultKey)));
    }

    public static String DecryptString(String str, String str2) {
        return new String(XXTEA_Decrypt(GetByteArrayFromHexString(str), str2));
    }

    public static String EncryptString(String str) {
        return EncryptString(str, IAPLib.GetIAPKey(SUtils.getStringRS(R.string.k_kdefaultKey)));
    }

    public static String EncryptString(String str, String str2) {
        return GetHexString(XXTEA_Encrypt(str.getBytes(), str2));
    }

    public static byte[] GetByteArrayFromHexString(String str) {
        try {
            int length = str.length() >> 1;
            byte[] bArr = new byte[length];
            for (int i = 0; i < length; i++) {
                int i2 = i * 2;
                bArr[i] = (byte) (Integer.parseInt(str.substring(i2, i2 + 2), 16) & 255);
            }
            return bArr;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String GetHexString(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer(bArr.length * 2);
        for (int i = 0; i < bArr.length; i++) {
            char[] cArr = f2896f;
            stringBuffer.append(cArr[(bArr[i] >> 4) & 15]);
            stringBuffer.append(cArr[bArr[i] & Ascii.SI]);
        }
        return stringBuffer.toString();
    }

    public static byte[] MD5Decryp(byte[] bArr, String str) {
        try {
            byte[] bArrXXTEA_Decrypt = XXTEA_Decrypt(bArr, str, true);
            if (bArrXXTEA_Decrypt == null) {
                return null;
            }
            int iMem_GetInt = SUtils.Mem_GetInt(bArrXXTEA_Decrypt, 0);
            byte[] bArr2 = new byte[(bArrXXTEA_Decrypt.length - iMem_GetInt) - 4];
            int i = iMem_GetInt + 4;
            SUtils.Mem_GetArray(bArrXXTEA_Decrypt, i, bArr2);
            String str2 = new String(bArr2, "ISO-8859-1");
            byte[] bArr3 = new byte[i];
            System.arraycopy(bArrXXTEA_Decrypt, 0, bArr3, 0, i);
            MD5.MD5_Init();
            try {
                MD5.MD5_Update(new String(bArr3, "ISO-8859-1"), "ISO-8859-1");
            } catch (UnsupportedEncodingException unused) {
            }
            if (!str2.equals(MD5.MD5_AsHex())) {
                return null;
            }
            byte[] bArr4 = new byte[iMem_GetInt];
            SUtils.Mem_GetArray(bArr3, 4, bArr4);
            return bArr4;
        } catch (Exception unused2) {
            return null;
        }
    }

    public static byte[] MD5Encrypt(byte[] bArr, String str) throws UnsupportedEncodingException {
        int length = bArr.length;
        int i = length + 4;
        byte[] bArr2 = new byte[i];
        SUtils.Mem_SetInt(bArr2, 0, length);
        SUtils.Mem_SetArray(bArr2, 4, bArr);
        MD5.MD5_Init();
        try {
            MD5.MD5_Update(new String(bArr2, "ISO-8859-1"), "ISO-8859-1");
            byte[] bytes = MD5.MD5_AsHex().getBytes("ISO-8859-1");
            byte[] bArr3 = new byte[i + bytes.length];
            SUtils.Mem_SetInt(bArr3, 0, length);
            SUtils.Mem_SetArray(bArr3, 4, bArr);
            SUtils.Mem_SetArray(bArr3, 4 + length, bytes);
            return XXTEA_Encrypt(bArr3, str, true);
        } catch (UnsupportedEncodingException | Exception unused) {
            return null;
        }
    }

    public static byte[] ToByteArray(int[] iArr) {
        return ToByteArray(iArr, false, null);
    }

    public static byte[] ToByteArray(int[] iArr, boolean z, byte[] bArr) {
        int length = iArr.length << 2;
        if (z) {
            int i = iArr[iArr.length - 1];
            if (i > length) {
                return null;
            }
            length = i;
        }
        if (bArr == null) {
            bArr = new byte[length];
        }
        for (int i2 = 0; i2 < length; i2++) {
            bArr[i2] = (byte) ((iArr[i2 >>> 2] >>> ((i2 & 3) << 3)) & 255);
        }
        return bArr;
    }

    public static int[] ToIntArray(byte[] bArr) {
        return ToIntArray(bArr, false, null);
    }

    public static int[] ToIntArray(byte[] bArr, boolean z, int[] iArr) {
        int length = (bArr.length & 3) == 0 ? bArr.length >>> 2 : (bArr.length >>> 2) + 1;
        if (z) {
            if (iArr == null) {
                iArr = new int[length + 1];
            }
            iArr[length] = bArr.length;
        } else if (iArr == null) {
            iArr = new int[length];
        }
        int length2 = bArr.length;
        for (int i = 0; i < length2; i++) {
            int i2 = i >>> 2;
            iArr[i2] = iArr[i2] | ((bArr[i] & 255) << ((i & 3) << 3));
        }
        return iArr;
    }

    public static byte[] XXTEA_Decrypt(byte[] bArr, String str) {
        return XXTEA_Decrypt(bArr, ("".equals(str) || str == null) ? null : str.getBytes());
    }

    public static byte[] XXTEA_Decrypt(byte[] bArr, String str, boolean z) {
        return XXTEA_Decrypt(bArr, ("".equals(str) || str == null) ? null : str.getBytes(), z);
    }

    public static byte[] XXTEA_Decrypt(byte[] bArr, byte[] bArr2) {
        return (bArr == null || bArr.length == 0) ? bArr : ToByteArray(XXTEA_Decrypt(ToIntArray(bArr, false, null), ToIntArray(bArr2, false, null)), true, null);
    }

    public static byte[] XXTEA_Decrypt(byte[] bArr, byte[] bArr2, boolean z) {
        return (bArr == null || bArr.length == 0) ? bArr : ToByteArray(XXTEA_Decrypt(ToIntArray(bArr, false, null), ToIntArray(bArr2, false, null)), z, null);
    }

    public static int[] XXTEA_Decrypt(int[] iArr, String str) {
        return XXTEA_Decrypt(iArr, ToIntArray(("".equals(str) || str == null) ? null : str.getBytes()));
    }

    public static int[] XXTEA_Decrypt(int[] iArr, int[] iArr2) {
        int length = iArr.length - 1;
        if (length < 1) {
            return iArr;
        }
        if (iArr2.length < 4) {
            int[] iArr3 = new int[4];
            System.arraycopy(iArr2, 0, iArr3, 0, iArr2.length);
            iArr2 = iArr3;
        }
        int i = iArr[length];
        int i2 = iArr[0];
        for (int i3 = ((52 / (length + 1)) + 6) * (-1640531527); i3 != 0; i3 -= -1640531527) {
            int i4 = (i3 >>> 2) & 3;
            int i5 = length;
            while (i5 > 0) {
                int i6 = iArr[i5 - 1];
                i2 = iArr[i5] - (((i2 ^ i3) + (i6 ^ iArr2[(i5 & 3) ^ i4])) ^ (((i6 >>> 5) ^ (i2 << 2)) + ((i2 >>> 3) ^ (i6 << 4))));
                iArr[i5] = i2;
                i5--;
            }
            int i7 = iArr[length];
            i2 = iArr[0] - (((i2 ^ i3) + (iArr2[i4 ^ (i5 & 3)] ^ i7)) ^ (((i7 >>> 5) ^ (i2 << 2)) + ((i2 >>> 3) ^ (i7 << 4))));
            iArr[0] = i2;
        }
        return iArr;
    }

    public static byte[] XXTEA_Encrypt(byte[] bArr, String str) {
        return XXTEA_Encrypt(bArr, ("".equals(str) || str == null) ? null : str.getBytes());
    }

    public static byte[] XXTEA_Encrypt(byte[] bArr, String str, boolean z) {
        return XXTEA_Encrypt(bArr, ("".equals(str) || str == null) ? null : str.getBytes(), z);
    }

    public static byte[] XXTEA_Encrypt(byte[] bArr, byte[] bArr2) {
        return bArr.length == 0 ? bArr : ToByteArray(XXTEA_Encrypt(ToIntArray(bArr, true, null), ToIntArray(bArr2, false, null)), false, null);
    }

    public static byte[] XXTEA_Encrypt(byte[] bArr, byte[] bArr2, boolean z) {
        return bArr.length == 0 ? bArr : ToByteArray(XXTEA_Encrypt(ToIntArray(bArr, z, null), ToIntArray(bArr2, false, null)), false, null);
    }

    public static int[] XXTEA_Encrypt(int[] iArr, String str) {
        return XXTEA_Encrypt(iArr, ToIntArray(("".equals(str) || str == null) ? null : str.getBytes()));
    }

    public static int[] XXTEA_Encrypt(int[] iArr, int[] iArr2) {
        int length = iArr.length - 1;
        if (length < 1) {
            return iArr;
        }
        if (iArr2.length < 4) {
            int[] iArr3 = new int[4];
            System.arraycopy(iArr2, 0, iArr3, 0, iArr2.length);
            iArr2 = iArr3;
        }
        int i = iArr[length];
        int i2 = iArr[0];
        int i3 = (52 / (length + 1)) + 6;
        int i4 = 0;
        while (true) {
            int i5 = i3 - 1;
            if (i3 <= 0) {
                return iArr;
            }
            i4 -= 1640531527;
            int i6 = (i4 >>> 2) & 3;
            int i7 = 0;
            while (i7 < length) {
                int i8 = i7 + 1;
                int i9 = iArr[i8];
                i = ((((i >>> 5) ^ (i9 << 2)) + ((i9 >>> 3) ^ (i << 4))) ^ ((i9 ^ i4) + (i ^ iArr2[(i7 & 3) ^ i6]))) + iArr[i7];
                iArr[i7] = i;
                i7 = i8;
            }
            int i10 = iArr[0];
            i = ((((i >>> 5) ^ (i10 << 2)) + ((i10 >>> 3) ^ (i << 4))) ^ ((i10 ^ i4) + (i ^ iArr2[i6 ^ (i7 & 3)]))) + iArr[length];
            iArr[length] = i;
            i3 = i5;
        }
    }
}
