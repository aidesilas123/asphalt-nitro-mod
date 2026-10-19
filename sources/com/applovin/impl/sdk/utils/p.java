package com.applovin.impl.sdk.utils;

import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.internal.security.CertificateUtil;
import com.json.b4;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class p {
    private static final byte[] aVS = {-83, -98, -53, -112, -29, -118, 55, 117, 59, 8, -12, -15, 73, 110, -67, 57, 117, 4, -26, 97, 66, -12, 125, 91, -119, -103, -30, 114, 123, 54, 51, -77};
    private static final byte[] aVT;

    public enum a {
        NONE(-1),
        DEFAULT(0),
        V2(1);

        private final int ahF;

        a(int i) {
            this.ahF = i;
        }

        public static a gW(int i) {
            if (i != 0 && i == 1) {
                return V2;
            }
            return DEFAULT;
        }

        public int getValue() {
            return this.ahF;
        }
    }

    static {
        byte[] bArr = new byte[32];
        aVT = bArr;
        System.arraycopy(new byte[]{Ascii.DC2, Ascii.FF, Ascii.FS, Ascii.DC4, 17, Ascii.ETB, Ascii.SUB, 9, Ascii.NAK, 3, Ascii.SO, Ascii.GS, 4, 0, 2, 7, 10, Ascii.GS, 6, Ascii.DC4, 1}, 0, bArr, 0, 21);
    }

    public static a N(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return a.NONE;
        }
        char c = (char) bArr[0];
        return c == '2' ? a.V2 : c == '{' ? a.NONE : a.DEFAULT;
    }

    private static String O(byte[] bArr) throws UnsupportedEncodingException {
        return P(Base64.encode(bArr, 2));
    }

    private static String P(byte[] bArr) throws UnsupportedEncodingException {
        return new String(bArr, C.UTF8_NAME).replace('+', '-').replace('/', '_').replace(b4.R, '*');
    }

    private static int a(byte[] bArr, byte b) {
        if (bArr != null && bArr.length != 0) {
            for (int i = 0; i < bArr.length; i++) {
                if (bArr[i] == b) {
                    return i;
                }
            }
        }
        return -1;
    }

    public static String a(String str, long j, a aVar, String str2, com.applovin.impl.sdk.n nVar) {
        if (str2 == null) {
            throw new IllegalArgumentException("No SDK key specified");
        }
        if (str2.length() < 80) {
            throw new IllegalArgumentException("SDK key is too short");
        }
        if (TextUtils.isEmpty(str) || a.NONE == aVar) {
            return str;
        }
        byte[] bArrA = a.V2 == aVar ? a(str, j, true, str2, nVar) : a(str, j, str2, nVar);
        if (bArrA != null) {
            return new String(bArrA);
        }
        return null;
    }

    private static String a(byte[] bArr, com.applovin.impl.sdk.n nVar) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(AndroidStaticDeviceInfoDataSource.ALGORITHM_SHA1);
            messageDigest.update(bArr);
            return StringUtils.toHexString(messageDigest.digest());
        } catch (NoSuchAlgorithmException e2) {
            nVar.Cs().d("AppLovinSdk", "SHA1", e2);
            throw new RuntimeException("SHA-1 algorithm not found", e2);
        }
    }

    @Nullable
    public static String a(byte[] bArr, String str, com.applovin.impl.sdk.n nVar) {
        if (str == null) {
            throw new IllegalArgumentException("No SDK key specified");
        }
        if (str.length() < 80) {
            throw new IllegalArgumentException("SDK key is too short");
        }
        if (bArr == null) {
            return null;
        }
        if (bArr.length == 0) {
            return "";
        }
        a aVarN = N(bArr);
        return a.NONE == aVarN ? new String(bArr) : aVarN == a.V2 ? b(bArr, str, nVar) : b(new String(bArr), str, nVar);
    }

    private static byte[] a(String str, long j, String str2, com.applovin.impl.sdk.n nVar) {
        String str3 = C.UTF8_NAME;
        char c = ' ';
        try {
            String strSubstring = str2.substring(32);
            char c2 = 0;
            String strSubstring2 = str2.substring(0, 32);
            byte[] bytes = str.getBytes(C.UTF8_NAME);
            byte[] bArrA = a(strSubstring2, aVS, nVar);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byteArrayOutputStream.write(((byte) ((j >> 0) & 255)) ^ bArrA[0]);
            byteArrayOutputStream.write(((byte) ((j >> 8) & 255)) ^ bArrA[1]);
            byteArrayOutputStream.write(((byte) ((j >> 16) & 255)) ^ bArrA[2]);
            byteArrayOutputStream.write(((byte) ((j >> 24) & 255)) ^ bArrA[3]);
            byteArrayOutputStream.write(((byte) ((j >> 32) & 255)) ^ bArrA[4]);
            byteArrayOutputStream.write(((byte) ((j >> 40) & 255)) ^ bArrA[5]);
            byteArrayOutputStream.write(((byte) ((j >> 48) & 255)) ^ bArrA[6]);
            byteArrayOutputStream.write(((byte) ((j >> 56) & 255)) ^ bArrA[7]);
            int i = 0;
            while (i < bytes.length) {
                long j2 = j + ((long) i);
                long j3 = (j2 ^ (j2 >> 33)) * (-4417276706812531889L);
                long j4 = (j3 ^ (j3 >> 29)) * (-8796714831421723037L);
                long j5 = j4 ^ (j4 >> c);
                String str4 = str3;
                byteArrayOutputStream.write((byte) (((long) ((i + 0 >= bytes.length ? (byte) 0 : bytes[r15]) ^ bArrA[r15 % bArrA.length])) ^ ((j5 >> c2) & 255)));
                byteArrayOutputStream.write((byte) (((long) (bArrA[r3 % bArrA.length] ^ (i + 1 >= bytes.length ? (byte) 0 : bytes[r3]))) ^ ((j5 >> 8) & 255)));
                byteArrayOutputStream.write((byte) (((long) (bArrA[r3 % bArrA.length] ^ (i + 2 >= bytes.length ? (byte) 0 : bytes[r3]))) ^ ((j5 >> 16) & 255)));
                byteArrayOutputStream.write((byte) (((long) (bArrA[r3 % bArrA.length] ^ (i + 3 >= bytes.length ? (byte) 0 : bytes[r3]))) ^ ((j5 >> 24) & 255)));
                byteArrayOutputStream.write((byte) (((long) (bArrA[r3 % bArrA.length] ^ (i + 4 >= bytes.length ? (byte) 0 : bytes[r3]))) ^ ((j5 >> 32) & 255)));
                byteArrayOutputStream.write((byte) (((long) (bArrA[r3 % bArrA.length] ^ (i + 5 >= bytes.length ? (byte) 0 : bytes[r3]))) ^ ((j5 >> 40) & 255)));
                byteArrayOutputStream.write((byte) (((long) (bArrA[r3 % bArrA.length] ^ (i + 6 >= bytes.length ? (byte) 0 : bytes[r3]))) ^ ((j5 >> 48) & 255)));
                byteArrayOutputStream.write((byte) (((long) (bArrA[r3 % bArrA.length] ^ (i + 7 >= bytes.length ? (byte) 0 : bytes[r3]))) ^ ((j5 >> 56) & 255)));
                i += 8;
                str3 = str4;
                c = ' ';
                c2 = 0;
            }
            String str5 = str3;
            String strO = O(byteArrayOutputStream.toByteArray());
            return ("1:" + a(aVS, nVar) + CertificateUtil.DELIMITER + strSubstring + CertificateUtil.DELIMITER + strO).getBytes(str5);
        } catch (UnsupportedEncodingException e2) {
            nVar.Cs().d("AppLovinSdk", "encode", e2);
            return null;
        }
    }

    private static byte[] a(String str, long j, boolean z, String str2, com.applovin.impl.sdk.n nVar) {
        ByteBuffer byteBufferAllocate;
        try {
            byte[] bytes = str.getBytes(C.UTF8_NAME);
            int length = bytes.length;
            String strSubstring = str2.substring(32);
            String strSubstring2 = str2.substring(0, 32);
            byte[] bArr = aVT;
            byte[] bArrA = a(strSubstring2, bArr, nVar);
            long jT = u.T(bArrA) ^ j;
            byte[] bytes2 = String.format("2:%s:%s:", a(bArr, nVar), strSubstring).getBytes();
            ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(16);
            byteBufferAllocate2.order(ByteOrder.LITTLE_ENDIAN);
            byteBufferAllocate2.putLong(length);
            byteBufferAllocate2.putLong(jT);
            byteBufferAllocate2.flip();
            byte[] bArrA2 = a(u.R(bytes), j, bArrA);
            if (z) {
                byte[] bytes3 = O(byteBufferAllocate2.array()).getBytes();
                byte[] bytes4 = O(bArrA2).getBytes();
                byteBufferAllocate = ByteBuffer.allocate(bytes2.length + bytes3.length + bytes4.length);
                byteBufferAllocate.put(bytes2);
                byteBufferAllocate.put(bytes3);
                byteBufferAllocate.put(bytes4);
            } else {
                byteBufferAllocate = ByteBuffer.allocate(bytes2.length + byteBufferAllocate2.remaining() + bArrA2.length);
                byteBufferAllocate.put(bytes2);
                byteBufferAllocate.put(byteBufferAllocate2);
                byteBufferAllocate.put(bArrA2);
            }
            byteBufferAllocate.flip();
            return byteBufferAllocate.array();
        } catch (UnsupportedEncodingException e2) {
            nVar.Cs().d("AppLovinSdk", "encode2", e2);
            throw new RuntimeException("UTF-8 encoding not found", e2);
        } catch (IOException e3) {
            nVar.Cs().d("AppLovinSdk", "encode2", e3);
            return null;
        }
    }

    private static byte[] a(String str, byte[] bArr, com.applovin.impl.sdk.n nVar) throws UnsupportedEncodingException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(bArr);
            messageDigest.update(str.getBytes(C.UTF8_NAME));
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e2) {
            nVar.Cs().d("AppLovinSdk", "SHA256", e2);
            throw new RuntimeException("SHA-256 algorithm not found", e2);
        }
    }

    private static byte[] a(byte[] bArr, long j, byte[] bArr2) {
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        long j2 = j;
        for (int i = 0; i < bArr.length; i++) {
            if (i % 8 == 0) {
                long j3 = ((long) i) + j;
                long j4 = (j3 ^ (j3 >>> 33)) * (-4417276706812531889L);
                long j5 = (j4 ^ (j4 >>> 29)) * (-8796714831421723037L);
                j2 = j5 ^ (j5 >>> 32);
            }
            byte b = bArrCopyOf[i];
            bArrCopyOf[i] = (byte) (((long) b) ^ (((j2 >> (r4 * 8)) & 255) ^ ((long) bArr2[i % bArr2.length])));
        }
        return bArrCopyOf;
    }

    private static String b(String str, String str2, com.applovin.impl.sdk.n nVar) {
        String str3;
        String[] strArrSplit = str.split(CertificateUtil.DELIMITER);
        char c = 0;
        try {
            try {
                if (!"1".equals(strArrSplit[0]) || strArrSplit.length != 4) {
                    return null;
                }
                String str4 = strArrSplit[1];
                String str5 = strArrSplit[2];
                byte[] bArrDB = dB(strArrSplit[3]);
                if (!str2.endsWith(str5)) {
                    return null;
                }
                byte[] bArr = aVS;
                if (!a(bArr, nVar).equals(str4)) {
                    return null;
                }
                char c2 = ' ';
                byte[] bArrA = a(str2.substring(0, 32), bArr, nVar);
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArrDB);
                char c3 = '\b';
                try {
                    long j = (((long) ((byteArrayInputStream.read() ^ bArrA[1]) & 255)) << 8) | (((long) ((byteArrayInputStream.read() ^ bArrA[0]) & 255)) << 0) | (((long) ((byteArrayInputStream.read() ^ bArrA[2]) & 255)) << 16) | (((long) ((byteArrayInputStream.read() ^ bArrA[3]) & 255)) << 24) | (((long) ((byteArrayInputStream.read() ^ bArrA[4]) & 255)) << 32) | (((long) ((byteArrayInputStream.read() ^ bArrA[5]) & 255)) << 40) | (((long) ((byteArrayInputStream.read() ^ bArrA[6]) & 255)) << 48) | (((long) ((byteArrayInputStream.read() ^ bArrA[7]) & 255)) << 56);
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    byte[] bArr2 = new byte[8];
                    int i = byteArrayInputStream.read(bArr2);
                    int i2 = 0;
                    while (i >= 0) {
                        ByteArrayInputStream byteArrayInputStream2 = byteArrayInputStream;
                        long j2 = ((long) i2) + j;
                        long j3 = (j2 ^ (j2 >> 33)) * (-4417276706812531889L);
                        long j4 = (j3 ^ (j3 >> 29)) * (-8796714831421723037L);
                        long j5 = j4 ^ (j4 >> c2);
                        byteArrayOutputStream.write((byte) (((long) (bArr2[c] ^ bArrA[(i2 + 0) % bArrA.length])) ^ ((j5 >> c) & 255)));
                        byteArrayOutputStream.write((byte) (((long) (bArrA[(i2 + 1) % bArrA.length] ^ bArr2[1])) ^ ((j5 >> c3) & 255)));
                        byteArrayOutputStream.write((byte) (((long) (bArrA[(i2 + 2) % bArrA.length] ^ bArr2[2])) ^ ((j5 >> 16) & 255)));
                        byteArrayOutputStream.write((byte) (((long) (bArr2[3] ^ bArrA[(i2 + 3) % bArrA.length])) ^ ((j5 >> 24) & 255)));
                        byteArrayOutputStream.write((byte) (((long) (bArrA[(i2 + 4) % bArrA.length] ^ bArr2[4])) ^ ((j5 >> 32) & 255)));
                        byteArrayOutputStream.write((byte) (((long) (bArrA[(i2 + 5) % bArrA.length] ^ bArr2[5])) ^ ((j5 >> 40) & 255)));
                        byteArrayOutputStream.write((byte) (((long) (bArrA[(i2 + 6) % bArrA.length] ^ bArr2[6])) ^ ((j5 >> 48) & 255)));
                        byteArrayOutputStream.write((byte) (((long) (bArr2[7] ^ bArrA[(i2 + 7) % bArrA.length])) ^ ((j5 >> 56) & 255)));
                        i2 += 8;
                        byteArrayInputStream = byteArrayInputStream2;
                        i = byteArrayInputStream2.read(bArr2);
                        j = j;
                        c3 = '\b';
                        c = 0;
                        c2 = ' ';
                    }
                    return new String(byteArrayOutputStream.toByteArray(), C.UTF8_NAME).trim();
                } catch (IOException e2) {
                    e = e2;
                    str3 = null;
                    com.applovin.impl.sdk.x.f("AppLovinSdk", "Failed to read bytes", e);
                    nVar.Cs().d("AppLovinSdk", "decode", e);
                    return str3;
                }
            } catch (UnsupportedEncodingException e3) {
                nVar.Cs().d("AppLovinSdk", "decode", e3);
                throw new RuntimeException("UTF-8 encoding not found", e3);
            }
        } catch (IOException e4) {
            e = e4;
            str3 = null;
        }
    }

    @Nullable
    private static String b(byte[] bArr, String str, com.applovin.impl.sdk.n nVar) {
        try {
            int iC = c(bArr, str, nVar);
            if (iC == 0) {
                return null;
            }
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, iC, bArr.length);
            if (bArrCopyOfRange.length < 16) {
                return null;
            }
            long jN = u.n(bArrCopyOfRange, 8);
            byte[] bArrA = a(str.substring(0, 32), aVT, nVar);
            return new String(u.S(a(Arrays.copyOfRange(bArrCopyOfRange, 16, bArrCopyOfRange.length), jN ^ u.T(bArrA), bArrA)), C.UTF8_NAME);
        } catch (UnsupportedEncodingException e2) {
            nVar.Cs().d("AppLovinSdk", "decode2", e2);
            throw new RuntimeException("UTF-8 encoding not found", e2);
        } catch (IOException e3) {
            com.applovin.impl.sdk.x.f("AppLovinSdk", "Failed to ungzip decode", e3);
            nVar.Cs().d("AppLovinSdk", "decode2", e3);
            return null;
        }
    }

    public static byte[] b(String str, long j, a aVar, String str2, com.applovin.impl.sdk.n nVar) {
        if (str2 == null) {
            throw new IllegalArgumentException("No SDK key specified");
        }
        if (str2.length() < 80) {
            throw new IllegalArgumentException("SDK key is too short");
        }
        if (!TextUtils.isEmpty(str) && a.NONE != aVar) {
            return a.V2 == aVar ? a(str, j, false, str2, nVar) : a(str, j, str2, nVar);
        }
        return str.getBytes();
    }

    private static int c(byte[] bArr, String str, com.applovin.impl.sdk.n nVar) {
        int iA;
        int i;
        if (bArr == null || bArr.length == 0 || TextUtils.isEmpty(str) || (iA = a(bArr, (byte) 58)) < 0) {
            return 0;
        }
        byte[] bytes = a(aVT, nVar).getBytes();
        int i2 = iA + 1;
        int length = bytes.length + i2;
        if (bArr.length <= length || bArr[length] != 58 || bArr.length <= (i = length + 54 + 1) || bArr[i] != 58 || !Arrays.equals(Arrays.copyOfRange(bArr, i2, bytes.length + i2), bytes)) {
            return 0;
        }
        int i3 = i + 1;
        if (i3 + 8 > bArr.length) {
            return 0;
        }
        return i3;
    }

    private static byte[] dB(String str) {
        return Base64.decode(dC(str), 0);
    }

    private static String dC(String str) {
        return str.replace('-', '+').replace('_', '/').replace('*', b4.R);
    }
}
