package com.google.common.hash;

import java.nio.charset.Charset;

/* JADX INFO: compiled from: PrimitiveSink.java */
/* JADX INFO: loaded from: classes3.dex */
public interface v {
    v a(byte[] bArr);

    v b(byte b);

    v c(CharSequence charSequence);

    v d(byte[] bArr, int i, int i2);

    v e(CharSequence charSequence, Charset charset);

    v putInt(int i);

    v putLong(long j);
}
