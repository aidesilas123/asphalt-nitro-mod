package com.applovin.exoplayer2.m;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.g;
import com.json.mediationsdk.logger.IronSourceError;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class b implements com.applovin.exoplayer2.g {
    public static final g.a<b> br = new g.a() { // from class: com.applovin.exoplayer2.m.p
        @Override // com.applovin.exoplayer2.g.a
        public final com.applovin.exoplayer2.g fromBundle(Bundle bundle) {
            return b.G(bundle);
        }
    };

    @Nullable
    public final byte[] adl;
    private int dS;
    public final int yj;
    public final int yk;
    public final int yl;

    public b(int i, int i2, int i3, @Nullable byte[] bArr) {
        this.yj = i;
        this.yl = i2;
        this.yk = i3;
        this.adl = bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ b G(Bundle bundle) {
        return new b(bundle.getInt(t(0), -1), bundle.getInt(t(1), -1), bundle.getInt(t(2), -1), bundle.getByteArray(t(3)));
    }

    public static int fN(int i) {
        if (i == 1) {
            return 1;
        }
        if (i != 9) {
            return (i == 4 || i == 5 || i == 6 || i == 7) ? 2 : -1;
        }
        return 6;
    }

    public static int fO(int i) {
        if (i == 1) {
            return 3;
        }
        if (i == 16) {
            return 6;
        }
        if (i != 18) {
            return (i == 6 || i == 7) ? 3 : -1;
        }
        return 7;
    }

    private static String t(int i) {
        return Integer.toString(i, 36);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.yj == bVar.yj && this.yl == bVar.yl && this.yk == bVar.yk && Arrays.equals(this.adl, bVar.adl);
    }

    public int hashCode() {
        if (this.dS == 0) {
            this.dS = ((((((IronSourceError.ERROR_NON_EXISTENT_INSTANCE + this.yj) * 31) + this.yl) * 31) + this.yk) * 31) + Arrays.hashCode(this.adl);
        }
        return this.dS;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ColorInfo(");
        sb.append(this.yj);
        sb.append(", ");
        sb.append(this.yl);
        sb.append(", ");
        sb.append(this.yk);
        sb.append(", ");
        sb.append(this.adl != null);
        sb.append(")");
        return sb.toString();
    }
}
