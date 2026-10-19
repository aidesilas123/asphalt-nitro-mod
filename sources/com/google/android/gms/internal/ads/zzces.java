package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzces {
    private long zza;

    public final long zza(ByteBuffer byteBuffer) {
        zzaop zzaopVar;
        zzaoo zzaooVar;
        long j = this.zza;
        if (j > 0) {
            return j;
        }
        try {
            ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
            byteBufferDuplicate.flip();
            Iterator it = new zzaok(new zzcer(byteBufferDuplicate), zzceu.zzb).zze().iterator();
            while (true) {
                zzaopVar = null;
                if (!it.hasNext()) {
                    zzaooVar = null;
                    break;
                }
                zzaom zzaomVar = (zzaom) it.next();
                if (zzaomVar instanceof zzaoo) {
                    zzaooVar = (zzaoo) zzaomVar;
                    break;
                }
            }
            Iterator it2 = zzaooVar.zze().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                zzaom zzaomVar2 = (zzaom) it2.next();
                if (zzaomVar2 instanceof zzaop) {
                    zzaopVar = (zzaop) zzaomVar2;
                    break;
                }
            }
            long jZzd = (zzaopVar.zzd() * 1000) / zzaopVar.zze();
            this.zza = jZzd;
            return jZzd;
        } catch (IOException | RuntimeException unused) {
            return 0L;
        }
    }
}
