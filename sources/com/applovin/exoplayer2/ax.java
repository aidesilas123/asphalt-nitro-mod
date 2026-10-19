package com.applovin.exoplayer2;

import android.os.Bundle;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.common.base.Objects;
import com.applovin.exoplayer2.g;

/* JADX INFO: loaded from: classes.dex */
public final class ax extends aq {
    public static final g.a<ax> br = new g.a() { // from class: com.applovin.exoplayer2.n0
        @Override // com.applovin.exoplayer2.g.a
        public final g fromBundle(Bundle bundle) {
            return ax.o(bundle);
        }
    };

    @IntRange(from = 1)
    private final int in;

    /* JADX INFO: renamed from: io, reason: collision with root package name */
    private final float f338io;

    public ax(@IntRange(from = 1) int i) {
        com.applovin.exoplayer2.l.a.checkArgument(i > 0, "maxStars must be a positive integer");
        this.in = i;
        this.f338io = -1.0f;
    }

    public ax(@IntRange(from = 1) int i, @FloatRange(from = 0.0d) float f2) {
        com.applovin.exoplayer2.l.a.checkArgument(i > 0, "maxStars must be a positive integer");
        com.applovin.exoplayer2.l.a.checkArgument(f2 >= 0.0f && f2 <= ((float) i), "starRating is out of range [0, maxStars]");
        this.in = i;
        this.f338io = f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ax o(Bundle bundle) {
        com.applovin.exoplayer2.l.a.checkArgument(bundle.getInt(t(0), -1) == 2);
        int i = bundle.getInt(t(1), 5);
        float f2 = bundle.getFloat(t(2), -1.0f);
        return f2 == -1.0f ? new ax(i) : new ax(i, f2);
    }

    private static String t(int i) {
        return Integer.toString(i, 36);
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof ax)) {
            return false;
        }
        ax axVar = (ax) obj;
        return this.in == axVar.in && this.f338io == axVar.f338io;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.in), Float.valueOf(this.f338io));
    }
}
