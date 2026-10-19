package com.google.common.hash;

import com.google.common.base.Preconditions;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import java.security.Key;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.zip.Adler32;
import java.util.zip.CRC32;
import java.util.zip.Checksum;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes3.dex */
public final class Hashing {
    static final int a = (int) System.currentTimeMillis();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    static abstract class ChecksumType implements n<Checksum> {
        public static final ChecksumType a = new a("CRC_32", 0, "Hashing.crc32()");
        public static final ChecksumType b = new b("ADLER_32", 1, "Hashing.adler32()");
        private static final /* synthetic */ ChecksumType[] c = e();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final l f3880d;

        enum a extends ChecksumType {
            a(String str, int i, String str2) {
                super(str, i, str2);
            }

            @Override // com.google.common.base.m
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public Checksum get() {
                return new CRC32();
            }
        }

        enum b extends ChecksumType {
            b(String str, int i, String str2) {
                super(str, i, str2);
            }

            @Override // com.google.common.base.m
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public Checksum get() {
                return new Adler32();
            }
        }

        private ChecksumType(String str, int i, String str2) {
            this.f3880d = new com.google.common.hash.g(this, 32, str2);
        }

        private static /* synthetic */ ChecksumType[] e() {
            return new ChecksumType[]{a, b};
        }

        public static ChecksumType valueOf(String str) {
            return (ChecksumType) Enum.valueOf(ChecksumType.class, str);
        }

        public static ChecksumType[] values() {
            return (ChecksumType[]) c.clone();
        }
    }

    private static final class b extends com.google.common.hash.b {
        private b(l... lVarArr) {
            super(lVarArr);
            for (l lVar : lVarArr) {
                Preconditions.checkArgument(lVar.c() % 8 == 0, "the number of bits (%s) in hashFunction (%s) must be divisible by 8", lVar.c(), (Object) lVar);
            }
        }

        @Override // com.google.common.hash.l
        public int c() {
            int iC = 0;
            for (l lVar : this.a) {
                iC += lVar.c();
            }
            return iC;
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                return Arrays.equals(this.a, ((b) obj).a);
            }
            return false;
        }

        public int hashCode() {
            return Arrays.hashCode(this.a);
        }

