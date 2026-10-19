package com.applovin.exoplayer2.e;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public interface x {

    public static final class a {
        public final int rq;
        public final int rr;
        public final int uU;
        public final byte[] uV;

        public a(int i, byte[] bArr, int i2, int i3) {
            this.uU = i;
            this.uV = bArr;
            this.rq = i2;
            this.rr = i3;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.uU == aVar.uU && this.rq == aVar.rq && this.rr == aVar.rr && Arrays.equals(this.uV, aVar.uV);
        }

        public int hashCode() {
            return (((((this.uU * 31) + Arrays.hashCode(this.uV)) * 31) + this.rq) * 31) + this.rr;
        }
    }

    int a(com.applovin.exoplayer2.k.g gVar, int i, boolean z) throws IOException;

    int a(com.applovin.exoplayer2.k.g gVar, int i, boolean z, int i2) throws IOException;

    void a(long j, int i, int i2, int i3, @Nullable a aVar);

    void a(com.applovin.exoplayer2.l.y yVar, int i, int i2);

    void c(com.applovin.exoplayer2.l.y yVar, int i);

    void j(com.applovin.exoplayer2.v vVar);
}
