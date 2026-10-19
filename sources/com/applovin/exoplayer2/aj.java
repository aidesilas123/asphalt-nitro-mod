package com.applovin.exoplayer2;

import android.os.Bundle;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.common.base.Objects;
import com.applovin.exoplayer2.g;

/* JADX INFO: loaded from: classes.dex */
public final class aj extends aq {
    public static final g.a<aj> br = new g.a() { // from class: com.applovin.exoplayer2.i0
        @Override // com.applovin.exoplayer2.g.a
        public final g fromBundle(Bundle bundle) {
            return aj.i(bundle);
        }
    };
    private final float go;

    public aj() {
        this.go = -1.0f;
    }

    public aj(@FloatRange(from = 0.0d, to = 100.0d) float f2) {
        com.applovin.exoplayer2.l.a.checkArgument(f2 >= 0.0f && f2 <= 100.0f, "percent must be in the range of [0, 100]");
        this.go = f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static aj i(Bundle bundle) {
        com.applovin.exoplayer2.l.a.checkArgument(bundle.getInt(t(0), -1) == 1);
        float f2 = bundle.getFloat(t(1), -1.0f);
        return f2 == -1.0f ? new aj() : new aj(f2);
    }

    private static String t(int i) {
        return Integer.toString(i, 36);
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof aj) && this.go == ((aj) obj).go;
    }

    public int hashCode() {
        return Objects.hashCode(Float.valueOf(this.go));
    }
}
