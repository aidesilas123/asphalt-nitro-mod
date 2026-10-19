package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzgfn {
    private zzgfy zza = null;
    private zzgul zzb = null;
    private Integer zzc = null;

    private zzgfn() {
    }

    /* synthetic */ zzgfn(zzgfm zzgfmVar) {
    }

    public final zzgfn zza(Integer num) {
        this.zzc = num;
        return this;
    }

    public final zzgfn zzb(zzgul zzgulVar) {
        this.zzb = zzgulVar;
        return this;
    }

    public final zzgfn zzc(zzgfy zzgfyVar) {
        this.zza = zzgfyVar;
        return this;
    }

    public final zzgfp zzd() throws GeneralSecurityException {
        zzgul zzgulVar;
        zzguk zzgukVarZzb;
        zzgfy zzgfyVar = this.zza;
        if (zzgfyVar == null || (zzgulVar = this.zzb) == null) {
            throw new GeneralSecurityException("Cannot build without parameters and/or key material");
        }
        if (zzgfyVar.zzb() != zzgulVar.zza()) {
            throw new GeneralSecurityException("Key size mismatch");
        }
        if (zzgfyVar.zza() && this.zzc == null) {
            throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
        }
        if (!this.zza.zza() && this.zzc != null) {
            throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
        }
        if (this.zza.zzc() == zzgfw.zzc) {
            zzgukVarZzb = zzguk.zzb(new byte[0]);
        } else if (this.zza.zzc() == zzgfw.zzb) {
            zzgukVarZzb = zzguk.zzb(ByteBuffer.allocate(5).put((byte) 0).putInt(this.zzc.intValue()).array());
        } else {
            if (this.zza.zzc() != zzgfw.zza) {
                throw new IllegalStateException("Unknown AesGcmParameters.Variant: ".concat(String.valueOf(this.zza.zzc())));
            }
            zzgukVarZzb = zzguk.zzb(ByteBuffer.allocate(5).put((byte) 1).putInt(this.zzc.intValue()).array());
        }
        return new zzgfp(this.zza, this.zzb, zzgukVarZzb, this.zzc, null);
    }
}
