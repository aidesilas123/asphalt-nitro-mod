package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzgom implements zzgdc {
    private static final byte[] zza = {0};
    private final zzgdc zzb;
    private final zzgss zzc;
    private final byte[] zzd;

    private zzgom(zzgdc zzgdcVar, zzgss zzgssVar, byte[] bArr) {
        this.zzb = zzgdcVar;
        this.zzc = zzgssVar;
        this.zzd = bArr;
    }

    public static zzgdc zzb(zzgkg zzgkgVar) throws GeneralSecurityException {
        byte[] bArrArray;
        zzglo zzgloVarZza = zzgkgVar.zza(zzgco.zza());
        zzgrj zzgrjVarZza = zzgrm.zza();
        zzgrjVarZza.zzb(zzgloVarZza.zzg());
        zzgrjVarZza.zzc(zzgloVarZza.zze());
        zzgrjVarZza.zza(zzgloVarZza.zzb());
        zzgdc zzgdcVar = (zzgdc) zzgdo.zzc((zzgrm) zzgrjVarZza.zzal(), zzgdc.class);
        zzgss zzgssVarZzc = zzgloVarZza.zzc();
        zzgss zzgssVar = zzgss.UNKNOWN_PREFIX;
        int iOrdinal = zzgssVarZzc.ordinal();
        if (iOrdinal == 1) {
            bArrArray = ByteBuffer.allocate(5).put((byte) 1).putInt(zzgkgVar.zzb().intValue()).array();
        } else if (iOrdinal == 2) {
            bArrArray = ByteBuffer.allocate(5).put((byte) 0).putInt(zzgkgVar.zzb().intValue()).array();
        } else if (iOrdinal != 3) {
            if (iOrdinal != 4) {
                throw new GeneralSecurityException("unknown output prefix type");
            }
            bArrArray = ByteBuffer.allocate(5).put((byte) 0).putInt(zzgkgVar.zzb().intValue()).array();
        } else {
            bArrArray = new byte[0];
        }
        return new zzgom(zzgdcVar, zzgssVarZzc, bArrArray);
    }

    @Override // com.google.android.gms.internal.ads.zzgdc
    public final void zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        if (length < 10) {
            throw new GeneralSecurityException("tag too short");
        }
        if (this.zzc.equals(zzgss.LEGACY)) {
            bArr2 = zzgti.zzb(bArr2, zza);
        }
        byte[] bArr3 = new byte[0];
        if (!this.zzc.equals(zzgss.RAW)) {
            byte[] bArrCopyOf = Arrays.copyOf(bArr, 5);
            bArr = Arrays.copyOfRange(bArr, 5, length);
            bArr3 = bArrCopyOf;
        }
        if (!Arrays.equals(this.zzd, bArr3)) {
            throw new GeneralSecurityException("wrong prefix");
        }
        this.zzb.zza(bArr, bArr2);
    }
}
