package com.google.android.gms.internal.drive;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes3.dex */
public final class zziv {
    protected static final Charset UTF_8 = Charset.forName(C.UTF8_NAME);
    private static final Charset ISO_8859_1 = Charset.forName("ISO-8859-1");
    private static final Object zzne = new Object();

    public static void zza(zzir zzirVar, zzir zzirVar2) {
        zzit zzitVar = zzirVar.zzmw;
        if (zzitVar != null) {
            zzirVar2.zzmw = (zzit) zzitVar.clone();
        }
    }
}
