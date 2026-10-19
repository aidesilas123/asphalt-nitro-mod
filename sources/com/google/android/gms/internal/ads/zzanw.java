package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzanw implements zzamk {
    private final zzanv zzc;
    private final Map zza = new LinkedHashMap(16, 0.75f, true);
    private long zzb = 0;
    private final int zzd = 5242880;

    public zzanw(zzanv zzanvVar, int i) {
        this.zzc = zzanvVar;
    }

    public zzanw(File file, int i) {
        this.zzc = new zzans(this, file);
    }

    static int zze(InputStream inputStream) throws IOException {
        return (zzn(inputStream) << 24) | zzn(inputStream) | (zzn(inputStream) << 8) | (zzn(inputStream) << 16);
    }

    static long zzf(InputStream inputStream) throws IOException {
        return (((long) zzn(inputStream)) & 255) | ((((long) zzn(inputStream)) & 255) << 8) | ((((long) zzn(inputStream)) & 255) << 16) | ((((long) zzn(inputStream)) & 255) << 24) | ((((long) zzn(inputStream)) & 255) << 32) | ((((long) zzn(inputStream)) & 255) << 40) | ((((long) zzn(inputStream)) & 255) << 48) | ((((long) zzn(inputStream)) & 255) << 56);
    }

    static String zzh(zzanu zzanuVar) throws IOException {
        return new String(zzm(zzanuVar, zzf(zzanuVar)), C.UTF8_NAME);
    }

    static void zzj(OutputStream outputStream, int i) throws IOException {
        outputStream.write(i & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write((i >> 24) & 255);
    }

    static void zzk(OutputStream outputStream, long j) throws IOException {
        outputStream.write((byte) j);
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    static void zzl(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes(C.UTF8_NAME);
        int length = bytes.length;
        zzk(outputStream, length);
        outputStream.write(bytes, 0, length);
    }

    @VisibleForTesting
    static byte[] zzm(zzanu zzanuVar, long j) throws IOException {
        long jZza = zzanuVar.zza();
        if (j >= 0 && j <= jZza) {
            int i = (int) j;
            if (i == j) {
                byte[] bArr = new byte[i];
                new DataInputStream(zzanuVar).readFully(bArr);
                return bArr;
            }
        }
        throw new IOException("streamToBytes length=" + j + ", maxLength=" + jZza);
    }

    private static int zzn(InputStream inputStream) throws IOException {
        int i = inputStream.read();
        if (i != -1) {
            return i;
        }
        throw new EOFException();
    }

    private final void zzo(String str, zzant zzantVar) {
        if (this.zza.containsKey(str)) {
            this.zzb += zzantVar.zza - ((zzant) this.zza.get(str)).zza;
        } else {
            this.zzb += zzantVar.zza;
        }
        this.zza.put(str, zzantVar);
    }

    private final void zzp(String str) {
        zzant zzantVar = (zzant) this.zza.remove(str);
        if (zzantVar != null) {
            this.zzb -= zzantVar.zza;
        }
    }

    private static final String zzq(String str) {
        int length = str.length() / 2;
        return String.valueOf(String.valueOf(str.substring(0, length).hashCode())).concat(String.valueOf(String.valueOf(str.substring(length).hashCode())));
    }

    @Override // com.google.android.gms.internal.ads.zzamk
    public final synchronized zzamj zza(String str) {
        zzant zzantVar = (zzant) this.zza.get(str);
        if (zzantVar == null) {
            return null;
        }
        File fileZzg = zzg(str);
        try {
            zzanu zzanuVar = new zzanu(new BufferedInputStream(new FileInputStream(fileZzg)), fileZzg.length());
            try {
                zzant zzantVarZza = zzant.zza(zzanuVar);
                if (!TextUtils.equals(str, zzantVarZza.zzb)) {
                    zzanm.zza("%s: key=%s, found=%s", fileZzg.getAbsolutePath(), str, zzantVarZza.zzb);
                    zzp(str);
                    return null;
                }
                byte[] bArrZzm = zzm(zzanuVar, zzanuVar.zza());
                zzamj zzamjVar = new zzamj();
                zzamjVar.zza = bArrZzm;
                zzamjVar.zzb = zzantVar.zzc;
                zzamjVar.zzc = zzantVar.zzd;
                zzamjVar.zzd = zzantVar.zze;
                zzamjVar.zze = zzantVar.zzf;
                zzamjVar.zzf = zzantVar.zzg;
                List<zzams> list = zzantVar.zzh;
                TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
                for (zzams zzamsVar : list) {
                    treeMap.put(zzamsVar.zza(), zzamsVar.zzb());
                }
                zzamjVar.zzg = treeMap;
                zzamjVar.zzh = Collections.unmodifiableList(zzantVar.zzh);
                return zzamjVar;
            } finally {
                zzanuVar.close();
            }
        } catch (IOException e2) {
            zzanm.zza("%s: %s", fileZzg.getAbsolutePath(), e2.toString());
            zzi(str);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamk
    public final synchronized void zzb() {
        File fileZza = this.zzc.zza();
        if (fileZza.exists()) {
            File[] fileArrListFiles = fileZza.listFiles();
            if (fileArrListFiles != null) {
                for (File file : fileArrListFiles) {
                    try {
                        long length = file.length();
                        zzanu zzanuVar = new zzanu(new BufferedInputStream(new FileInputStream(file)), length);
                        try {
                            zzant zzantVarZza = zzant.zza(zzanuVar);
                            zzantVarZza.zza = length;
                            zzo(zzantVarZza.zzb, zzantVarZza);
                            zzanuVar.close();
                        } catch (Throwable th) {
                            zzanuVar.close();
                            throw th;
                        }
                    } catch (IOException unused) {
                        file.delete();
                    }
                }
            }
        } else if (!fileZza.mkdirs()) {
            zzanm.zzb("Unable to create cache dir %s", fileZza.getAbsolutePath());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamk
    public final synchronized void zzc(String str, boolean z) {
        zzamj zzamjVarZza = zza(str);
        if (zzamjVarZza != null) {
            zzamjVarZza.zzf = 0L;
            zzamjVarZza.zze = 0L;
            zzd(str, zzamjVarZza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamk
    public final synchronized void zzd(String str, zzamj zzamjVar) {
        long j;
        long j2 = this.zzb;
        int length = zzamjVar.zza.length;
        long j3 = j2 + ((long) length);
        int i = this.zzd;
        if (j3 <= i || length <= i * 0.9f) {
            File fileZzg = zzg(str);
            try {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(fileZzg));
                zzant zzantVar = new zzant(str, zzamjVar);
                try {
                    zzj(bufferedOutputStream, 538247942);
                    zzl(bufferedOutputStream, zzantVar.zzb);
                    String str2 = zzantVar.zzc;
                    if (str2 == null) {
                        str2 = "";
                    }
                    zzl(bufferedOutputStream, str2);
                    zzk(bufferedOutputStream, zzantVar.zzd);
                    zzk(bufferedOutputStream, zzantVar.zze);
                    zzk(bufferedOutputStream, zzantVar.zzf);
                    zzk(bufferedOutputStream, zzantVar.zzg);
                    List<zzams> list = zzantVar.zzh;
                    if (list != null) {
                        zzj(bufferedOutputStream, list.size());
                        for (zzams zzamsVar : list) {
                            zzl(bufferedOutputStream, zzamsVar.zza());
                            zzl(bufferedOutputStream, zzamsVar.zzb());
                        }
                    } else {
                        zzj(bufferedOutputStream, 0);
                    }
                    bufferedOutputStream.flush();
                    bufferedOutputStream.write(zzamjVar.zza);
                    bufferedOutputStream.close();
                    zzantVar.zza = fileZzg.length();
                    zzo(str, zzantVar);
                    if (this.zzb >= this.zzd) {
                        if (zzanm.zzb) {
                            zzanm.zzd("Pruning old cache entries.", new Object[0]);
                        }
                        long j4 = this.zzb;
                        long jElapsedRealtime = SystemClock.elapsedRealtime();
                        Iterator it = this.zza.entrySet().iterator();
                        int i2 = 0;
                        while (true) {
                            if (!it.hasNext()) {
                                j = jElapsedRealtime;
                                break;
                            }
                            zzant zzantVar2 = (zzant) ((Map.Entry) it.next()).getValue();
                            if (zzg(zzantVar2.zzb).delete()) {
                                j = jElapsedRealtime;
                                this.zzb -= zzantVar2.zza;
                            } else {
                                j = jElapsedRealtime;
                                String str3 = zzantVar2.zzb;
                                zzanm.zza("Could not delete cache entry for key=%s, filename=%s", str3, zzq(str3));
                            }
                            it.remove();
                            i2++;
                            if (this.zzb < this.zzd * 0.9f) {
                                break;
                            } else {
                                jElapsedRealtime = j;
                            }
                        }
                        if (zzanm.zzb) {
                            zzanm.zzd("pruned %d files, %d bytes, %d ms", Integer.valueOf(i2), Long.valueOf(this.zzb - j4), Long.valueOf(SystemClock.elapsedRealtime() - j));
                        }
                    }
                } catch (IOException e2) {
                    zzanm.zza("%s", e2.toString());
                    bufferedOutputStream.close();
                    zzanm.zza("Failed to write header for %s", fileZzg.getAbsolutePath());
                    throw new IOException();
                }
            } catch (IOException unused) {
                if (!fileZzg.delete()) {
                    zzanm.zza("Could not clean up file %s", fileZzg.getAbsolutePath());
                }
                if (!this.zzc.zza().exists()) {
                    zzanm.zza("Re-initializing cache after external clearing.", new Object[0]);
                    this.zza.clear();
                    this.zzb = 0L;
                    zzb();
                }
            }
        }
    }

    public final File zzg(String str) {
        return new File(this.zzc.zza(), zzq(str));
    }

    public final synchronized void zzi(String str) {
        boolean zDelete = zzg(str).delete();
        zzp(str);
        if (zDelete) {
            return;
        }
        zzanm.zza("Could not delete cache entry for key=%s, filename=%s", str, zzq(str));
    }
}
