package com.applovin.exoplayer2;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.common.base.Objects;
import com.applovin.exoplayer2.g;

/* JADX INFO: loaded from: classes.dex */
public final class az extends aq {
    public static final g.a<az> br = new g.a() { // from class: com.applovin.exoplayer2.p0
        @Override // com.applovin.exoplayer2.g.a
        public final g fromBundle(Bundle bundle) {
            return az.p(bundle);
        }
    };
    private final boolean dV;
    private final boolean iv;

    public az() {
        this.dV = false;
        this.iv = false;
    }

    public az(boolean z) {
        this.dV = true;
        this.iv = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static az p(Bundle bundle) {
        com.applovin.exoplayer2.l.a.checkArgument(bundle.getInt(t(0), -1) == 3);
        return bundle.getBoolean(t(1), false) ? new az(bundle.getBoolean(t(2), false)) : new az();
    }

    private static String t(int i) {
        return Integer.toString(i, 36);
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof az)) {
            return false;
        }
        az azVar = (az) obj;
        return this.iv == azVar.iv && this.dV == azVar.dV;
    }

    public int hashCode() {
        return Objects.hashCode(Boolean.valueOf(this.dV), Boolean.valueOf(this.iv));
    }
}
