package com.fyber.inneractive.sdk.protobuf;

import com.applovin.exoplayer2.common.base.Ascii;
import com.fyber.inneractive.sdk.protobuf.p1;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public final class q1 {
    public static final b a;

    public static class a {
        public static void a(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) throws z {
            if (d(b2) || (((b << Ascii.FS) + (b2 + 112)) >> 30) != 0 || d(b3) || d(b4)) {
                throw z.c();
            }
            int i2 = ((b & 7) << 18) | ((b2 & 63) << 12) | ((b3 & 63) << 6) | (b4 & 63);
            cArr[i] = (char) ((i2 >>> 10) + 55232);
            cArr[i + 1] = (char) ((i2 & 1023) + 56320);
        }

        public static void a(byte b, byte b2, byte b3, char[] cArr, int i) throws z {
            if (d(b2) || ((b == -32 && b2 < -96) || ((b == -19 && b2 >= -96) || d(b3)))) {
                throw z.c();
            }
            cArr[i] = (char) (((b & Ascii.SI) << 12) | ((b2 & 63) << 6) | (b3 & 63));
        }

        public static void a(byte b, byte b2, char[] cArr, int i) throws z {
            if (b < -62 || d(b2)) {
                throw z.c();
            }
            cArr[i] = (char) (((b & Ascii.US) << 6) | (b2 & 63));
        }

        public static boolean a(byte b) {
            return b >= 0;
        }

        public static boolean b(byte b) {
            return b < -32;
        }

        public static boolean c(byte b) {
            return b < -16;
        }

        public static boolean d(byte b) {
            return b > -65;
        }
    }

    public static abstract class b {
        public abstract int a(int i, byte[] bArr, int i2, int i3);

        public abstract int a(CharSequence charSequence, byte[] bArr, int i, int i2);

        public final String a(ByteBuffer byteBuffer, int i, int i2) throws z {
            if ((i | i2 | ((byteBuffer.limit() - i) - i2)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i), Integer.valueOf(i2)));
            }
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                byte b = byteBuffer.get(i);
                if (!a.a(b)) {
                    break;
                }
                i++;
                cArr[i4] = (char) b;
                i4++;
            }
            int i5 = i4;
            while (i < i3) {
                int i6 = i + 1;
                byte b2 = byteBuffer.get(i);
                if (a.a(b2)) {
                    int i7 = i5 + 1;
                    cArr[i5] = (char) b2;
                    i = i6;
                    while (true) {
                        i5 = i7;
                        if (i < i3) {
                            byte b3 = byteBuffer.get(i);
                            if (!a.a(b3)) {
                                break;
                            }
                            i++;
                            i7 = i5 + 1;
                            cArr[i5] = (char) b3;
                        }
                    }
                } else if (a.b(b2)) {
                    if (i6 >= i3) {
                        throw z.c();
                    }
                    a.a(b2, byteBuffer.get(i6), cArr, i5);
                    i = i6 + 1;
                    i5++;
                } else if (a.c(b2)) {
                    if (i6 >= i3 - 1) {
                        throw z.c();
                    }
                    int i8 = i6 + 1;
                    a.a(b2, byteBuffer.get(i6), byteBuffer.get(i8), cArr, i5);
                    i = i8 + 1;
                    i5++;
                } else {
                    if (i6 >= i3 - 2) {
                        throw z.c();
                    }
                    int i9 = i6 + 1;
                    byte b4 = byteBuffer.get(i6);
                    int i10 = i9 + 1;
                    a.a(b2, b4, byteBuffer.get(i9), byteBuffer.get(i10), cArr, i5);
                    i5 = i5 + 1 + 1;
                    i = i10 + 1;
                }
            }
            return new String(cArr, 0, i5);
        }

        public abstract String a(byte[] bArr, int i, int i2) throws z;

        public abstract String b(ByteBuffer byteBuffer, int i, int i2) throws z;
    }

    public static final class c extends b {
        /* JADX WARN: Code restructure failed: missing block: B:10:0x001c, code lost:
        
            if (r13[r14] > (-65)) goto L13;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x0047, code lost:
        
            if (r13[r14] > (-65)) goto L29;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0082, code lost:
        
            if (r13[r14] > (-65)) goto L50;
         */
        @Override // com.fyber.inneractive.sdk.protobuf.q1.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public int a(int r12, byte[] r13, int r14, int r15) {
            /*
                Method dump skipped, instruction units count: 242
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.protobuf.q1.c.a(int, byte[], int, int):int");
        }

        @Override // com.fyber.inneractive.sdk.protobuf.q1.b
        public int a(CharSequence charSequence, byte[] bArr, int i, int i2) {
            int i3;
            int i4;
            int i5;
            char cCharAt;
            int length = charSequence.length();
            int i6 = i2 + i;
            int i7 = 0;
            while (i7 < length && (i5 = i7 + i) < i6 && (cCharAt = charSequence.charAt(i7)) < 128) {
                bArr[i5] = (byte) cCharAt;
                i7++;
            }
            if (i7 == length) {
                return i + length;
            }
            int i8 = i + i7;
            while (i7 < length) {
                char cCharAt2 = charSequence.charAt(i7);
                if (cCharAt2 >= 128 || i8 >= i6) {
                    if (cCharAt2 < 2048 && i8 <= i6 - 2) {
                        int i9 = i8 + 1;
                        bArr[i8] = (byte) ((cCharAt2 >>> 6) | 960);
                        i8 = i9 + 1;
                        bArr[i9] = (byte) ((cCharAt2 & '?') | 128);
                    } else {
                        if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || i8 > i6 - 3) {
                            if (i8 > i6 - 4) {
                                if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((i4 = i7 + 1) == charSequence.length() || !Character.isSurrogatePair(cCharAt2, charSequence.charAt(i4)))) {
                                    throw new d(i7, length);
                                }
                                throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt2 + " at index " + i8);
                            }
                            int i10 = i7 + 1;
                            if (i10 != charSequence.length()) {
                                char cCharAt3 = charSequence.charAt(i10);
                                if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                    int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                    int i11 = i8 + 1;
                                    bArr[i8] = (byte) ((codePoint >>> 18) | PsExtractor.VIDEO_STREAM_MASK);
                                    int i12 = i11 + 1;
                                    bArr[i11] = (byte) (((codePoint >>> 12) & 63) | 128);
                                    int i13 = i12 + 1;
                                    bArr[i12] = (byte) (((codePoint >>> 6) & 63) | 128);
                                    i8 = i13 + 1;
                                    bArr[i13] = (byte) ((codePoint & 63) | 128);
                                    i7 = i10;
                                } else {
                                    i7 = i10;
                                }
                            }
                            throw new d(i7 - 1, length);
                        }
                        int i14 = i8 + 1;
                        bArr[i8] = (byte) ((cCharAt2 >>> '\f') | 480);
                        int i15 = i14 + 1;
                        bArr[i14] = (byte) (((cCharAt2 >>> 6) & 63) | 128);
                        i3 = i15 + 1;
                        bArr[i15] = (byte) ((cCharAt2 & '?') | 128);
                    }
                    i7++;
                } else {
                    i3 = i8 + 1;
                    bArr[i8] = (byte) cCharAt2;
                }
                i8 = i3;
                i7++;
            }
            return i8;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.q1.b
        public String a(byte[] bArr, int i, int i2) throws z {
            if ((i | i2 | ((bArr.length - i) - i2)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
            }
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                byte b = bArr[i];
                if (!a.a(b)) {
                    break;
                }
                i++;
                cArr[i4] = (char) b;
                i4++;
            }
            int i5 = i4;
            while (i < i3) {
                int i6 = i + 1;
                byte b2 = bArr[i];
                if (a.a(b2)) {
                    int i7 = i5 + 1;
                    cArr[i5] = (char) b2;
                    i = i6;
                    while (true) {
                        i5 = i7;
                        if (i < i3) {
                            byte b3 = bArr[i];
                            if (!a.a(b3)) {
                                break;
                            }
                            i++;
                            i7 = i5 + 1;
                            cArr[i5] = (char) b3;
                        }
                    }
                } else if (a.b(b2)) {
                    if (i6 >= i3) {
                        throw z.c();
                    }
                    a.a(b2, bArr[i6], cArr, i5);
                    i = i6 + 1;
                    i5++;
                } else if (a.c(b2)) {
                    if (i6 >= i3 - 1) {
                        throw z.c();
                    }
                    int i8 = i6 + 1;
                    a.a(b2, bArr[i6], bArr[i8], cArr, i5);
                    i = i8 + 1;
                    i5++;
                } else {
                    if (i6 >= i3 - 2) {
                        throw z.c();
                    }
                    int i9 = i6 + 1;
                    byte b4 = bArr[i6];
                    int i10 = i9 + 1;
                    a.a(b2, b4, bArr[i9], bArr[i10], cArr, i5);
                    i5 = i5 + 1 + 1;
                    i = i10 + 1;
                }
            }
            return new String(cArr, 0, i5);
        }

        @Override // com.fyber.inneractive.sdk.protobuf.q1.b
        public String b(ByteBuffer byteBuffer, int i, int i2) throws z {
            return a(byteBuffer, i, i2);
        }
    }

    public static class d extends IllegalArgumentException {
        public d(int i, int i2) {
            super("Unpaired surrogate at index " + i + " of " + i2);
        }
    }

    public static final class e extends b {
        public static int a(byte[] bArr, int i, long j, int i2) {
            if (i2 == 0) {
                return q1.a(i);
            }
            if (i2 == 1) {
                return q1.a(i, p1.a(bArr, j));
            }
            if (i2 == 2) {
                return q1.a(i, p1.a(bArr, j), p1.a(bArr, j + 1));
            }
            throw new AssertionError();
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0035, code lost:
        
            if (com.fyber.inneractive.sdk.protobuf.p1.a(r23, r8) > (-65)) goto L16;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0066, code lost:
        
            if (com.fyber.inneractive.sdk.protobuf.p1.a(r23, r8) > (-65)) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x00aa, code lost:
        
            if (com.fyber.inneractive.sdk.protobuf.p1.a(r23, r8) > (-65)) goto L53;
         */
        @Override // com.fyber.inneractive.sdk.protobuf.q1.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public int a(int r22, byte[] r23, int r24, int r25) {
            /*
                Method dump skipped, instruction units count: 369
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.protobuf.q1.e.a(int, byte[], int, int):int");
        }

        @Override // com.fyber.inneractive.sdk.protobuf.q1.b
        public int a(CharSequence charSequence, byte[] bArr, int i, int i2) {
            char c;
            long j;
            long j2;
            long j3;
            int i3;
            char cCharAt;
            long j4 = i;
            long j5 = ((long) i2) + j4;
            int length = charSequence.length();
            if (length > i2 || bArr.length - i2 < i) {
                throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(length - 1) + " at index " + (i + i2));
            }
            int i4 = 0;
            while (true) {
                c = 128;
                j = 1;
                if (i4 >= length || (cCharAt = charSequence.charAt(i4)) >= 128) {
                    break;
                }
                p1.a(bArr, j4, (byte) cCharAt);
                i4++;
                j4 = 1 + j4;
            }
            if (i4 == length) {
                return (int) j4;
            }
            while (i4 < length) {
                char cCharAt2 = charSequence.charAt(i4);
                if (cCharAt2 >= c || j4 >= j5) {
                    if (cCharAt2 < 2048 && j4 <= j5 - 2) {
                        long j6 = j4 + j;
                        p1.a(bArr, j4, (byte) ((cCharAt2 >>> 6) | 960));
                        p1.a(bArr, j6, (byte) ((cCharAt2 & '?') | 128));
                        j2 = j6 + j;
                        j3 = j;
                    } else {
                        if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || j4 > j5 - 3) {
                            if (j4 > j5 - 4) {
                                if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((i3 = i4 + 1) == length || !Character.isSurrogatePair(cCharAt2, charSequence.charAt(i3)))) {
                                    throw new d(i4, length);
                                }
                                throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt2 + " at index " + j4);
                            }
                            int i5 = i4 + 1;
                            if (i5 != length) {
                                char cCharAt3 = charSequence.charAt(i5);
                                if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                    int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                    long j7 = j4 + 1;
                                    p1.a(bArr, j4, (byte) ((codePoint >>> 18) | PsExtractor.VIDEO_STREAM_MASK));
                                    long j8 = j7 + 1;
                                    p1.a(bArr, j7, (byte) (((codePoint >>> 12) & 63) | 128));
                                    long j9 = j8 + 1;
                                    p1.a(bArr, j8, (byte) (((codePoint >>> 6) & 63) | 128));
                                    j3 = 1;
                                    j2 = j9 + 1;
                                    p1.a(bArr, j9, (byte) ((codePoint & 63) | 128));
                                    i4 = i5;
                                } else {
                                    i4 = i5;
                                }
                            }
                            throw new d(i4 - 1, length);
                        }
                        long j10 = j4 + j;
                        p1.a(bArr, j4, (byte) ((cCharAt2 >>> '\f') | 480));
                        long j11 = j10 + j;
                        p1.a(bArr, j10, (byte) (((cCharAt2 >>> 6) & 63) | 128));
                        p1.a(bArr, j11, (byte) ((cCharAt2 & '?') | 128));
                        j2 = j11 + 1;
                        j3 = 1;
                    }
                    i4++;
                    c = 128;
                    long j12 = j3;
                    j4 = j2;
                    j = j12;
                } else {
                    long j13 = j4 + j;
                    p1.a(bArr, j4, (byte) cCharAt2);
                    j3 = j;
                    j2 = j13;
                }
                i4++;
                c = 128;
                long j122 = j3;
                j4 = j2;
                j = j122;
            }
            return (int) j4;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.q1.b
        public String a(byte[] bArr, int i, int i2) throws z {
            if ((i | i2 | ((bArr.length - i) - i2)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
            }
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                byte bA = p1.a(bArr, i);
                if (!a.a(bA)) {
                    break;
                }
                i++;
                cArr[i4] = (char) bA;
                i4++;
            }
            int i5 = i4;
            while (i < i3) {
                int i6 = i + 1;
                byte bA2 = p1.a(bArr, i);
                if (a.a(bA2)) {
                    int i7 = i5 + 1;
                    cArr[i5] = (char) bA2;
                    i = i6;
                    while (true) {
                        i5 = i7;
                        if (i < i3) {
                            byte bA3 = p1.a(bArr, i);
                            if (!a.a(bA3)) {
                                break;
                            }
                            i++;
                            i7 = i5 + 1;
                            cArr[i5] = (char) bA3;
                        }
                    }
                } else if (a.b(bA2)) {
                    if (i6 >= i3) {
                        throw z.c();
                    }
                    a.a(bA2, p1.a(bArr, i6), cArr, i5);
                    i = i6 + 1;
                    i5++;
                } else if (a.c(bA2)) {
                    if (i6 >= i3 - 1) {
                        throw z.c();
                    }
                    int i8 = i6 + 1;
                    a.a(bA2, p1.a(bArr, i6), p1.a(bArr, i8), cArr, i5);
                    i = i8 + 1;
                    i5++;
                } else {
                    if (i6 >= i3 - 2) {
                        throw z.c();
                    }
                    int i9 = i6 + 1;
                    byte bA4 = p1.a(bArr, i6);
                    int i10 = i9 + 1;
                    a.a(bA2, bA4, p1.a(bArr, i9), p1.a(bArr, i10), cArr, i5);
                    i5 = i5 + 1 + 1;
                    i = i10 + 1;
                }
            }
            return new String(cArr, 0, i5);
        }

        @Override // com.fyber.inneractive.sdk.protobuf.q1.b
        public String b(ByteBuffer byteBuffer, int i, int i2) throws z {
            if ((i | i2 | ((byteBuffer.limit() - i) - i2)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i), Integer.valueOf(i2)));
            }
            long jA = p1.a(byteBuffer) + ((long) i);
            long j = ((long) i2) + jA;
            char[] cArr = new char[i2];
            int i3 = 0;
            while (jA < j) {
                byte bA = p1.f2697e.a(jA);
                if (!a.a(bA)) {
                    break;
                }
                jA++;
                cArr[i3] = (char) bA;
                i3++;
            }
            int i4 = i3;
            while (jA < j) {
                long j2 = jA + 1;
                p1.d dVar = p1.f2697e;
                byte bA2 = dVar.a(jA);
                if (a.a(bA2)) {
                    cArr[i4] = (char) bA2;
                    i4++;
                    jA = j2;
                    while (jA < j) {
                        byte bA3 = p1.f2697e.a(jA);
                        if (!a.a(bA3)) {
                            break;
                        }
                        jA++;
                        cArr[i4] = (char) bA3;
                        i4++;
                    }
                } else if (a.b(bA2)) {
                    if (j2 >= j) {
                        throw z.c();
                    }
                    a.a(bA2, dVar.a(j2), cArr, i4);
                    i4++;
                    jA = j2 + 1;
                } else if (a.c(bA2)) {
                    if (j2 >= j - 1) {
                        throw z.c();
                    }
                    long j3 = j2 + 1;
                    a.a(bA2, dVar.a(j2), dVar.a(j3), cArr, i4);
                    i4++;
                    jA = j3 + 1;
                } else {
                    if (j2 >= j - 2) {
                        throw z.c();
                    }
                    long j4 = j2 + 1;
                    long j5 = j4 + 1;
                    a.a(bA2, dVar.a(j2), dVar.a(j4), dVar.a(j5), cArr, i4);
                    i4 = i4 + 1 + 1;
                    jA = j5 + 1;
                }
            }
            return new String(cArr, 0, i4);
        }
    }

    static {
        a = (!(p1.f2699g && p1.f2698f) || com.fyber.inneractive.sdk.protobuf.d.a()) ? new c() : new e();
    }

    public static int a(int i) {
        if (i > -12) {
            return -1;
        }
        return i;
    }

    public static int a(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    public static int a(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    public static int a(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        int i2 = 0;
        while (i2 < length && charSequence.charAt(i2) < 128) {
            i2++;
        }
        int i3 = length;
        while (true) {
            if (i2 >= length) {
                break;
            }
            char cCharAt = charSequence.charAt(i2);
            if (cCharAt < 2048) {
                i3 += (127 - cCharAt) >>> 31;
                i2++;
            } else {
                int length2 = charSequence.length();
                while (i2 < length2) {
                    char cCharAt2 = charSequence.charAt(i2);
                    if (cCharAt2 < 2048) {
                        i += (127 - cCharAt2) >>> 31;
                    } else {
                        i += 2;
                        if (55296 <= cCharAt2 && cCharAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, i2) < 65536) {
                                throw new d(i2, length2);
                            }
                            i2++;
                        }
                    }
                    i2++;
                }
                i3 += i;
            }
        }
        if (i3 >= length) {
            return i3;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (((long) i3) + 4294967296L));
    }

    public static int a(byte[] bArr, int i, int i2) {
        byte b2 = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 == 0) {
            return a(b2);
        }
        if (i3 == 1) {
            return a(b2, bArr[i]);
        }
        if (i3 == 2) {
            return a(b2, bArr[i], bArr[i + 1]);
        }
        throw new AssertionError();
    }

    public static boolean a(byte[] bArr) {
        return a.a(0, bArr, 0, bArr.length) == 0;
    }

    public static boolean b(byte[] bArr, int i, int i2) {
        return a.a(0, bArr, i, i2) == 0;
    }
}
