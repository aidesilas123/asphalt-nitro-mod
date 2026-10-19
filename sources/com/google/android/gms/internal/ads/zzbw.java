package com.google.android.gms.internal.ads;

import androidx.annotation.IntRange;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbw {

    @Nullable
    private CharSequence zza;

    @Nullable
    private CharSequence zzb;

    @Nullable
    private CharSequence zzc;

    @Nullable
    private CharSequence zzd;

    @Nullable
    private CharSequence zze;

    @Nullable
    private byte[] zzf;

    @Nullable
    private Integer zzg;

    @Nullable
    private Integer zzh;

    @Nullable
    private Integer zzi;

    @Nullable
    private Integer zzj;

    @Nullable
    private Boolean zzk;

    @Nullable
    private Integer zzl;

    @Nullable
    private Integer zzm;

    @Nullable
    private Integer zzn;

    @Nullable
    private Integer zzo;

    @Nullable
    private Integer zzp;

    @Nullable
    private Integer zzq;

    @Nullable
    private CharSequence zzr;

    @Nullable
    private CharSequence zzs;

    @Nullable
    private CharSequence zzt;

    @Nullable
    private CharSequence zzu;

    @Nullable
    private CharSequence zzv;

    @Nullable
    private Integer zzw;

    public zzbw() {
    }

    /* synthetic */ zzbw(zzby zzbyVar, zzbv zzbvVar) {
        this.zza = zzbyVar.zzc;
        this.zzb = zzbyVar.zzd;
        this.zzc = zzbyVar.zze;
        this.zzd = zzbyVar.zzf;
        this.zze = zzbyVar.zzg;
        this.zzf = zzbyVar.zzh;
        this.zzg = zzbyVar.zzi;
        this.zzh = zzbyVar.zzj;
        this.zzi = zzbyVar.zzk;
        this.zzj = zzbyVar.zzl;
        this.zzk = zzbyVar.zzm;
        this.zzl = zzbyVar.zzo;
        this.zzm = zzbyVar.zzp;
        this.zzn = zzbyVar.zzq;
        this.zzo = zzbyVar.zzr;
        this.zzp = zzbyVar.zzs;
        this.zzq = zzbyVar.zzt;
        this.zzr = zzbyVar.zzu;
        this.zzs = zzbyVar.zzv;
        this.zzt = zzbyVar.zzw;
        this.zzu = zzbyVar.zzx;
        this.zzv = zzbyVar.zzy;
        this.zzw = zzbyVar.zzz;
    }

    public final zzbw zza(byte[] bArr, int i) {
        if (this.zzf == null || zzfs.zzF(Integer.valueOf(i), 3) || !zzfs.zzF(this.zzg, 3)) {
            this.zzf = (byte[]) bArr.clone();
            this.zzg = Integer.valueOf(i);
        }
        return this;
    }

    public final zzbw zzb(@Nullable zzby zzbyVar) {
        if (zzbyVar != null) {
            CharSequence charSequence = zzbyVar.zzc;
            if (charSequence != null) {
                this.zza = charSequence;
            }
            CharSequence charSequence2 = zzbyVar.zzd;
            if (charSequence2 != null) {
                this.zzb = charSequence2;
            }
            CharSequence charSequence3 = zzbyVar.zze;
            if (charSequence3 != null) {
                this.zzc = charSequence3;
            }
            CharSequence charSequence4 = zzbyVar.zzf;
            if (charSequence4 != null) {
                this.zzd = charSequence4;
            }
            CharSequence charSequence5 = zzbyVar.zzg;
            if (charSequence5 != null) {
                this.zze = charSequence5;
            }
            byte[] bArr = zzbyVar.zzh;
            if (bArr != null) {
                Integer num = zzbyVar.zzi;
                this.zzf = (byte[]) bArr.clone();
                this.zzg = num;
            }
            Integer num2 = zzbyVar.zzj;
            if (num2 != null) {
                this.zzh = num2;
            }
            Integer num3 = zzbyVar.zzk;
            if (num3 != null) {
                this.zzi = num3;
            }
            Integer num4 = zzbyVar.zzl;
            if (num4 != null) {
                this.zzj = num4;
            }
            Boolean bool = zzbyVar.zzm;
            if (bool != null) {
                this.zzk = bool;
            }
            Integer num5 = zzbyVar.zzn;
            if (num5 != null) {
                this.zzl = num5;
            }
            Integer num6 = zzbyVar.zzo;
            if (num6 != null) {
                this.zzl = num6;
            }
            Integer num7 = zzbyVar.zzp;
            if (num7 != null) {
                this.zzm = num7;
            }
            Integer num8 = zzbyVar.zzq;
            if (num8 != null) {
                this.zzn = num8;
            }
            Integer num9 = zzbyVar.zzr;
            if (num9 != null) {
                this.zzo = num9;
            }
            Integer num10 = zzbyVar.zzs;
            if (num10 != null) {
                this.zzp = num10;
            }
            Integer num11 = zzbyVar.zzt;
            if (num11 != null) {
                this.zzq = num11;
            }
            CharSequence charSequence6 = zzbyVar.zzu;
            if (charSequence6 != null) {
                this.zzr = charSequence6;
            }
            CharSequence charSequence7 = zzbyVar.zzv;
            if (charSequence7 != null) {
                this.zzs = charSequence7;
            }
            CharSequence charSequence8 = zzbyVar.zzw;
            if (charSequence8 != null) {
                this.zzt = charSequence8;
            }
            CharSequence charSequence9 = zzbyVar.zzx;
            if (charSequence9 != null) {
                this.zzu = charSequence9;
            }
            CharSequence charSequence10 = zzbyVar.zzy;
            if (charSequence10 != null) {
                this.zzv = charSequence10;
            }
            Integer num12 = zzbyVar.zzz;
            if (num12 != null) {
                this.zzw = num12;
            }
        }
        return this;
    }

    public final zzbw zzc(@Nullable CharSequence charSequence) {
        this.zzd = charSequence;
        return this;
    }

    public final zzbw zzd(@Nullable CharSequence charSequence) {
        this.zzc = charSequence;
        return this;
    }

    public final zzbw zze(@Nullable CharSequence charSequence) {
        this.zzb = charSequence;
        return this;
    }

    public final zzbw zzf(@Nullable CharSequence charSequence) {
        this.zzs = charSequence;
        return this;
    }

    public final zzbw zzg(@Nullable CharSequence charSequence) {
        this.zzt = charSequence;
        return this;
    }

    public final zzbw zzh(@Nullable CharSequence charSequence) {
        this.zze = charSequence;
        return this;
    }

    public final zzbw zzi(@Nullable CharSequence charSequence) {
        this.zzu = charSequence;
        return this;
    }

    public final zzbw zzj(@IntRange(from = 1, to = 31) @Nullable Integer num) {
        this.zzn = num;
        return this;
    }

    public final zzbw zzk(@IntRange(from = 1, to = 12) @Nullable Integer num) {
        this.zzm = num;
        return this;
    }

    public final zzbw zzl(@Nullable Integer num) {
        this.zzl = num;
        return this;
    }

    public final zzbw zzm(@IntRange(from = 1, to = 31) @Nullable Integer num) {
        this.zzq = num;
        return this;
    }

    public final zzbw zzn(@IntRange(from = 1, to = 12) @Nullable Integer num) {
        this.zzp = num;
        return this;
    }

    public final zzbw zzo(@Nullable Integer num) {
        this.zzo = num;
        return this;
    }

    public final zzbw zzp(@Nullable CharSequence charSequence) {
        this.zzv = charSequence;
        return this;
    }

    public final zzbw zzq(@Nullable CharSequence charSequence) {
        this.zza = charSequence;
        return this;
    }

    public final zzbw zzr(@Nullable Integer num) {
        this.zzi = num;
        return this;
    }

    public final zzbw zzs(@Nullable Integer num) {
        this.zzh = num;
        return this;
    }

    public final zzbw zzt(@Nullable CharSequence charSequence) {
        this.zzr = charSequence;
        return this;
    }

    public final zzby zzu() {
        return new zzby(this);
    }
}
