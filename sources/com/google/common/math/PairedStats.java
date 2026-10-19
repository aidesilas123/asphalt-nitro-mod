package com.google.common.math;

import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes3.dex */
public final class PairedStats implements Serializable {
    private static final long serialVersionUID = 0;
    private final Stats a;
    private final Stats b;
    private final double c;

    PairedStats(Stats stats, Stats stats2, double d2) {
        this.a = stats;
        this.b = stats2;
        this.c = d2;
    }

    public static PairedStats fromByteArray(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        Preconditions.checkArgument(bArr.length == 88, "Expected PairedStats.BYTES = %s, got %s", 88, bArr.length);
        ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
        return new PairedStats(Stats.f(byteBufferOrder), Stats.f(byteBufferOrder), byteBufferOrder.getDouble());
    }

    public long c() {
        return this.a.c();
    }

    public double d() {
        Preconditions.checkState(c() != 0);
        return this.c / c();
    }

    public boolean equals(Object obj) {
        if (obj == null || PairedStats.class != obj.getClass()) {
            return false;
        }
        PairedStats pairedStats = (PairedStats) obj;
        return this.a.equals(pairedStats.a) && this.b.equals(pairedStats.b) && Double.doubleToLongBits(this.c) == Double.doubleToLongBits(pairedStats.c);
    }

    public int hashCode() {
        return Objects.hashCode(this.a, this.b, Double.valueOf(this.c));
    }

    public String toString() {
        return c() > 0 ? MoreObjects.toStringHelper(this).d("xStats", this.a).d("yStats", this.b).a("populationCovariance", d()).toString() : MoreObjects.toStringHelper(this).d("xStats", this.a).d("yStats", this.b).toString();
    }
}
