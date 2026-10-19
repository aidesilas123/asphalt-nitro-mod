package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzto implements zzwa {
    public final zzwa zza;
    final /* synthetic */ zztp zzb;
    private boolean zzc;

    public zzto(zztp zztpVar, zzwa zzwaVar) {
        this.zzb = zztpVar;
        this.zza = zzwaVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x003b  */
    @Override // com.google.android.gms.internal.ads.zzwa
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int zza(com.google.android.gms.internal.ads.zzkv r13, com.google.android.gms.internal.ads.zzib r14, int r15) {
        /*
            r12 = this;
            com.google.android.gms.internal.ads.zztp r0 = r12.zzb
            boolean r1 = r0.zzq()
            r2 = -3
            if (r1 == 0) goto La
            return r2
        La:
            boolean r1 = r12.zzc
            r3 = 4
            r4 = -4
            if (r1 == 0) goto L14
            r14.zzc(r3)
            return r4
        L14:
            long r0 = r0.zzb()
            com.google.android.gms.internal.ads.zzwa r5 = r12.zza
            int r15 = r5.zza(r13, r14, r15)
            r5 = -5
            r6 = -9223372036854775808
            if (r15 != r5) goto L4e
            com.google.android.gms.internal.ads.zzam r14 = r13.zza
            java.util.Objects.requireNonNull(r14)
            int r15 = r14.zzC
            r0 = 0
            if (r15 != 0) goto L32
            int r15 = r14.zzD
            if (r15 == 0) goto L4d
            r15 = 0
        L32:
            com.google.android.gms.internal.ads.zztp r1 = r12.zzb
            long r1 = r1.zzb
            int r3 = (r1 > r6 ? 1 : (r1 == r6 ? 0 : -1))
            if (r3 == 0) goto L3b
            goto L3d
        L3b:
            int r0 = r14.zzD
        L3d:
            com.google.android.gms.internal.ads.zzak r14 = r14.zzb()
            r14.zzE(r15)
            r14.zzF(r0)
            com.google.android.gms.internal.ads.zzam r14 = r14.zzac()
            r13.zza = r14
        L4d:
            return r5
        L4e:
            com.google.android.gms.internal.ads.zztp r13 = r12.zzb
            long r8 = r13.zzb
            int r13 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
            if (r13 == 0) goto L72
            if (r15 != r4) goto L5e
            long r10 = r14.zze
            int r13 = (r10 > r8 ? 1 : (r10 == r8 ? 0 : -1))
            if (r13 >= 0) goto L68
        L5e:
            if (r15 != r2) goto L72
            int r13 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r13 != 0) goto L72
            boolean r13 = r14.zzd
            if (r13 != 0) goto L72
        L68:
            r14.zzb()
            r14.zzc(r3)
            r13 = 1
            r12.zzc = r13
            return r4
        L72:
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzto.zza(com.google.android.gms.internal.ads.zzkv, com.google.android.gms.internal.ads.zzib, int):int");
    }

    @Override // com.google.android.gms.internal.ads.zzwa
    public final int zzb(long j) {
        if (this.zzb.zzq()) {
            return -3;
        }
        return this.zza.zzb(j);
    }

    public final void zzc() {
        this.zzc = false;
    }

    @Override // com.google.android.gms.internal.ads.zzwa
    public final void zzd() throws IOException {
        this.zza.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzwa
    public final boolean zze() {
        return !this.zzb.zzq() && this.zza.zze();
    }
}
