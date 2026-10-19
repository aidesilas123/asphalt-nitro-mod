package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzgew {
    private zzgfg zza = null;
    private zzgul zzb = null;
    private Integer zzc = null;

    private zzgew() {
    }

    /* synthetic */ zzgew(zzgev zzgevVar) {
    }

    public final zzgew zza(Integer num) {
        this.zzc = num;
        return this;
    }

    public final zzgew zzb(zzgul zzgulVar) {
        this.zzb = zzgulVar;
        return this;
    }

    public final zzgew zzc(zzgfg zzgfgVar) {
        this.zza = zzgfgVar;
        return this;
    }

    public final zzgey zzd() throws GeneralSecurityException {
        zzgul zzgulVar;
        zzguk zzgukVarZzb;
        zzgfg zzgfgVar = this.zza;
        if (zzgfgVar == null || (zzgulVar = this.zzb) == null) {
            throw new GeneralSecurityException("Cannot build without parameters and/or key material");
        }
        if (zzgfgVar.zzc() != zzgulVar.zza()) {
            throw new GeneralSecurityException("Key size mismatch");
        }
        if (zzgfgVar.zza() && this.zzc == null) {
            throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
        }
        if (!this.zza.zza() && this.zzc != null) {
            throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
        }
        if (this.zza.zzd() == zzgfe.zzc) {
            zzgukVarZzb = zzguk.zzb(new byte[0]);
        } else if (this.zza.zzd() == zzgfe.zzb) {
            zzgukVarZzb = zzguk.zzb(ByteBuffer.allocate(5).put((byte) 0).putInt(this.zzc.intValue()).array());
        } else {
            if (this.zza.zzd() != zzgfe.zza) {
                throw new IllegalStateException("Unknown AesEaxParameters.Variant: ".concat(String.valueOf(this.zza.zzd())));
            }
            zzgukVarZzb = zzguk.zzb(ByteBuffer.allocate(5).put((byte) 1).putInt(this.zzc.intValue()).array());
        }
        return new zzgey(this.zza, this.zzb, zzgukVarZzb, this.zzc, null);
    }
}
