package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzgnc {
    private zzgnq zza = null;
    private zzgul zzb = null;
    private Integer zzc = null;

    private zzgnc() {
    }

    /* synthetic */ zzgnc(zzgnb zzgnbVar) {
    }

    public final zzgnc zza(Integer num) {
        this.zzc = num;
        return this;
    }

    public final zzgnc zzb(zzgul zzgulVar) {
        this.zzb = zzgulVar;
        return this;
    }

    public final zzgnc zzc(zzgnq zzgnqVar) {
        this.zza = zzgnqVar;
        return this;
    }

    public final zzgne zzd() throws GeneralSecurityException {
        zzgul zzgulVar;
        zzguk zzgukVarZzb;
        zzgnq zzgnqVar = this.zza;
        if (zzgnqVar == null || (zzgulVar = this.zzb) == null) {
            throw new GeneralSecurityException("Cannot build without parameters and/or key material");
        }
        if (zzgnqVar.zzc() != zzgulVar.zza()) {
            throw new GeneralSecurityException("Key size mismatch");
        }
        if (zzgnqVar.zza() && this.zzc == null) {
            throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
        }
        if (!this.zza.zza() && this.zzc != null) {
            throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
        }
        if (this.zza.zzg() == zzgno.zzd) {
            zzgukVarZzb = zzguk.zzb(new byte[0]);
        } else if (this.zza.zzg() == zzgno.zzc || this.zza.zzg() == zzgno.zzb) {
            zzgukVarZzb = zzguk.zzb(ByteBuffer.allocate(5).put((byte) 0).putInt(this.zzc.intValue()).array());
        } else {
            if (this.zza.zzg() != zzgno.zza) {
                throw new IllegalStateException("Unknown HmacParameters.Variant: ".concat(String.valueOf(this.zza.zzg())));
            }
            zzgukVarZzb = zzguk.zzb(ByteBuffer.allocate(5).put((byte) 1).putInt(this.zzc.intValue()).array());
        }
        return new zzgne(this.zza, this.zzb, zzgukVarZzb, this.zzc, null);
    }
}
