package com.google.firebase.analytics;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.measurement.zzee;
import com.google.android.gms.measurement.internal.zzhi;
import com.google.android.gms.measurement.internal.zzhj;
import com.google.android.gms.measurement.internal.zzio;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-api@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzc implements zzio {
    final /* synthetic */ zzee a;

    zzc(zzee zzeeVar) {
        this.a = zzeeVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final int zza(String str) {
        return this.a.zza(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final long zzb() {
        return this.a.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    @Nullable
    public final Object zzg(int i) {
        return this.a.zzh(i);
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    @Nullable
    public final String zzh() {
        return this.a.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    @Nullable
    public final String zzi() {
        return this.a.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    @Nullable
    public final String zzj() {
        return this.a.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    @Nullable
    public final String zzk() {
        return this.a.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final List zzm(@Nullable String str, @Nullable String str2) {
        return this.a.zzp(str, str2);
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final Map zzo(@Nullable String str, @Nullable String str2, boolean z) {
        return this.a.zzq(str, str2, z);
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final void zzp(String str) {
        this.a.zzu(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final void zzq(String str, @Nullable String str2, @Nullable Bundle bundle) {
        this.a.zzv(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final void zzr(String str) {
        this.a.zzw(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final void zzs(String str, String str2, Bundle bundle) {
        this.a.zzy(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final void zzt(String str, String str2, Bundle bundle, long j) {
        this.a.zzz(str, str2, bundle, j);
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final void zzu(zzhj zzhjVar) {
        this.a.zzB(zzhjVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final void zzv(Bundle bundle) {
        this.a.zzD(bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final void zzw(zzhi zzhiVar) {
        this.a.zzJ(zzhiVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzio
    public final void zzx(zzhj zzhjVar) {
        this.a.zzO(zzhjVar);
    }
}
