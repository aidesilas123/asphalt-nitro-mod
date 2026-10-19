package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzakp implements zzall {
    private final zzajy zza;
    private final zzfi zzb = new zzfi(new byte[10], 10);
    private int zzc = 0;
    private int zzd;
    private zzfq zze;
    private boolean zzf;
    private boolean zzg;
    private boolean zzh;
    private int zzi;
    private int zzj;
    private boolean zzk;

    public zzakp(zzajy zzajyVar) {
        this.zza = zzajyVar;
    }

    private final void zzd(int i) {
        this.zzc = i;
        this.zzd = 0;
    }

    private final boolean zze(zzfj zzfjVar, @Nullable byte[] bArr, int i) {
        int iMin = Math.min(zzfjVar.zza(), i - this.zzd);
        if (iMin <= 0) {
            return true;
        }
        if (bArr == null) {
            zzfjVar.zzH(iMin);
        } else {
            zzfjVar.zzC(bArr, this.zzd, iMin);
        }
        int i2 = this.zzd + iMin;
        this.zzd = i2;
        return i2 == i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.google.android.gms.internal.ads.zzall
    public final void zza(zzfj zzfjVar, int i) throws zzcf {
        int i2;
        long jZzb;
        int i3;
        zzef.zzb(this.zze);
        int i4 = -1;
        int i5 = 2;
        ?? r6 = 0;
        int i6 = 1;
        if ((i & 1) != 0) {
            int i7 = this.zzc;
            if (i7 != 0 && i7 != 1) {
                if (i7 != 2) {
                    int i8 = this.zzj;
                    if (i8 != -1) {
                        zzez.zzf("PesReader", "Unexpected start indicator: expected " + i8 + " more bytes");
                    }
                    this.zza.zzc(zzfjVar.zzd() == 0);
                } else {
                    zzez.zzf("PesReader", "Unexpected start indicator reading extended header");
                }
            }
            zzd(1);
        }
        int i9 = i;
        while (zzfjVar.zza() > 0) {
            int i10 = this.zzc;
            if (i10 == 0) {
                zzfjVar.zzH(zzfjVar.zza());
            } else if (i10 != i6) {
                if (i10 != i5) {
                    int iZza = zzfjVar.zza();
                    int i11 = this.zzj;
                    int i12 = i11 == i4 ? 0 : iZza - i11;
                    if (i12 > 0) {
                        iZza -= i12;
                        zzfjVar.zzF(zzfjVar.zzc() + iZza);
                    }
                    this.zza.zza(zzfjVar);
                    int i13 = this.zzj;
                    if (i13 != i4) {
                        int i14 = i13 - iZza;
                        this.zzj = i14;
                        if (i14 == 0) {
                            this.zza.zzc(r6);
                            zzd(i6);
                        }
                    }
                } else {
                    if (zze(zzfjVar, this.zzb.zza, Math.min(10, this.zzi)) && zze(zzfjVar, null, this.zzi)) {
                        this.zzb.zzj(r6);
                        if (this.zzf) {
                            this.zzb.zzl(4);
                            long jZzd = this.zzb.zzd(3);
                            this.zzb.zzl(i6);
                            int iZzd = this.zzb.zzd(15) << 15;
                            this.zzb.zzl(i6);
                            long jZzd2 = this.zzb.zzd(15);
                            this.zzb.zzl(i6);
                            if (this.zzh || !this.zzg) {
                                i3 = iZzd;
                            } else {
                                this.zzb.zzl(4);
                                long jZzd3 = ((long) this.zzb.zzd(3)) << 30;
                                this.zzb.zzl(i6);
                                int iZzd2 = this.zzb.zzd(15) << 15;
                                this.zzb.zzl(i6);
                                long jZzd4 = this.zzb.zzd(15);
                                this.zzb.zzl(i6);
                                i3 = iZzd;
                                this.zze.zzb(jZzd3 | ((long) iZzd2) | jZzd4);
                                this.zzh = true;
                            }
                            jZzb = this.zze.zzb((jZzd << 30) | ((long) i3) | jZzd2);
                        } else {
                            jZzb = C.TIME_UNSET;
                        }
                        i9 |= true != this.zzk ? 0 : 4;
                        this.zza.zzd(jZzb, i9);
                        zzd(3);
                        i4 = -1;
                    }
                }
            } else if (zze(zzfjVar, this.zzb.zza, 9)) {
                this.zzb.zzj(0);
                int iZzd3 = this.zzb.zzd(24);
                if (iZzd3 != 1) {
                    zzez.zzf("PesReader", "Unexpected start code prefix: " + iZzd3);
                    i4 = -1;
                    this.zzj = -1;
                    i2 = 0;
                } else {
                    this.zzb.zzl(8);
                    zzfi zzfiVar = this.zzb;
                    int iZzd4 = zzfiVar.zzd(16);
                    zzfiVar.zzl(5);
                    this.zzk = this.zzb.zzn();
                    this.zzb.zzl(2);
                    this.zzf = this.zzb.zzn();
                    this.zzg = this.zzb.zzn();
                    this.zzb.zzl(6);
                    int iZzd5 = this.zzb.zzd(8);
                    this.zzi = iZzd5;
                    if (iZzd4 == 0) {
                        this.zzj = -1;
                    } else {
                        int i15 = (iZzd4 - 3) - iZzd5;
                        this.zzj = i15;
                        if (i15 < 0) {
                            zzez.zzf("PesReader", "Found negative packet payload size: " + i15);
                            i4 = -1;
                            this.zzj = -1;
                        }
                        i2 = 2;
                    }
                    i4 = -1;
                    i2 = 2;
                }
                zzd(i2);
            } else {
                i4 = -1;
            }
            i5 = 2;
            r6 = 0;
            i6 = 1;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzall
    public final void zzb(zzfq zzfqVar, zzach zzachVar, zzalk zzalkVar) {
        this.zze = zzfqVar;
        this.zza.zzb(zzachVar, zzalkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzall
    public final void zzc() {
        this.zzc = 0;
        this.zzd = 0;
        this.zzh = false;
        this.zza.zze();
    }
}
