package com.applovin.exoplayer2.m;

import android.os.Bundle;
import android.support.v4.media.MediaDescriptionCompat;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.g;

/* JADX INFO: loaded from: classes.dex */
public final class o implements com.applovin.exoplayer2.g {
    public static final o afk = new o(0, 0);
    public static final g.a<o> br = new g.a() { // from class: com.applovin.exoplayer2.m.b0
        @Override // com.applovin.exoplayer2.g.a
        public final com.applovin.exoplayer2.g fromBundle(Bundle bundle) {
            return o.H(bundle);
        }
    };

    @IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED, to = 359)
    public final int afl;

    @IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED)
    public final int dE;

    @FloatRange(from = 0.0d, fromInclusive = false)
    public final float dH;

    @IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED)
    public final int height;

    public o(@IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED) int i, @IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED) int i2) {
        this(i, i2, 0, 1.0f);
    }

    public o(@IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED) int i, @IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED) int i2, @IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED, to = 359) int i3, @FloatRange(from = 0.0d, fromInclusive = false) float f2) {
        this.dE = i;
        this.height = i2;
        this.afl = i3;
        this.dH = f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ o H(Bundle bundle) {
        return new o(bundle.getInt(t(0), 0), bundle.getInt(t(1), 0), bundle.getInt(t(2), 0), bundle.getFloat(t(3), 1.0f));
    }

    private static String t(int i) {
        return Integer.toString(i, 36);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return this.dE == oVar.dE && this.height == oVar.height && this.afl == oVar.afl && this.dH == oVar.dH;
    }

    public int hashCode() {
        return ((((((217 + this.dE) * 31) + this.height) * 31) + this.afl) * 31) + Float.floatToRawIntBits(this.dH);
    }
}
