package com.applovin.exoplayer2;

import android.os.Bundle;
import androidx.annotation.CheckResult;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.g;
import com.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes.dex */
public final class am implements g {
    public final float gD;
    public final float gE;
    private final int gF;
    public static final am gC = new am(1.0f);
    public static final g.a<am> br = new g.a() { // from class: com.applovin.exoplayer2.j0
        @Override // com.applovin.exoplayer2.g.a
        public final g fromBundle(Bundle bundle) {
            return am.k(bundle);
        }
    };

    public am(float f2) {
        this(f2, 1.0f);
    }

    public am(@FloatRange(from = 0.0d, fromInclusive = false) float f2, @FloatRange(from = 0.0d, fromInclusive = false) float f3) {
        com.applovin.exoplayer2.l.a.checkArgument(f2 > 0.0f);
        com.applovin.exoplayer2.l.a.checkArgument(f3 > 0.0f);
        this.gD = f2;
        this.gE = f3;
        this.gF = Math.round(f2 * 1000.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ am k(Bundle bundle) {
        return new am(bundle.getFloat(t(0), 1.0f), bundle.getFloat(t(1), 1.0f));
    }

    private static String t(int i) {
        return Integer.toString(i, 36);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || am.class != obj.getClass()) {
            return false;
        }
        am amVar = (am) obj;
        return this.gD == amVar.gD && this.gE == amVar.gE;
    }

    @CheckResult
    public am f(@FloatRange(from = 0.0d, fromInclusive = false) float f2) {
        return new am(f2, this.gE);
    }

    public int hashCode() {
        return ((IronSourceError.ERROR_NON_EXISTENT_INSTANCE + Float.floatToRawIntBits(this.gD)) * 31) + Float.floatToRawIntBits(this.gE);
    }

    public String toString() {
        return com.applovin.exoplayer2.l.ai.a("PlaybackParameters(speed=%.2f, pitch=%.2f)", Float.valueOf(this.gD), Float.valueOf(this.gE));
    }

    public long x(long j) {
        return j * ((long) this.gF);
    }
}
