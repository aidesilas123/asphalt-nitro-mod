package com.google.android.gms.internal.ads;

import android.os.Handler;
import androidx.annotation.Nullable;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public interface zzum {
    void zzG(zzui zzuiVar);

    zzui zzI(zzuk zzukVar, zzyn zzynVar, long j);

    zzbs zzJ();

    @Nullable
    zzda zzM();

    void zzg(Handler handler, zzrm zzrmVar);

    void zzh(Handler handler, zzuu zzuuVar);

    void zzi(zzul zzulVar);

    void zzk(zzul zzulVar);

    void zzm(zzul zzulVar, @Nullable zzhs zzhsVar, zzov zzovVar);

    void zzp(zzul zzulVar);

    void zzr(zzrm zzrmVar);

    void zzs(zzuu zzuuVar);

    void zzt(zzbs zzbsVar);

    boolean zzv();

    void zzz() throws IOException;
}
