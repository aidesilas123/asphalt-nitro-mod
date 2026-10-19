package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.Hex;
import com.json.mediationsdk.utils.IronSourceConstants;
import java.io.File;
import java.util.HashSet;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfpp {
    private static final Object zza = new Object();
    private final Context zzb;
    private final SharedPreferences zzc;
    private final String zzd;
    private final zzfow zze;
    private boolean zzf;

    public zzfpp(@NonNull Context context, @NonNull int i, @NonNull zzfow zzfowVar, boolean z) {
        this.zzf = false;
        this.zzb = context;
        this.zzd = Integer.toString(i - 1);
        this.zzc = context.getSharedPreferences("pcvmspf", 0);
        this.zze = zzfowVar;
        this.zzf = z;
    }

    private final File zze(@NonNull String str) {
        return new File(new File(this.zzb.getDir("pccache", 0), this.zzd), str);
    }

    private static String zzf(@NonNull zzavc zzavcVar) {
        zzave zzaveVarZze = zzavf.zze();
        zzaveVarZze.zze(zzavcVar.zzd().zzk());
        zzaveVarZze.zza(zzavcVar.zzd().zzj());
        zzaveVarZze.zzb(zzavcVar.zzd().zza());
        zzaveVarZze.zzd(zzavcVar.zzd().zzd());
        zzaveVarZze.zzc(zzavcVar.zzd().zzc());
        return Hex.bytesToStringLowercase(((zzavf) zzaveVarZze.zzal()).zzax());
    }

    private final String zzg() {
        return "FBAMTD".concat(String.valueOf(this.zzd));
    }

    private final String zzh() {
        return "LATMTD".concat(String.valueOf(this.zzd));
    }

    private final void zzi(int i, long j) {
        this.zze.zza(i, j);
    }

    private final void zzj(int i, long j, String str) {
        this.zze.zzb(i, j, str);
    }

    @Nullable
    private final zzavf zzk(int i) {
        String string = i == 1 ? this.zzc.getString(zzh(), null) : this.zzc.getString(zzg(), null);
        if (string == null) {
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            byte[] bArrStringToBytes = Hex.stringToBytes(string);
            zzgve zzgveVar = zzgve.zzb;
            return zzavf.zzi(zzgve.zzv(bArrStringToBytes, 0, bArrStringToBytes.length), this.zzf ? zzgvy.zza() : zzgvy.zzb());
        } catch (zzgwy unused) {
            return null;
        } catch (NullPointerException unused2) {
            zzi(2029, jCurrentTimeMillis);
            return null;
        } catch (RuntimeException unused3) {
            zzi(2032, jCurrentTimeMillis);
            return null;
        }
    }

    public final boolean zza(@NonNull zzavc zzavcVar) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (zza) {
            if (!zzfpj.zze(new File(zze(zzavcVar.zzd().zzk()), "pcbc"), zzavcVar.zze().zzA())) {
                zzi(IronSourceConstants.NT_INSTANCE_COLLECT_TOKEN, jCurrentTimeMillis);
                return false;
            }
            String strZzf = zzf(zzavcVar);
            SharedPreferences.Editor editorEdit = this.zzc.edit();
            editorEdit.putString(zzh(), strZzf);
            boolean zCommit = editorEdit.commit();
            if (zCommit) {
                zzi(5015, jCurrentTimeMillis);
            } else {
                zzi(IronSourceConstants.NT_INSTANCE_COLLECT_TOKEN_SUCCESS, jCurrentTimeMillis);
            }
            return zCommit;
        }
    }

    public final boolean zzb(@NonNull zzavc zzavcVar, @Nullable zzfpo zzfpoVar) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (zza) {
            zzavf zzavfVarZzk = zzk(1);
            String strZzk = zzavcVar.zzd().zzk();
            if (zzavfVarZzk != null && zzavfVarZzk.zzk().equals(strZzk)) {
                zzi(4014, jCurrentTimeMillis);
                return false;
            }
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            File fileZze = zze(strZzk);
            if (fileZze.exists()) {
                zzj(IronSourceConstants.NT_INSTANCE_COLLECT_TOKEN_TIMED_OUT, jCurrentTimeMillis2, "d:" + (true != fileZze.isDirectory() ? "0" : "1") + ",f:" + (true != fileZze.isFile() ? "0" : "1"));
                zzi(4015, jCurrentTimeMillis2);
            } else if (!fileZze.mkdirs()) {
                zzj(4024, jCurrentTimeMillis2, "cw:".concat(true != fileZze.canWrite() ? "0" : "1"));
                zzi(4015, jCurrentTimeMillis2);
                return false;
            }
            File fileZze2 = zze(strZzk);
            File file = new File(fileZze2, "pcam.jar");
            File file2 = new File(fileZze2, "pcbc");
            if (!zzfpj.zze(file, zzavcVar.zzf().zzA())) {
                zzi(4016, jCurrentTimeMillis);
                return false;
            }
            if (!zzfpj.zze(file2, zzavcVar.zze().zzA())) {
                zzi(4017, jCurrentTimeMillis);
                return false;
            }
            if (zzfpoVar != null && !zzfpoVar.zza(file)) {
                zzi(4018, jCurrentTimeMillis);
                zzfpj.zzd(fileZze2);
                return false;
            }
            String strZzf = zzf(zzavcVar);
            long jCurrentTimeMillis3 = System.currentTimeMillis();
            String string = this.zzc.getString(zzh(), null);
            SharedPreferences.Editor editorEdit = this.zzc.edit();
            editorEdit.putString(zzh(), strZzf);
            if (string != null) {
                editorEdit.putString(zzg(), string);
            }
            if (!editorEdit.commit()) {
                zzi(4019, jCurrentTimeMillis3);
                return false;
            }
            HashSet hashSet = new HashSet();
            zzavf zzavfVarZzk2 = zzk(1);
            if (zzavfVarZzk2 != null) {
                hashSet.add(zzavfVarZzk2.zzk());
            }
            zzavf zzavfVarZzk3 = zzk(2);
            if (zzavfVarZzk3 != null) {
                hashSet.add(zzavfVarZzk3.zzk());
            }
            for (File file3 : new File(this.zzb.getDir("pccache", 0), this.zzd).listFiles()) {
                if (!hashSet.contains(file3.getName())) {
                    zzfpj.zzd(file3);
                }
            }
            zzi(5014, jCurrentTimeMillis);
            return true;
        }
    }

    @Nullable
    public final zzfph zzc(int i) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (zza) {
            zzavf zzavfVarZzk = zzk(1);
            if (zzavfVarZzk == null) {
                zzi(IronSourceConstants.NT_INSTANCE_COLLECT_TOKEN_FAILED, jCurrentTimeMillis);
                return null;
            }
            File fileZze = zze(zzavfVarZzk.zzk());
            File file = new File(fileZze, "pcam.jar");
            if (!file.exists()) {
                file = new File(fileZze, "pcam");
            }
            File file2 = new File(fileZze, "pcbc");
            File file3 = new File(fileZze, "pcopt");
            zzi(5016, jCurrentTimeMillis);
            return new zzfph(zzavfVarZzk, file, file2, file3);
        }
    }

    public final boolean zzd(int i) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (zza) {
            zzavf zzavfVarZzk = zzk(1);
            if (zzavfVarZzk == null) {
                zzi(4025, jCurrentTimeMillis);
                return false;
            }
            File fileZze = zze(zzavfVarZzk.zzk());
            if (!new File(fileZze, "pcam.jar").exists()) {
                zzi(4026, jCurrentTimeMillis);
                return false;
            }
            if (new File(fileZze, "pcbc").exists()) {
                zzi(5019, jCurrentTimeMillis);
                return true;
            }
            zzi(4027, jCurrentTimeMillis);
            return false;
        }
    }
}
