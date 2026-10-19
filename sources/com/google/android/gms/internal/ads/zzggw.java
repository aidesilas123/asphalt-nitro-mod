package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzggw extends zzgdu {
    private final zzghb zza;
    private final zzgul zzb;
    private final zzguk zzc;
    private final Integer zzd;

    private zzggw(zzghb zzghbVar, zzgul zzgulVar, zzguk zzgukVar, Integer num) {
        this.zza = zzghbVar;
        this.zzb = zzgulVar;
        this.zzc = zzgukVar;
        this.zzd = num;
    }

    public static zzggw zza(zzgha zzghaVar, zzgul zzgulVar, Integer num) throws GeneralSecurityException {
        zzguk zzgukVarZzb;
        zzgha zzghaVar2 = zzgha.zzc;
        if (zzghaVar != zzghaVar2 && num == null) {
            throw new GeneralSecurityException("For given Variant " + zzghaVar.toString() + " the value of idRequirement must be non-null");
        }
        if (zzghaVar == zzghaVar2 && num != null) {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        }
        if (zzgulVar.zza() != 32) {
            throw new GeneralSecurityException("ChaCha20Poly1305 key must be constructed with key of length 32 bytes, not " + zzgulVar.zza());
        }
        zzghb zzghbVarZzc = zzghb.zzc(zzghaVar);
        if (zzghbVarZzc.zzb() == zzghaVar2) {
            zzgukVarZzb = zzguk.zzb(new byte[0]);
        } else if (zzghbVarZzc.zzb() == zzgha.zzb) {
            zzgukVarZzb = zzguk.zzb(ByteBuffer.allocate(5).put((byte) 0).putInt(num.intValue()).array());
        } else {
            if (zzghbVarZzc.zzb() != zzgha.zza) {
                throw new IllegalStateException("Unknown Variant: ".concat(zzghbVarZzc.zzb().toString()));
            }
            zzgukVarZzb = zzguk.zzb(ByteBuffer.allocate(5).put((byte) 1).putInt(num.intValue()).array());
        }
        return new zzggw(zzghbVarZzc, zzgulVar, zzgukVarZzb, num);
    }
}
