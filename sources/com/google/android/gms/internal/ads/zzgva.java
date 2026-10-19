package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
class zzgva extends zzguz {
    protected final byte[] zza;

    zzgva(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.zza = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzgve
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgve) || zzd() != ((zzgve) obj).zzd()) {
            return false;
        }
        if (zzd() == 0) {
            return true;
        }
        if (!(obj instanceof zzgva)) {
            return obj.equals(this);
        }
        zzgva zzgvaVar = (zzgva) obj;
        int iZzr = zzr();
        int iZzr2 = zzgvaVar.zzr();
        if (iZzr == 0 || iZzr2 == 0 || iZzr == iZzr2) {
            return zzg(zzgvaVar, 0, zzd());
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzgve
    public byte zza(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.ads.zzgve
    byte zzb(int i) {
        return this.zza[i];
    }

    protected int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgve
    public int zzd() {
        return this.zza.length;
    }

    @Override // com.google.android.gms.internal.ads.zzgve
    protected void zze(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zza, i, bArr, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzguz
    final boolean zzg(zzgve zzgveVar, int i, int i2) {
        if (i2 > zzgveVar.zzd()) {
            throw new IllegalArgumentException("Length too large: " + i2 + zzd());
        }
        int i3 = i + i2;
        if (i3 > zzgveVar.zzd()) {
            throw new IllegalArgumentException("Ran off end of other: " + i + ", " + i2 + ", " + zzgveVar.zzd());
        }
        if (!(zzgveVar instanceof zzgva)) {
            return zzgveVar.zzk(i, i3).equals(zzk(0, i2));
        }
        zzgva zzgvaVar = (zzgva) zzgveVar;
        byte[] bArr = this.zza;
        byte[] bArr2 = zzgvaVar.zza;
        int iZzc = zzc() + i2;
        int iZzc2 = zzc();
        int iZzc3 = zzgvaVar.zzc() + i;
        while (iZzc2 < iZzc) {
            if (bArr[iZzc2] != bArr2[iZzc3]) {
                return false;
            }
            iZzc2++;
            iZzc3++;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzgve
    protected final int zzi(int i, int i2, int i3) {
        return zzgww.zzb(i, this.zza, zzc() + i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzgve
    protected final int zzj(int i, int i2, int i3) {
        int iZzc = zzc() + i2;
        return zzgzv.zzf(i, this.zza, iZzc, i3 + iZzc);
    }

    @Override // com.google.android.gms.internal.ads.zzgve
    public final zzgve zzk(int i, int i2) {
        int iZzq = zzgve.zzq(i, i2, zzd());
        return iZzq == 0 ? zzgve.zzb : new zzgux(this.zza, zzc() + i, iZzq);
    }

    @Override // com.google.android.gms.internal.ads.zzgve
    public final zzgvm zzl() {
        return zzgvm.zzI(this.zza, zzc(), zzd(), true);
    }

    @Override // com.google.android.gms.internal.ads.zzgve
    protected final String zzm(Charset charset) {
        return new String(this.zza, zzc(), zzd(), charset);
    }

    @Override // com.google.android.gms.internal.ads.zzgve
    public final ByteBuffer zzn() {
        return ByteBuffer.wrap(this.zza, zzc(), zzd()).asReadOnlyBuffer();
    }

    @Override // com.google.android.gms.internal.ads.zzgve
    final void zzo(zzgut zzgutVar) throws IOException {
        zzgutVar.zza(this.zza, zzc(), zzd());
    }

    @Override // com.google.android.gms.internal.ads.zzgve
    public final boolean zzp() {
        int iZzc = zzc();
        return zzgzv.zzj(this.zza, iZzc, zzd() + iZzc);
    }
}
