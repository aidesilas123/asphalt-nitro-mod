package com.applovin.exoplayer2.f;

import android.media.MediaCodec;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.applovin.exoplayer2.l.ai;

/* JADX INFO: loaded from: classes.dex */
public class h extends com.applovin.exoplayer2.c.f {

    @Nullable
    public final i Hk;

    @Nullable
    public final String Hq;

    public h(Throwable th, @Nullable i iVar) {
        StringBuilder sb = new StringBuilder();
        sb.append("Decoder failed: ");
        sb.append(iVar == null ? null : iVar.name);
        super(sb.toString(), th);
        this.Hk = iVar;
        this.Hq = ai.acV >= 21 ? g(th) : null;
    }

    @Nullable
    @RequiresApi(21)
    private static String g(Throwable th) {
        if (th instanceof MediaCodec.CodecException) {
            return ((MediaCodec.CodecException) th).getDiagnosticInfo();
        }
        return null;
    }
}
