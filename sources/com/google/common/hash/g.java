package com.google.common.hash;

import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.zip.Checksum;

/* JADX INFO: compiled from: ChecksumHashFunction.java */
/* JADX INFO: loaded from: classes3.dex */
final class g extends c implements Serializable {
    private static final long serialVersionUID = 0;
    private final n<? extends Checksum> a;
    private final int b;
    private final String c;

    /* JADX INFO: compiled from: ChecksumHashFunction.java */
    private final class b extends com.google.common.hash.a {
        private final Checksum b;

        private b(Checksum checksum) {
            this.b = (Checksum) Preconditions.checkNotNull(checksum);
        }

        @Override // com.google.common.hash.m
        public HashCode g() {
            long value = this.b.getValue();
            return g.this.b == 32 ? HashCode.fromInt((int) value) : HashCode.fromLong(value);
        }

        @Override // com.google.common.hash.a
        protected void j(byte b) {
            this.b.update(b);
        }

        @Override // com.google.common.hash.a
        protected void l(byte[] bArr, int i, int i2) {
            this.b.update(bArr, i, i2);
        }
    }

    g(n<? extends Checksum> nVar, int i, String str) {
        this.a = (n) Preconditions.checkNotNull(nVar);
        Preconditions.checkArgument(i == 32 || i == 64, "bits (%s) must be either 32 or 64", i);
        this.b = i;
        this.c = (String) Preconditions.checkNotNull(str);
    }

    @Override // com.google.common.hash.l
    public int c() {
        return this.b;
    }

    @Override // com.google.common.hash.l
    public m e() {
        return new b(this.a.get());
    }

    public String toString() {
        return this.c;
    }
}
