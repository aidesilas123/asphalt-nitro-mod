package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApkChecksum;
import android.content.pm.PackageManager;
import android.os.Build;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import java.io.ByteArrayInputStream;
import java.lang.reflect.InvocationTargetException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzatx extends zzaux {
    private static final zzauy zzi = new zzauy();
    private final Context zzj;

    public zzatx(zzatj zzatjVar, String str, String str2, zzapg zzapgVar, int i, int i2, Context context, zzaoz zzaozVar) {
        super(zzatjVar, "p0JEft1H0Ux+/zQoofBGK8/hHhAdN3veKIjNmetX6I2+7J67s0tf2NBKaWy11XvI", "yaxGJhC1WxugM+8EfEc/xAIuDWtPkz77G//hU7f/vWw=", zzapgVar, i, 27);
        this.zzj = context;
    }

    private final String zzc() {
        try {
            if (this.zzb.zzl() != null) {
                this.zzb.zzl().get();
            }
            zzaqd zzaqdVarZzc = this.zzb.zzc();
            if (zzaqdVarZzc == null || !zzaqdVarZzc.zzaj()) {
                return null;
            }
            return zzaqdVarZzc.zzh();
        } catch (InterruptedException | ExecutionException unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaux
    protected final void zza() throws IllegalAccessException, InvocationTargetException {
        int i;
        zzaqu zzaquVar;
        AtomicReference atomicReferenceZza = zzi.zza(this.zzj.getPackageName());
        synchronized (atomicReferenceZza) {
            zzaqu zzaquVar2 = (zzaqu) atomicReferenceZza.get();
            if (zzaquVar2 == null || zzatm.zzd(zzaquVar2.zza) || zzaquVar2.zza.equals("E") || zzaquVar2.zza.equals("0000000000000000000000000000000000000000000000000000000000000000")) {
                if (zzatm.zzd(null)) {
                    (!zzatm.zzd(null) ? Boolean.FALSE : Boolean.FALSE).booleanValue();
                    i = 3;
                } else {
                    i = 5;
                }
                Boolean boolValueOf = Boolean.valueOf(i == 3);
                Boolean bool = (Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzck);
                String strZzb = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzcj)).booleanValue() ? zzb() : null;
                if (bool.booleanValue() && this.zzb.zzp() && zzatm.zzd(strZzb)) {
                    strZzb = zzc();
                }
                zzaqu zzaquVar3 = new zzaqu((String) this.zzf.invoke(null, this.zzj, boolValueOf, strZzb));
                if (zzatm.zzd(zzaquVar3.zza) || zzaquVar3.zza.equals("E")) {
                    int i2 = i - 1;
                    if (i2 == 3) {
                        String strZzc = zzc();
                        if (!zzatm.zzd(strZzc)) {
                            zzaquVar3.zza = strZzc;
                        }
                    } else if (i2 == 4) {
                        throw null;
                    }
                }
                atomicReferenceZza.set(zzaquVar3);
            }
            zzaquVar = (zzaqu) atomicReferenceZza.get();
        }
        synchronized (this.zze) {
            if (zzaquVar != null) {
                this.zze.zzx(zzaquVar.zza);
                this.zze.zzX(zzaquVar.zzb);
                this.zze.zzZ(zzaquVar.zzc);
                this.zze.zzi(zzaquVar.zzd);
                this.zze.zzw(zzaquVar.zze);
            }
        }
    }

    protected final String zzb() {
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance(AndroidStaticDeviceInfoDataSource.CERTIFICATE_TYPE_X509);
            byte[] bArrZzf = zzatm.zzf((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzcl));
            ArrayList arrayList = new ArrayList();
            arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(bArrZzf)));
            if (!Build.TYPE.equals("user")) {
                arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(zzatm.zzf((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzcm)))));
            }
            Context context = this.zzj;
            String packageName = context.getPackageName();
            this.zzb.zzk();
            if (Build.VERSION.SDK_INT <= 30 && !Build.VERSION.CODENAME.equals("S")) {
                return null;
            }
            final zzgbt zzgbtVarZze = zzgbt.zze();
            context.getPackageManager().requestChecksums(packageName, false, 8, arrayList, new PackageManager.OnChecksumsReadyListener() { // from class: com.google.android.gms.internal.ads.zzauz
                @Override // android.content.pm.PackageManager.OnChecksumsReadyListener
                public final void onChecksumsReady(List list) {
                    zzgbt zzgbtVar = zzgbtVarZze;
                    if (list == null) {
                        zzgbtVar.zzc(null);
                        return;
                    }
                    try {
                        int size = list.size();
                        for (int i = 0; i < size; i++) {
                            ApkChecksum apkChecksum = (ApkChecksum) list.get(i);
                            if (apkChecksum.getType() == 8) {
                                zzgbtVar.zzc(zzatm.zzb(apkChecksum.getValue()));
                                return;
                            }
                        }
                        zzgbtVar.zzc(null);
                    } catch (Throwable unused) {
                        zzgbtVar.zzc(null);
                    }
                }
            });
            return (String) zzgbtVarZze.get();
        } catch (PackageManager.NameNotFoundException | InterruptedException | NoClassDefFoundError | CertificateEncodingException | CertificateException | ExecutionException unused) {
            return null;
        }
    }
}
