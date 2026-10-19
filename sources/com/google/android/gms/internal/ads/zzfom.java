package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.Base64;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.nio.ByteBuffer;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfom {
    private final Context zza;
    private final Executor zzb;
    private final zzfnt zzc;
    private final zzfnv zzd;
    private final zzfol zze;
    private final zzfol zzf;
    private Task zzg;
    private Task zzh;

    @VisibleForTesting
    zzfom(Context context, Executor executor, zzfnt zzfntVar, zzfnv zzfnvVar, zzfoj zzfojVar, zzfok zzfokVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzfntVar;
        this.zzd = zzfnvVar;
        this.zze = zzfojVar;
        this.zzf = zzfokVar;
    }

    public static zzfom zze(@NonNull Context context, @NonNull Executor executor, @NonNull zzfnt zzfntVar, @NonNull zzfnv zzfnvVar) {
        final zzfom zzfomVar = new zzfom(context, executor, zzfntVar, zzfnvVar, new zzfoj(), new zzfok());
        if (zzfomVar.zzd.zzd()) {
            zzfomVar.zzg = zzfomVar.zzh(new Callable() { // from class: com.google.android.gms.internal.ads.zzfog
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.zza.zzc();
                }
            });
        } else {
            zzfomVar.zzg = Tasks.forResult(zzfomVar.zze.zza());
        }
        zzfomVar.zzh = zzfomVar.zzh(new Callable() { // from class: com.google.android.gms.internal.ads.zzfoh
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzd();
            }
        });
        return zzfomVar;
    }

    private static zzaqd zzg(@NonNull Task task, @NonNull zzaqd zzaqdVar) {
        return !task.isSuccessful() ? zzaqdVar : (zzaqd) task.getResult();
    }

    private final Task zzh(@NonNull Callable callable) {
        return Tasks.call(this.zzb, callable).addOnFailureListener(this.zzb, new OnFailureListener() { // from class: com.google.android.gms.internal.ads.zzfoi
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                this.zza.zzf(exc);
            }
        });
    }

    public final zzaqd zza() {
        return zzg(this.zzg, this.zze.zza());
    }

    public final zzaqd zzb() {
        return zzg(this.zzh, this.zzf.zza());
    }

    final /* synthetic */ zzaqd zzc() throws Exception {
        zzapg zzapgVarZza = zzaqd.zza();
        AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.zza);
        String id = advertisingIdInfo.getId();
        if (id != null && id.matches("^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$")) {
            UUID uuidFromString = UUID.fromString(id);
            byte[] bArr = new byte[16];
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            byteBufferWrap.putLong(uuidFromString.getMostSignificantBits());
            byteBufferWrap.putLong(uuidFromString.getLeastSignificantBits());
            id = Base64.encodeToString(bArr, 11);
        }
        if (id != null) {
            zzapgVarZza.zzs(id);
            zzapgVarZza.zzr(advertisingIdInfo.isLimitAdTrackingEnabled());
            zzapgVarZza.zzab(6);
        }
        return (zzaqd) zzapgVarZza.zzal();
    }

    final /* synthetic */ zzaqd zzd() throws Exception {
        Context context = this.zza;
        return zzfob.zza(context, context.getPackageName(), Integer.toString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode));
    }

    final /* synthetic */ void zzf(Exception exc) {
        if (exc instanceof InterruptedException) {
            Thread.currentThread().interrupt();
        }
        this.zzc.zzc(2025, -1L, exc);
    }
}
