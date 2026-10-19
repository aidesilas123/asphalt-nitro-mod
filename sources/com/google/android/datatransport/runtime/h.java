package com.google.android.datatransport.runtime;

import androidx.annotation.NonNull;
import com.google.android.datatransport.Encoding;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: EncodedPayload.java */
/* JADX INFO: loaded from: classes2.dex */
public final class h {
    private final Encoding a;
    private final byte[] b;

    public h(@NonNull Encoding encoding, @NonNull byte[] bArr) {
        Objects.requireNonNull(encoding, "encoding is null");
        Objects.requireNonNull(bArr, "bytes is null");
        this.a = encoding;
        this.b = bArr;
    }

    public byte[] a() {
        return this.b;
    }

    public Encoding b() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        if (this.a.equals(hVar.a)) {
            return Arrays.equals(this.b, hVar.b);
        }
        return false;
    }

    public int hashCode() {
        return ((this.a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.b);
    }

    public String toString() {
        return "EncodedPayload{encoding=" + this.a + ", bytes=[...]}";
    }
}
