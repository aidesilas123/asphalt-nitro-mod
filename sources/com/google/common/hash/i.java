package com.google.common.hash;

import com.google.common.base.Preconditions;

/* JADX INFO: compiled from: FarmHashFingerprint64.java */
/* JADX INFO: loaded from: classes3.dex */
final class i extends e {
    static final l a = new i();

    i() {
    }

    static long b(byte[] bArr, int i, int i2) {
        return i2 <= 32 ? i2 <= 16 ? i(bArr, i, i2) : k(bArr, i, i2) : i2 <= 64 ? m(bArr, i, i2) : n(bArr, i, i2);
    }

    private static long i(byte[] bArr, int i, int i2) {
        if (i2 >= 8) {
            long j = ((long) (i2 * 2)) - 7286425919675154353L;
            long jB = LittleEndianByteArray.b(bArr, i) - 7286425919675154353L;
            long jB2 = LittleEndianByteArray.b(bArr, (i + i2) - 8);
            return j((Long.rotateRight(jB2, 37) * j) + jB, (Long.rotateRight(jB, 25) + jB2) * j, j);
        }
        if (i2 >= 4) {
            return j(((long) i2) + ((((long) LittleEndianByteArray.a(bArr, i)) & 4294967295L) << 3), ((long) LittleEndianByteArray.a(bArr, (i + i2) - 4)) & 4294967295L, ((long) (i2 * 2)) - 7286425919675154353L);
        }
        if (i2 <= 0) {
            return -7286425919675154353L;
        }
        return p((((long) ((bArr[i] & 255) + ((bArr[(i2 >> 1) + i] & 255) << 8))) * (-7286425919675154353L)) ^ (((long) (i2 + ((bArr[i + (i2 - 1)] & 255) << 2))) * (-4348849565147123417L))) * (-7286425919675154353L);
    }

    private static long j(long j, long j2, long j3) {
        long j4 = (j ^ j2) * j3;
        long j5 = ((j4 ^ (j4 >>> 47)) ^ j2) * j3;
        return (j5 ^ (j5 >>> 47)) * j3;
    }

    private static long k(byte[] bArr, int i, int i2) {
        long j = ((long) (i2 * 2)) - 7286425919675154353L;
        long jB = LittleEndianByteArray.b(bArr, i) * (-5435081209227447693L);
        long jB2 = LittleEndianByteArray.b(bArr, i + 8);
        int i3 = i + i2;
        long jB3 = LittleEndianByteArray.b(bArr, i3 - 8) * j;
        return j((LittleEndianByteArray.b(bArr, i3 - 16) * (-7286425919675154353L)) + Long.rotateRight(jB + jB2, 43) + Long.rotateRight(jB3, 30), jB + Long.rotateRight(jB2 - 7286425919675154353L, 18) + jB3, j);
    }

    private static long m(byte[] bArr, int i, int i2) {
        long j = ((long) (i2 * 2)) - 7286425919675154353L;
        long jB = LittleEndianByteArray.b(bArr, i) * (-7286425919675154353L);
        long jB2 = LittleEndianByteArray.b(bArr, i + 8);
        int i3 = i + i2;
        long jB3 = LittleEndianByteArray.b(bArr, i3 - 8) * j;
        long jRotateRight = Long.rotateRight(jB + jB2, 43) + Long.rotateRight(jB3, 30) + (LittleEndianByteArray.b(bArr, i3 - 16) * (-7286425919675154353L));
        long j2 = j(jRotateRight, jB3 + Long.rotateRight(jB2 - 7286425919675154353L, 18) + jB, j);
        long jB4 = LittleEndianByteArray.b(bArr, i + 16) * j;
        long jB5 = LittleEndianByteArray.b(bArr, i + 24);
        long jB6 = (jRotateRight + LittleEndianByteArray.b(bArr, i3 - 32)) * j;
        return j(((j2 + LittleEndianByteArray.b(bArr, i3 - 24)) * j) + Long.rotateRight(jB4 + jB5, 43) + Long.rotateRight(jB6, 30), jB4 + Long.rotateRight(jB5 + jB, 18) + jB6, j);
    }