        @Override // com.google.common.hash.b
        HashCode i(m[] mVarArr) {
            byte[] bArr = new byte[c() / 8];
            int iM = 0;
            for (m mVar : mVarArr) {
                HashCode hashCodeG = mVar.g();
                iM += hashCodeG.m(bArr, iM, hashCodeG.f() / 8);
            }
            return HashCode.i(bArr);
        }
    }

    private static final class c {
        private long a;

        public c(long j) {
            this.a = j;
        }

        public double a() {
            long j = (this.a * 2862933555777941757L) + 1;
            this.a = j;
            return ((double) (((int) (j >>> 33)) + 1)) / 2.147483648E9d;
        }
    }

    private static class d {
        static final l a = new s(SameMD5.TAG, "Hashing.md5()");
    }

    private static class e {
        static final l a = new s(AndroidStaticDeviceInfoDataSource.ALGORITHM_SHA1, "Hashing.sha1()");
    }

    private static class f {
        static final l a = new s("SHA-256", "Hashing.sha256()");
    }

    private static class g {
        static final l a = new s("SHA-384", "Hashing.sha384()");
    }

    private static class h {
        static final l a = new s("SHA-512", "Hashing.sha512()");
    }

    private Hashing() {
    }

    static int a(int i) {
        Preconditions.checkArgument(i > 0, "Number of bits must be positive");
        return (i + 31) & (-32);
    }

    public static l adler32() {
        return ChecksumType.b.f3880d;
    }

    private static String b(String str, Key key) {
        return String.format("Hashing.%s(Key[algorithm=%s, format=%s])", str, key.getAlgorithm(), key.getFormat());
    }

    public static HashCode combineOrdered(Iterable<HashCode> iterable) {
        Iterator<HashCode> it = iterable.iterator();
        Preconditions.checkArgument(it.hasNext(), "Must be at least 1 hash code to combine.");
        int iF = it.next().f() / 8;
        byte[] bArr = new byte[iF];
        Iterator<HashCode> it2 = iterable.iterator();
        while (it2.hasNext()) {
            byte[] bArrC = it2.next().c();
            Preconditions.checkArgument(bArrC.length == iF, "All hashcodes must have the same bit length.");
            for (int i = 0; i < bArrC.length; i++) {
                bArr[i] = (byte) ((bArr[i] * 37) ^ bArrC[i]);
            }
        }
        return HashCode.i(bArr);
    }

    public static HashCode combineUnordered(Iterable<HashCode> iterable) {
        Iterator<HashCode> it = iterable.iterator();
        Preconditions.checkArgument(it.hasNext(), "Must be at least 1 hash code to combine.");
        int iF = it.next().f() / 8;
        byte[] bArr = new byte[iF];
        Iterator<HashCode> it2 = iterable.iterator();
        while (it2.hasNext()) {
            byte[] bArrC = it2.next().c();
            Preconditions.checkArgument(bArrC.length == iF, "All hashcodes must have the same bit length.");
            for (int i = 0; i < bArrC.length; i++) {
                bArr[i] = (byte) (bArr[i] + bArrC[i]);
            }
        }
        return HashCode.i(bArr);
    }

    public static l concatenating(l lVar, l lVar2, l... lVarArr) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(lVar);
        arrayList.add(lVar2);
        Collections.addAll(arrayList, lVarArr);
        return new b((l[]) arrayList.toArray(new l[0]));
    }

    public static l concatenating(Iterable<l> iterable) {
        Preconditions.checkNotNull(iterable);
        ArrayList arrayList = new ArrayList();
        Iterator<l> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        Preconditions.checkArgument(!arrayList.isEmpty(), "number of hash functions (%s) must be > 0", arrayList.size());
        return new b((l[]) arrayList.toArray(new l[0]));
    }

    public static int consistentHash(long j, int i) {
        int i2 = 0;
        Preconditions.checkArgument(i > 0, "buckets must be positive: %s", i);
        c cVar = new c(j);
        while (true) {
            int iA = (int) (((double) (i2 + 1)) / cVar.a());
            if (iA < 0 || iA >= i) {
                break;
            }
            i2 = iA;
        }
        return i2;
    }

    public static int consistentHash(HashCode hashCode, int i) {
        return consistentHash(hashCode.k(), i);
    }

    public static l crc32() {
        return ChecksumType.a.f3880d;
    }

    public static l crc32c() {
        return com.google.common.hash.h.a;
    }

    public static l farmHashFingerprint64() {
        return i.a;
    }

    public static l fingerprint2011() {
        return j.a;
    }

    public static l goodFastHash(int i) {
        int iA = a(i);
        if (iA == 32) {
            return u.c;
        }
        if (iA <= 128) {
            return t.b;
        }
        int i2 = (iA + 127) / 128;
        l[] lVarArr = new l[i2];
        lVarArr[0] = t.b;
        int i3 = a;
        for (int i4 = 1; i4 < i2; i4++) {
            i3 += 1500450271;
            lVarArr[i4] = murmur3_128(i3);
        }
        return new b(lVarArr);
    }

    public static l hmacMd5(Key key) {
        return new r("HmacMD5", key, b("hmacMd5", key));
    }

    public static l hmacMd5(byte[] bArr) {
        return hmacMd5(new SecretKeySpec((byte[]) Preconditions.checkNotNull(bArr), "HmacMD5"));
    }

    public static l hmacSha1(Key key) {
        return new r("HmacSHA1", key, b("hmacSha1", key));
    }

    public static l hmacSha1(byte[] bArr) {
        return hmacSha1(new SecretKeySpec((byte[]) Preconditions.checkNotNull(bArr), "HmacSHA1"));
    }

    public static l hmacSha256(Key key) {
        return new r("HmacSHA256", key, b("hmacSha256", key));
    }

    public static l hmacSha256(byte[] bArr) {
        return hmacSha256(new SecretKeySpec((byte[]) Preconditions.checkNotNull(bArr), "HmacSHA256"));
    }

    public static l hmacSha512(Key key) {
        return new r("HmacSHA512", key, b("hmacSha512", key));
    }

    public static l hmacSha512(byte[] bArr) {
        return hmacSha512(new SecretKeySpec((byte[]) Preconditions.checkNotNull(bArr), "HmacSHA512"));
    }

    @Deprecated
    public static l md5() {
        return d.a;
    }

    public static l murmur3_128() {
        return t.a;
    }

    public static l murmur3_128(int i) {
        return new t(i);
    }

    @Deprecated
    public static l murmur3_32() {
        return u.a;
    }

    @Deprecated
    public static l murmur3_32(int i) {
        return new u(i, false);
    }

    public static l murmur3_32_fixed() {
        return u.b;
    }

    public static l murmur3_32_fixed(int i) {
        return new u(i, true);
    }

    @Deprecated
    public static l sha1() {
        return e.a;
    }

    public static l sha256() {
        return f.a;
    }

    public static l sha384() {
        return g.a;
    }

    public static l sha512() {
        return h.a;
    }

    public static l sipHash24() {
        return w.a;
    }

    public static l sipHash24(long j, long j2) {
        return new w(2, 4, j, j2);
    }
}
