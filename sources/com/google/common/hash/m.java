package com.google.common.hash;

import java.nio.charset.Charset;

/* JADX INFO: compiled from: Hasher.java */
/* JADX INFO: loaded from: classes3.dex */
public interface m extends v {
    @Override // com.google.common.hash.v
    m a(byte[] bArr);

    @Override // com.google.common.hash.v
    m b(byte b);

    @Override // com.google.common.hash.v
    m c(CharSequence charSequence);

    @Override // com.google.common.hash.v
    m d(byte[] bArr, int i, int i2);

    @Override // com.google.common.hash.v
    m e(CharSequence charSequence, Charset charset);

    <T> m f(T t, k<? super T> kVar);

    HashCode g();

    @Override // com.google.common.hash.v
    m putInt(int i);

    @Override // com.google.common.hash.v
    m putLong(long j);
}
