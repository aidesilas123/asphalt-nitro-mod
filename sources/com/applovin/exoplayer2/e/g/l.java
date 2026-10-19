package com.applovin.exoplayer2.e.g;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.e.x;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes.dex */
public final class l {
    public final boolean AV;
    public final int AW;

    @Nullable
    public final byte[] AX;

    @Nullable
    public final String tc;
    public final x.a xZ;

    public l(boolean z, @Nullable String str, int i, byte[] bArr, int i2, int i3, @Nullable byte[] bArr2) {
        com.applovin.exoplayer2.l.a.checkArgument((bArr2 == null) ^ (i == 0));
        this.AV = z;
        this.tc = str;
        this.AW = i;
        this.AX = bArr2;
        this.xZ = new x.a(J(str), bArr, i2, i3);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static int J(@Nullable String str) {
        if (str == null) {
            return 1;
        }
        byte b = -1;
        switch (str.hashCode()) {
            case 3046605:
                if (str.equals(C.CENC_TYPE_cbc1)) {
                    b = 0;
                }
                break;
            case 3046671:
                if (str.equals(C.CENC_TYPE_cbcs)) {
                    b = 1;
                }
                break;
            case 3049879:
                if (str.equals(C.CENC_TYPE_cenc)) {
                    b = 2;
                }
                break;
            case 3049895:
                if (str.equals(C.CENC_TYPE_cens)) {
                    b = 3;
                }
                break;
        }
        switch (b) {
            case 0:
            case 1:
                return 2;
            default:
                com.applovin.exoplayer2.l.q.h("TrackEncryptionBox", "Unsupported protection scheme type '" + str + "'. Assuming AES-CTR crypto mode.");
            case 2:
            case 3:
                return 1;
        }
    }
}
