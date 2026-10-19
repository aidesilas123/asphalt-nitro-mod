package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.NonNull;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzezs implements zzcyk, zzdag, zzfbi, com.google.android.gms.ads.internal.overlay.zzo, zzdas, zzcyx, zzdge {
    private final zzffz zza;
    private final AtomicReference zzb = new AtomicReference();
    private final AtomicReference zzc = new AtomicReference();
    private final AtomicReference zzd = new AtomicReference();
    private final AtomicReference zze = new AtomicReference();
    private final AtomicReference zzf = new AtomicReference();
    private final AtomicReference zzg = new AtomicReference();
    private zzezs zzh = null;

    public zzezs(zzffz zzffzVar) {
        this.zza = zzffzVar;
    }

    public static zzezs zzi(zzezs zzezsVar) {
        zzezs zzezsVar2 = new zzezs(zzezsVar.zza);
        zzezsVar2.zzh = zzezsVar;
        return zzezsVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzcyk
    public final void zzbG(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzezs zzezsVar = this.zzh;
        if (zzezsVar != null) {
            zzezsVar.zzbG(zzeVar);
        } else {
            zzfaz.zza(this.zzb, new zzfay() { // from class: com.google.android.gms.internal.ads.zzezn
                @Override // com.google.android.gms.internal.ads.zzfay
                public final void zza(Object obj) throws RemoteException {
                    ((zzaxm) obj).zzc(zzeVar);
                }
            });
            zzfaz.zza(this.zzb, new zzfay() { // from class: com.google.android.gms.internal.ads.zzezo
                @Override // com.google.android.gms.internal.ads.zzfay
                public final void zza(Object obj) throws RemoteException {
                    ((zzaxm) obj).zzb(zzeVar.zza);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdge
    public final void zzbL() {
        zzezs zzezsVar = this.zzh;
        if (zzezsVar != null) {
            zzezsVar.zzbL();
        } else {
            zzfaz.zza(this.zzd, new zzfay() { // from class: com.google.android.gms.internal.ads.zzezj
                @Override // com.google.android.gms.internal.ads.zzfay
                public final void zza(Object obj) throws RemoteException {
                    ((zzaxq) obj).zzb();
                }
            });
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbM() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbp() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbv() {
        zzezs zzezsVar = this.zzh;
        if (zzezsVar != null) {
            zzezsVar.zzbv();
        } else {
            zzfaz.zza(this.zzf, new zzfay() { // from class: com.google.android.gms.internal.ads.zzezg
                @Override // com.google.android.gms.internal.ads.zzfay
                public final void zza(Object obj) {
                    ((com.google.android.gms.ads.internal.overlay.zzo) obj).zzbv();
                }
            });
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbw() {
        zzezs zzezsVar = this.zzh;
        if (zzezsVar != null) {
            zzezsVar.zzbw();
            return;
        }
        zzfaz.zza(this.zzf, new zzfay() { // from class: com.google.android.gms.internal.ads.zzezr
            @Override // com.google.android.gms.internal.ads.zzfay
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.overlay.zzo) obj).zzbw();
            }
        });
        zzfaz.zza(this.zzd, new zzfay() { // from class: com.google.android.gms.internal.ads.zzeze
            @Override // com.google.android.gms.internal.ads.zzfay
            public final void zza(Object obj) throws RemoteException {
                ((zzaxq) obj).zzf();
            }
        });
        zzfaz.zza(this.zzd, new zzfay() { // from class: com.google.android.gms.internal.ads.zzezf
            @Override // com.google.android.gms.internal.ads.zzfay
            public final void zza(Object obj) throws RemoteException {
                ((zzaxq) obj).zze();
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzby() {
        zzezs zzezsVar = this.zzh;
        if (zzezsVar != null) {
            zzezsVar.zzby();
        } else {
            zzfaz.zza(this.zzf, new zzfay() { // from class: com.google.android.gms.internal.ads.zzezq
                @Override // com.google.android.gms.internal.ads.zzfay
                public final void zza(Object obj) {
                    ((com.google.android.gms.ads.internal.overlay.zzo) obj).zzby();
                }
            });
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbz(final int i) {
        zzezs zzezsVar = this.zzh;
        if (zzezsVar != null) {
            zzezsVar.zzbz(i);
        } else {
            zzfaz.zza(this.zzf, new zzfay() { // from class: com.google.android.gms.internal.ads.zzezm
                @Override // com.google.android.gms.internal.ads.zzfay
                public final void zza(Object obj) {
                    ((com.google.android.gms.ads.internal.overlay.zzo) obj).zzbz(i);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdag
    public final void zzg() {
        zzezs zzezsVar = this.zzh;
        if (zzezsVar != null) {
            zzezsVar.zzg();
        } else {
            zzfaz.zza(this.zze, new zzfay() { // from class: com.google.android.gms.internal.ads.zzezp
                @Override // com.google.android.gms.internal.ads.zzfay
                public final void zza(Object obj) {
                    ((zzdag) obj).zzg();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdas
    public final void zzh(@NonNull final com.google.android.gms.ads.internal.client.zzs zzsVar) {
        zzezs zzezsVar = this.zzh;
        if (zzezsVar != null) {
            zzezsVar.zzh(zzsVar);
        } else {
            zzfaz.zza(this.zzg, new zzfay() { // from class: com.google.android.gms.internal.ads.zzezd
                @Override // com.google.android.gms.internal.ads.zzfay
                public final void zza(Object obj) throws RemoteException {
                    ((com.google.android.gms.ads.internal.client.zzdg) obj).zze(zzsVar);
                }
            });
        }
    }

    public final void zzj() {
        zzezs zzezsVar = this.zzh;
        if (zzezsVar != null) {
            zzezsVar.zzj();
            return;
        }
        this.zza.zza();
        zzfaz.zza(this.zzc, new zzfay() { // from class: com.google.android.gms.internal.ads.zzezk
            @Override // com.google.android.gms.internal.ads.zzfay
            public final void zza(Object obj) throws RemoteException {
                ((zzaxn) obj).zza();
            }
        });
        zzfaz.zza(this.zzd, new zzfay() { // from class: com.google.android.gms.internal.ads.zzezl
            @Override // com.google.android.gms.internal.ads.zzfay
            public final void zza(Object obj) throws RemoteException {
                ((zzaxq) obj).zzc();
            }
        });
    }

    public final void zzk(final zzaxj zzaxjVar) {
        zzezs zzezsVar = this.zzh;
        if (zzezsVar != null) {
            zzezsVar.zzk(zzaxjVar);
        } else {
            zzfaz.zza(this.zzb, new zzfay() { // from class: com.google.android.gms.internal.ads.zzezi
                @Override // com.google.android.gms.internal.ads.zzfay
                public final void zza(Object obj) throws RemoteException {
                    ((zzaxm) obj).zzd(zzaxjVar);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfbi
    public final void zzl(zzfbi zzfbiVar) {
        this.zzh = (zzezs) zzfbiVar;
    }

    public final void zzm(com.google.android.gms.ads.internal.overlay.zzo zzoVar) {
        this.zzf.set(zzoVar);
    }

    public final void zzn(com.google.android.gms.ads.internal.client.zzdg zzdgVar) {
        this.zzg.set(zzdgVar);
    }

    public final void zzo(zzaxm zzaxmVar) {
        this.zzb.set(zzaxmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcyx
    public final void zzp(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzezs zzezsVar = this.zzh;
        if (zzezsVar != null) {
            zzezsVar.zzp(zzeVar);
        } else {
            zzfaz.zza(this.zzd, new zzfay() { // from class: com.google.android.gms.internal.ads.zzezh
                @Override // com.google.android.gms.internal.ads.zzfay
                public final void zza(Object obj) throws RemoteException {
                    ((zzaxq) obj).zzd(zzeVar);
                }
            });
        }
    }

    public final void zzq(zzaxq zzaxqVar) {
        this.zzd.set(zzaxqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdge
    public final void zzs() {
    }
}
