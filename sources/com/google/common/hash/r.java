package com.google.common.hash;

import com.google.common.base.Preconditions;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;

/* JADX INFO: compiled from: MacHashFunction.java */
/* JADX INFO: loaded from: classes3.dex */
final class r extends c {
    private final Mac a;
    private final Key b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f3887d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f3888e;

    /* JADX INFO: compiled from: MacHashFunction.java */
    private static final class b extends com.google.common.hash.a {
        private final Mac b;
        private boolean c;

        private b(Mac mac) {
            this.b = mac;
        }

        private void m() {
            Preconditions.checkState(!this.c, "Cannot re-use a Hasher after calling hash() on it");
        }

        @Override // com.google.common.hash.m
        public HashCode g() {
            m();
            this.c = true;
            return HashCode.i(this.b.doFinal());
        }

        @Override // com.google.common.hash.a
        protected void j(byte b) {
            m();
            this.b.update(b);
        }

        @Override // com.google.common.hash.a
        protected void k(byte[] bArr) {
            m();
            this.b.update(bArr);
        }

        @Override // com.google.common.hash.a
        protected void l(byte[] bArr, int i, int i2) {
            m();
            this.b.update(bArr, i, i2);
        }
    }

    r(String str, Key key, String str2) {
        Mac macB = b(str, key);
        this.a = macB;
        this.b = (Key) Preconditions.checkNotNull(key);
        this.c = (String) Preconditions.checkNotNull(str2);
        this.f3887d = macB.getMacLength() * 8;
        this.f3888e = i(macB);
    }

    private static Mac b(String str, Key key) {
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(key);
            return mac;
        } catch (InvalidKeyException e2) {
            throw new IllegalArgumentException(e2);
        } catch (NoSuchAlgorithmException e3) {
            throw new IllegalStateException(e3);
        }
    }

    private static boolean i(Mac mac) {
        try {
            mac.clone();
            return true;
        } catch (CloneNotSupportedException unused) {
            return false;
        }
    }

    @Override // com.google.common.hash.l
    public int c() {
        return this.f3887d;
    }

    @Override // com.google.common.hash.l
    public m e() {
        if (this.f3888e) {
            try {
                return new b((Mac) this.a.clone());
            } catch (CloneNotSupportedException unused) {
            }
        }
        return new b(b(this.a.getAlgorithm(), this.b));
    }

    public String toString() {
        return this.c;
    }
}
