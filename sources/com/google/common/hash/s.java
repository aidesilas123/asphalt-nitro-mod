package com.google.common.hash;

import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/* JADX INFO: compiled from: MessageDigestHashFunction.java */
/* JADX INFO: loaded from: classes3.dex */
final class s extends com.google.common.hash.c implements Serializable {
    private final MessageDigest a;
    private final int b;
    private final boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f3889d;

    /* JADX INFO: compiled from: MessageDigestHashFunction.java */
    private static final class b extends com.google.common.hash.a {
        private final MessageDigest b;
        private final int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f3890d;

        private b(MessageDigest messageDigest, int i) {
            this.b = messageDigest;
            this.c = i;
        }

        private void m() {
            Preconditions.checkState(!this.f3890d, "Cannot re-use a Hasher after calling hash() on it");
        }

        @Override // com.google.common.hash.m
        public HashCode g() {
            m();
            this.f3890d = true;
            return this.c == this.b.getDigestLength() ? HashCode.i(this.b.digest()) : HashCode.i(Arrays.copyOf(this.b.digest(), this.c));
        }

        @Override // com.google.common.hash.a
        protected void j(byte b) {
            m();
            this.b.update(b);
        }

        @Override // com.google.common.hash.a
        protected void l(byte[] bArr, int i, int i2) {
            m();
            this.b.update(bArr, i, i2);
        }
    }

    /* JADX INFO: compiled from: MessageDigestHashFunction.java */
    private static final class c implements Serializable {
        private static final long serialVersionUID = 0;
        private final String a;
        private final int b;
        private final String c;

        private c(String str, int i, String str2) {
            this.a = str;
            this.b = i;
            this.c = str2;
        }

        private Object readResolve() {
            return new s(this.a, this.b, this.c);
        }
    }

    s(String str, int i, String str2) {
        this.f3889d = (String) Preconditions.checkNotNull(str2);
        MessageDigest messageDigestB = b(str);
        this.a = messageDigestB;
        int digestLength = messageDigestB.getDigestLength();
        Preconditions.checkArgument(i >= 4 && i <= digestLength, "bytes (%s) must be >= 4 and < %s", i, digestLength);
        this.b = i;
        this.c = i(messageDigestB);
    }

    s(String str, String str2) {
        MessageDigest messageDigestB = b(str);
        this.a = messageDigestB;
        this.b = messageDigestB.getDigestLength();
        this.f3889d = (String) Preconditions.checkNotNull(str2);
        this.c = i(messageDigestB);
    }

    private static MessageDigest b(String str) {
        try {
            return MessageDigest.getInstance(str);
        } catch (NoSuchAlgorithmException e2) {
            throw new AssertionError(e2);
        }
    }

    private static boolean i(MessageDigest messageDigest) {
        try {
            messageDigest.clone();
            return true;
        } catch (CloneNotSupportedException unused) {
            return false;
        }
    }

    @Override // com.google.common.hash.l
    public int c() {
        return this.b * 8;
    }

    @Override // com.google.common.hash.l
    public m e() {
        if (this.c) {
            try {
                return new b((MessageDigest) this.a.clone(), this.b);
            } catch (CloneNotSupportedException unused) {
            }
        }
        return new b(b(this.a.getAlgorithm()), this.b);
    }

    public String toString() {
        return this.f3889d;
    }

    Object writeReplace() {
        return new c(this.a.getAlgorithm(), this.b, this.f3889d);
    }
}
