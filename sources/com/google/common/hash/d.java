package com.google.common.hash;

import java.nio.charset.Charset;

/* JADX INFO: compiled from: AbstractHasher.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class d implements m {
    d() {
    }

    @Override // com.google.common.hash.v
    public m a(byte[] bArr) {
        return d(bArr, 0, bArr.length);
    }

    @Override // com.google.common.hash.v
    public m c(CharSequence charSequence) {
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            h(charSequence.charAt(i));
        }
        return this;
    }

    @Override // com.google.common.hash.m, com.google.common.hash.v
    public abstract m d(byte[] bArr, int i, int i2);

    @Override // com.google.common.hash.v
    public m e(CharSequence charSequence, Charset charset) {
        return a(charSequence.toString().getBytes(charset));
    }

    @Override // com.google.common.hash.m
    public <T> m f(T t, k<? super T> kVar) {
        kVar.o(t, this);
        return this;
    }

    public m h(char c) {
        b((byte) c);
        b((byte) (c >>> '\b'));
        return this;
    }

    @Override // com.google.common.hash.v
    public m putInt(int i) {
        b((byte) i);
        b((byte) (i >>> 8));
        b((byte) (i >>> 16));
        b((byte) (i >>> 24));
        return this;
    }

    @Override // com.google.common.hash.v
    public m putLong(long j) {
        for (int i = 0; i < 64; i += 8) {
            b((byte) (j >>> i));
        }
        return this;
    }
}
