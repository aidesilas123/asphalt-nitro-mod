package com.google.android.gms.internal.ads;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzauw {
    protected static final String zza = "zzauw";
    private final zzatj zzb;
    private final String zzc;
    private final String zzd;
    private final Class[] zzf;
    private volatile Method zze = null;
    private final CountDownLatch zzg = new CountDownLatch(1);

    public zzauw(zzatj zzatjVar, String str, String str2, Class... clsArr) {
        this.zzb = zzatjVar;
        this.zzc = str;
        this.zzd = str2;
        this.zzf = clsArr;
        zzatjVar.zzk().submit(new zzauv(this));
    }

    static /* bridge */ /* synthetic */ void zzb(zzauw zzauwVar) {
        try {
            zzatj zzatjVar = zzauwVar.zzb;
            Class clsLoadClass = zzatjVar.zzi().loadClass(zzauwVar.zzc(zzatjVar.zzu(), zzauwVar.zzc));
            if (clsLoadClass != null) {
                zzauwVar.zze = clsLoadClass.getMethod(zzauwVar.zzc(zzauwVar.zzb.zzu(), zzauwVar.zzd), zzauwVar.zzf);
            }
        } catch (zzasn | UnsupportedEncodingException | ClassNotFoundException | NoSuchMethodException | NullPointerException unused) {
        } catch (Throwable th) {
            zzauwVar.zzg.countDown();
            throw th;
        }
        zzauwVar.zzg.countDown();
    }

    private final String zzc(byte[] bArr, String str) throws UnsupportedEncodingException, zzasn {
        return new String(this.zzb.zze().zzb(bArr, str), C.UTF8_NAME);
    }

    public final Method zza() {
        if (this.zze != null) {
            return this.zze;
        }
        try {
            if (this.zzg.await(2L, TimeUnit.SECONDS)) {
                return this.zze;
            }
            return null;
        } catch (InterruptedException unused) {
            return null;
        }
    }
}