    private static long n(byte[] bArr, int i, int i2) {
        long j = 81;
        long j2 = (j * (-5435081209227447693L)) + 113;
        long jP = p((j2 * (-7286425919675154353L)) + 113) * (-7286425919675154353L);
        long[] jArr = new long[2];
        long[] jArr2 = new long[2];
        long jB = (j * (-7286425919675154353L)) + LittleEndianByteArray.b(bArr, i);
        int i3 = i2 - 1;
        int i4 = i + ((i3 / 64) * 64);
        int i5 = i3 & 63;
        int i6 = (i4 + i5) - 63;
        int i7 = i;
        while (true) {
            long jRotateRight = Long.rotateRight(jB + j2 + jArr[0] + LittleEndianByteArray.b(bArr, i7 + 8), 37) * (-5435081209227447693L);
            long jRotateRight2 = Long.rotateRight(j2 + jArr[1] + LittleEndianByteArray.b(bArr, i7 + 48), 42) * (-5435081209227447693L);
            long j3 = jRotateRight ^ jArr2[1];
            long jB2 = jRotateRight2 + jArr[0] + LittleEndianByteArray.b(bArr, i7 + 40);
            long jRotateRight3 = Long.rotateRight(jP + jArr2[0], 33) * (-5435081209227447693L);
            q(bArr, i7, jArr[1] * (-5435081209227447693L), j3 + jArr2[0], jArr);
            q(bArr, i7 + 32, jRotateRight3 + jArr2[1], jB2 + LittleEndianByteArray.b(bArr, i7 + 16), jArr2);
            int i8 = i7 + 64;
            if (i8 == i4) {
                long j4 = (-5435081209227447693L) + ((j3 & 255) << 1);
                jArr2[0] = jArr2[0] + ((long) i5);
                jArr[0] = jArr[0] + jArr2[0];
                jArr2[0] = jArr2[0] + jArr[0];
                long jRotateRight4 = Long.rotateRight(jRotateRight3 + jB2 + jArr[0] + LittleEndianByteArray.b(bArr, i6 + 8), 37) * j4;
                long jRotateRight5 = Long.rotateRight(jB2 + jArr[1] + LittleEndianByteArray.b(bArr, i6 + 48), 42) * j4;
                long j5 = jRotateRight4 ^ (jArr2[1] * 9);
                long jB3 = jRotateRight5 + (jArr[0] * 9) + LittleEndianByteArray.b(bArr, i6 + 40);
                long jRotateRight6 = Long.rotateRight(j3 + jArr2[0], 33) * j4;
                q(bArr, i6, jArr[1] * j4, j5 + jArr2[0], jArr);
                q(bArr, i6 + 32, jRotateRight6 + jArr2[1], jB3 + LittleEndianByteArray.b(bArr, i6 + 16), jArr2);
                return j(j(jArr[0], jArr2[0], j4) + (p(jB3) * (-4348849565147123417L)) + j5, j(jArr[1], jArr2[1], j4) + jRotateRight6, j4);
            }
            i7 = i8;
            jP = j3;
            j2 = jB2;
            jB = jRotateRight3;
        }
    }

    private static long p(long j) {
        return j ^ (j >>> 47);
    }

    private static void q(byte[] bArr, int i, long j, long j2, long[] jArr) {
        long jB = LittleEndianByteArray.b(bArr, i);
        long jB2 = LittleEndianByteArray.b(bArr, i + 8);
        long jB3 = LittleEndianByteArray.b(bArr, i + 16);
        long jB4 = LittleEndianByteArray.b(bArr, i + 24);
        long j3 = j + jB;
        long j4 = jB2 + j3 + jB3;
        long jRotateRight = Long.rotateRight(j2 + j3 + jB4, 21) + Long.rotateRight(j4, 44);
        jArr[0] = j4 + jB4;
        jArr[1] = jRotateRight + j3;
    }

    @Override // com.google.common.hash.l
    public int c() {
        return 64;
    }

    @Override // com.google.common.hash.c, com.google.common.hash.l
    public HashCode h(byte[] bArr, int i, int i2) {
        Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
        return HashCode.fromLong(b(bArr, i, i2));
    }

    public String toString() {
        return "Hashing.farmHashFingerprint64()";
    }
}
