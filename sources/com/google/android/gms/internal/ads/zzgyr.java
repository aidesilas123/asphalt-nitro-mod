package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgyr {
    public static final /* synthetic */ int zza = 0;
    private static final Class zzb;
    private static final zzgzg zzc;
    private static final zzgzg zzd;

    static {
        Class<?> cls;
        Class<?> cls2;
        zzgzg zzgzgVar = null;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        zzb = cls;
        try {
            cls2 = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused2) {
            cls2 = null;
        }
        if (cls2 != null) {
            try {
                zzgzgVar = (zzgzg) cls2.getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (Throwable unused3) {
            }
        }
        zzc = zzgzgVar;
        zzd = new zzgzi();
    }

    public static void zzA(int i, List list, zzgvu zzgvuVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgvuVar.zzu(i, list, z);
    }

    public static void zzB(int i, List list, zzgvu zzgvuVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgvuVar.zzx(i, list, z);
    }

    public static void zzC(int i, List list, zzgvu zzgvuVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgvuVar.zzz(i, list, z);
    }

    public static void zzD(int i, List list, zzgvu zzgvuVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgvuVar.zzB(i, list, z);
    }

    public static void zzE(int i, List list, zzgvu zzgvuVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgvuVar.zzD(i, list, z);
    }

    public static void zzF(int i, List list, zzgvu zzgvuVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgvuVar.zzI(i, list, z);
    }

    public static void zzG(int i, List list, zzgvu zzgvuVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgvuVar.zzK(i, list, z);
    }

    static int zza(List list) {
        int iZzx;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgwn) {
            zzgwn zzgwnVar = (zzgwn) list;
            iZzx = 0;
            while (i < size) {
                iZzx += zzgvt.zzx(zzgwnVar.zze(i));
                i++;
            }
        } else {
            iZzx = 0;
            while (i < size) {
                iZzx += zzgvt.zzx(((Integer) list.get(i)).intValue());
                i++;
            }
        }
        return iZzx;
    }

    static int zzb(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzgvt.zzA(i << 3) + 4);
    }

    static int zzc(List list) {
        return list.size() * 4;
    }

    static int zzd(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzgvt.zzA(i << 3) + 8);
    }

    static int zze(List list) {
        return list.size() * 8;
    }

    static int zzf(List list) {
        int iZzx;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgwn) {
            zzgwn zzgwnVar = (zzgwn) list;
            iZzx = 0;
            while (i < size) {
                iZzx += zzgvt.zzx(zzgwnVar.zze(i));
                i++;
            }
        } else {
            iZzx = 0;
            while (i < size) {
                iZzx += zzgvt.zzx(((Integer) list.get(i)).intValue());
                i++;
            }
        }
        return iZzx;
    }

    static int zzg(List list) {
        int iZzB;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgxl) {
            zzgxl zzgxlVar = (zzgxl) list;
            iZzB = 0;
            while (i < size) {
                iZzB += zzgvt.zzB(zzgxlVar.zze(i));
                i++;
            }
        } else {
            iZzB = 0;
            while (i < size) {
                iZzB += zzgvt.zzB(((Long) list.get(i)).longValue());
                i++;
            }
        }
        return iZzB;
    }

    static int zzh(int i, Object obj, zzgyp zzgypVar) {
        int i2 = i << 3;
        if (!(obj instanceof zzgxc)) {
            return zzgvt.zzA(i2) + zzgvt.zzy((zzgxw) obj, zzgypVar);
        }
        int i3 = zzgvt.zzf;
        int iZza = ((zzgxc) obj).zza();
        return zzgvt.zzA(i2) + zzgvt.zzA(iZza) + iZza;
    }

    static int zzi(List list) {
        int iZzA;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgwn) {
            zzgwn zzgwnVar = (zzgwn) list;
            iZzA = 0;
            while (i < size) {
                int iZze = zzgwnVar.zze(i);
                iZzA += zzgvt.zzA((iZze >> 31) ^ (iZze + iZze));
                i++;
            }
        } else {
            iZzA = 0;
            while (i < size) {
                int iIntValue = ((Integer) list.get(i)).intValue();
                iZzA += zzgvt.zzA((iIntValue >> 31) ^ (iIntValue + iIntValue));
                i++;
            }
        }
        return iZzA;
    }

    static int zzj(List list) {
        int iZzB;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgxl) {
            zzgxl zzgxlVar = (zzgxl) list;
            iZzB = 0;
            while (i < size) {
                long jZze = zzgxlVar.zze(i);
                iZzB += zzgvt.zzB((jZze >> 63) ^ (jZze + jZze));
                i++;
            }
        } else {
            iZzB = 0;
            while (i < size) {
                long jLongValue = ((Long) list.get(i)).longValue();
                iZzB += zzgvt.zzB((jLongValue >> 63) ^ (jLongValue + jLongValue));
                i++;
            }
        }
        return iZzB;
    }

    static int zzk(List list) {
        int iZzA;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgwn) {
            zzgwn zzgwnVar = (zzgwn) list;
            iZzA = 0;
            while (i < size) {
                iZzA += zzgvt.zzA(zzgwnVar.zze(i));
                i++;
            }
        } else {
            iZzA = 0;
            while (i < size) {
                iZzA += zzgvt.zzA(((Integer) list.get(i)).intValue());
                i++;
            }
        }
        return iZzA;
    }

    static int zzl(List list) {
        int iZzB;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgxl) {
            zzgxl zzgxlVar = (zzgxl) list;
            iZzB = 0;
            while (i < size) {
                iZzB += zzgvt.zzB(zzgxlVar.zze(i));
                i++;
            }
        } else {
            iZzB = 0;
            while (i < size) {
                iZzB += zzgvt.zzB(((Long) list.get(i)).longValue());
                i++;
            }
        }
        return iZzB;
    }

    public static zzgzg zzm() {
        return zzc;
    }

    public static zzgzg zzn() {
        return zzd;
    }

    static Object zzo(Object obj, int i, List list, zzgwq zzgwqVar, Object obj2, zzgzg zzgzgVar) {
        if (zzgwqVar == null) {
            return obj2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int iIntValue = ((Integer) list.get(i3)).intValue();
                if (zzgwqVar.zza(iIntValue)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(iIntValue));
                    }
                    i2++;
                } else {
                    obj2 = zzp(obj, i, iIntValue, obj2, zzgzgVar);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
                return obj2;
            }
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                int iIntValue2 = ((Integer) it.next()).intValue();
                if (!zzgwqVar.zza(iIntValue2)) {
                    obj2 = zzp(obj, i, iIntValue2, obj2, zzgzgVar);
                    it.remove();
                }
            }
        }
        return obj2;
    }

    static Object zzp(Object obj, int i, int i2, Object obj2, zzgzg zzgzgVar) {
        if (obj2 == null) {
            obj2 = zzgzgVar.zzc(obj);
        }
        zzgzgVar.zzl(obj2, i, i2);
        return obj2;
    }

    static void zzq(zzgzg zzgzgVar, Object obj, Object obj2) {
        zzgzgVar.zzo(obj, zzgzgVar.zze(zzgzgVar.zzd(obj), zzgzgVar.zzd(obj2)));
    }

    public static void zzr(Class cls) {
        Class cls2;
        if (!zzgwm.class.isAssignableFrom(cls) && (cls2 = zzb) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    static boolean zzs(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static void zzt(int i, List list, zzgvu zzgvuVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgvuVar.zzc(i, list, z);
    }

    public static void zzu(int i, List list, zzgvu zzgvuVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgvuVar.zzg(i, list, z);
    }

    public static void zzv(int i, List list, zzgvu zzgvuVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgvuVar.zzj(i, list, z);
    }

    public static void zzw(int i, List list, zzgvu zzgvuVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgvuVar.zzl(i, list, z);
    }

    public static void zzx(int i, List list, zzgvu zzgvuVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgvuVar.zzn(i, list, z);
    }

    public static void zzy(int i, List list, zzgvu zzgvuVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgvuVar.zzp(i, list, z);
    }

    public static void zzz(int i, List list, zzgvu zzgvuVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgvuVar.zzs(i, list, z);
    }
}
