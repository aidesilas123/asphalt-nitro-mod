package com.google.android.gms.internal.ads;

import com.google.android.gms.drive.DriveFile;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgxz<T> implements zzgyp<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzgzq.zzi();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzgxw zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final int[] zzj;
    private final int zzk;
    private final int zzl;
    private final zzgxk zzm;
    private final zzgzg zzn;
    private final zzgvz zzo;
    private final zzgyb zzp;
    private final zzgxr zzq;

    private zzgxz(int[] iArr, Object[] objArr, int i, int i2, zzgxw zzgxwVar, int i3, boolean z, int[] iArr2, int i4, int i5, zzgyb zzgybVar, zzgxk zzgxkVar, zzgzg zzgzgVar, zzgvz zzgvzVar, zzgxr zzgxrVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        this.zzi = zzgxwVar instanceof zzgwm;
        boolean z2 = false;
        if (zzgvzVar != null && zzgvzVar.zzh(zzgxwVar)) {
            z2 = true;
        }
        this.zzh = z2;
        this.zzj = iArr2;
        this.zzk = i4;
        this.zzl = i5;
        this.zzp = zzgybVar;
        this.zzm = zzgxkVar;
        this.zzn = zzgzgVar;
        this.zzo = zzgvzVar;
        this.zzg = zzgxwVar;
        this.zzq = zzgxrVar;
    }

    private final Object zzA(Object obj, int i) {
        zzgyp zzgypVarZzx = zzx(i);
        int iZzu = zzu(i) & 1048575;
        if (!zzN(obj, i)) {
            return zzgypVarZzx.zze();
        }
        Object object = zzb.getObject(obj, iZzu);
        if (zzQ(object)) {
            return object;
        }
        Object objZze = zzgypVarZzx.zze();
        if (object != null) {
            zzgypVarZzx.zzg(objZze, object);
        }
        return objZze;
    }

    private final Object zzB(Object obj, int i, int i2) {
        zzgyp zzgypVarZzx = zzx(i2);
        if (!zzR(obj, i, i2)) {
            return zzgypVarZzx.zze();
        }
        Object object = zzb.getObject(obj, zzu(i2) & 1048575);
        if (zzQ(object)) {
            return object;
        }
        Object objZze = zzgypVarZzx.zze();
        if (object != null) {
            zzgypVarZzx.zzg(objZze, object);
        }
        return objZze;
    }

    private static Field zzC(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    private static void zzD(Object obj) {
        if (!zzQ(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
    }

    private final void zzE(Object obj, Object obj2, int i) {
        if (zzN(obj2, i)) {
            int iZzu = zzu(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = iZzu;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + obj2.toString());
            }
            zzgyp zzgypVarZzx = zzx(i);
            if (!zzN(obj, i)) {
                if (zzQ(object)) {
                    Object objZze = zzgypVarZzx.zze();
                    zzgypVarZzx.zzg(objZze, object);
                    unsafe.putObject(obj, j, objZze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzH(obj, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzQ(object2)) {
                Object objZze2 = zzgypVarZzx.zze();
                zzgypVarZzx.zzg(objZze2, object2);
                unsafe.putObject(obj, j, objZze2);
                object2 = objZze2;
            }
            zzgypVarZzx.zzg(object2, object);
        }
    }

    private final void zzF(Object obj, Object obj2, int i) {
        int i2 = this.zzc[i];
        if (zzR(obj2, i2, i)) {
            int iZzu = zzu(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = iZzu;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + obj2.toString());
            }
            zzgyp zzgypVarZzx = zzx(i);
            if (!zzR(obj, i2, i)) {
                if (zzQ(object)) {
                    Object objZze = zzgypVarZzx.zze();
                    zzgypVarZzx.zzg(objZze, object);
                    unsafe.putObject(obj, j, objZze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzI(obj, i2, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzQ(object2)) {
                Object objZze2 = zzgypVarZzx.zze();
                zzgypVarZzx.zzg(objZze2, object2);
                unsafe.putObject(obj, j, objZze2);
                object2 = objZze2;
            }
            zzgypVarZzx.zzg(object2, object);
        }
    }

    private final void zzG(Object obj, int i, zzgyh zzgyhVar) throws IOException {
        long j = i & 1048575;
        if (zzM(i)) {
            zzgzq.zzv(obj, j, zzgyhVar.zzs());
        } else if (this.zzi) {
            zzgzq.zzv(obj, j, zzgyhVar.zzr());
        } else {
            zzgzq.zzv(obj, j, zzgyhVar.zzp());
        }
    }

    private final void zzH(Object obj, int i) {
        int iZzr = zzr(i);
        long j = 1048575 & iZzr;
        if (j == 1048575) {
            return;
        }
        zzgzq.zzt(obj, j, (1 << (iZzr >>> 20)) | zzgzq.zzd(obj, j));
    }

    private final void zzI(Object obj, int i, int i2) {
        zzgzq.zzt(obj, zzr(i2) & 1048575, i);
    }

    private final void zzJ(Object obj, int i, Object obj2) {
        zzb.putObject(obj, zzu(i) & 1048575, obj2);
        zzH(obj, i);
    }

    private final void zzK(Object obj, int i, int i2, Object obj2) {
        zzb.putObject(obj, zzu(i2) & 1048575, obj2);
        zzI(obj, i, i2);
    }

    private final boolean zzL(Object obj, Object obj2, int i) {
        return zzN(obj, i) == zzN(obj2, i);
    }

    private static boolean zzM(int i) {
        return (i & DriveFile.MODE_WRITE_ONLY) != 0;
    }

    private final boolean zzN(Object obj, int i) {
        int iZzr = zzr(i);
        long j = iZzr & 1048575;
        if (j != 1048575) {
            return (zzgzq.zzd(obj, j) & (1 << (iZzr >>> 20))) != 0;
        }
        int iZzu = zzu(i);
        long j2 = iZzu & 1048575;
        switch (zzt(iZzu)) {
            case 0:
                return Double.doubleToRawLongBits(zzgzq.zzb(obj, j2)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzgzq.zzc(obj, j2)) != 0;
            case 2:
                return zzgzq.zzf(obj, j2) != 0;
            case 3:
                return zzgzq.zzf(obj, j2) != 0;
            case 4:
                return zzgzq.zzd(obj, j2) != 0;
            case 5:
                return zzgzq.zzf(obj, j2) != 0;
            case 6:
                return zzgzq.zzd(obj, j2) != 0;
            case 7:
                return zzgzq.zzz(obj, j2);
            case 8:
                Object objZzh = zzgzq.zzh(obj, j2);
                if (objZzh instanceof String) {
                    return !((String) objZzh).isEmpty();
                }
                if (objZzh instanceof zzgve) {
                    return !zzgve.zzb.equals(objZzh);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzgzq.zzh(obj, j2) != null;
            case 10:
                return !zzgve.zzb.equals(zzgzq.zzh(obj, j2));
            case 11:
                return zzgzq.zzd(obj, j2) != 0;
            case 12:
                return zzgzq.zzd(obj, j2) != 0;
            case 13:
                return zzgzq.zzd(obj, j2) != 0;
            case 14:
                return zzgzq.zzf(obj, j2) != 0;
            case 15:
                return zzgzq.zzd(obj, j2) != 0;
            case 16:
                return zzgzq.zzf(obj, j2) != 0;
            case 17:
                return zzgzq.zzh(obj, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzO(Object obj, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? zzN(obj, i) : (i3 & i4) != 0;
    }

    private static boolean zzP(Object obj, int i, zzgyp zzgypVar) {
        return zzgypVar.zzk(zzgzq.zzh(obj, i & 1048575));
    }

    private static boolean zzQ(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzgwm) {
            return ((zzgwm) obj).zzaY();
        }
        return true;
    }

    private final boolean zzR(Object obj, int i, int i2) {
        return zzgzq.zzd(obj, (long) (zzr(i2) & 1048575)) == i;
    }

    private static boolean zzS(Object obj, long j) {
        return ((Boolean) zzgzq.zzh(obj, j)).booleanValue();
    }

    private static final void zzT(int i, Object obj, zzgvu zzgvuVar) throws IOException {
        if (obj instanceof String) {
            zzgvuVar.zzF(i, (String) obj);
        } else {
            zzgvuVar.zzd(i, (zzgve) obj);
        }
    }

    static zzgzh zzd(Object obj) {
        zzgwm zzgwmVar = (zzgwm) obj;
        zzgzh zzgzhVar = zzgwmVar.zzc;
        if (zzgzhVar != zzgzh.zzc()) {
            return zzgzhVar;
        }
        zzgzh zzgzhVarZzf = zzgzh.zzf();
        zzgwmVar.zzc = zzgzhVarZzf;
        return zzgzhVarZzf;
    }

    /* JADX WARN: Removed duplicated region for block: B:125:0x0264  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0267  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x027e  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0281  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static com.google.android.gms.internal.ads.zzgxz zzl(java.lang.Class r33, com.google.android.gms.internal.ads.zzgxt r34, com.google.android.gms.internal.ads.zzgyb r35, com.google.android.gms.internal.ads.zzgxk r36, com.google.android.gms.internal.ads.zzgzg r37, com.google.android.gms.internal.ads.zzgvz r38, com.google.android.gms.internal.ads.zzgxr r39) {
        /*
            Method dump skipped, instruction units count: 1029
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgxz.zzl(java.lang.Class, com.google.android.gms.internal.ads.zzgxt, com.google.android.gms.internal.ads.zzgyb, com.google.android.gms.internal.ads.zzgxk, com.google.android.gms.internal.ads.zzgzg, com.google.android.gms.internal.ads.zzgvz, com.google.android.gms.internal.ads.zzgxr):com.google.android.gms.internal.ads.zzgxz");
    }

    private static double zzn(Object obj, long j) {
        return ((Double) zzgzq.zzh(obj, j)).doubleValue();
    }

    private static float zzo(Object obj, long j) {
        return ((Float) zzgzq.zzh(obj, j)).floatValue();
    }

    private static int zzp(Object obj, long j) {
        return ((Integer) zzgzq.zzh(obj, j)).intValue();
    }

    private final int zzq(int i) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzs(i, 0);
    }

    private final int zzr(int i) {
        return this.zzc[i + 2];
    }

    private final int zzs(int i, int i2) {
        int length = (this.zzc.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.zzc[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    private static int zzt(int i) {
        return (i >>> 20) & 255;
    }

    private final int zzu(int i) {
        return this.zzc[i + 1];
    }

    private static long zzv(Object obj, long j) {
        return ((Long) zzgzq.zzh(obj, j)).longValue();
    }

    private final zzgwq zzw(int i) {
        int i2 = i / 3;
        return (zzgwq) this.zzd[i2 + i2 + 1];
    }

    private final zzgyp zzx(int i) {
        Object[] objArr = this.zzd;
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzgyp zzgypVar = (zzgyp) objArr[i3];
        if (zzgypVar != null) {
            return zzgypVar;
        }
        zzgyp zzgypVarZzb = zzgye.zza().zzb((Class) objArr[i3 + 1]);
        this.zzd[i3] = zzgypVarZzb;
        return zzgypVarZzb;
    }

    private final Object zzy(Object obj, int i, Object obj2, zzgzg zzgzgVar, Object obj3) {
        int i2 = this.zzc[i];
        Object objZzh = zzgzq.zzh(obj, zzu(i) & 1048575);
        if (objZzh == null || zzw(i) == null) {
            return obj2;
        }
        throw null;
    }

    private final Object zzz(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    /* JADX WARN: Removed duplicated region for block: B:207:0x0558  */
    @Override // com.google.android.gms.internal.ads.zzgyp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int zza(java.lang.Object r19) {
        /*
            Method dump skipped, instruction units count: 2112
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgxz.zza(java.lang.Object):int");
    }

    @Override // com.google.android.gms.internal.ads.zzgyp
    public final int zzb(Object obj) {
        int i;
        long jDoubleToLongBits;
        int i2;
        int iFloatToIntBits;
        int i3;
        int i4 = 0;
        for (int i5 = 0; i5 < this.zzc.length; i5 += 3) {
            int iZzu = zzu(i5);
            int[] iArr = this.zzc;
            int i6 = 1048575 & iZzu;
            int iZzt = zzt(iZzu);
            int i7 = iArr[i5];
            long j = i6;
            int iHashCode = 37;
            switch (iZzt) {
                case 0:
                    i = i4 * 53;
                    jDoubleToLongBits = Double.doubleToLongBits(zzgzq.zzb(obj, j));
                    byte[] bArr = zzgww.zzd;
                    i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 1:
                    i2 = i4 * 53;
                    iFloatToIntBits = Float.floatToIntBits(zzgzq.zzc(obj, j));
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 2:
                    i = i4 * 53;
                    jDoubleToLongBits = zzgzq.zzf(obj, j);
                    byte[] bArr2 = zzgww.zzd;
                    i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 3:
                    i = i4 * 53;
                    jDoubleToLongBits = zzgzq.zzf(obj, j);
                    byte[] bArr3 = zzgww.zzd;
                    i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 4:
                    i2 = i4 * 53;
                    iFloatToIntBits = zzgzq.zzd(obj, j);
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 5:
                    i = i4 * 53;
                    jDoubleToLongBits = zzgzq.zzf(obj, j);
                    byte[] bArr4 = zzgww.zzd;
                    i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 6:
                    i2 = i4 * 53;
                    iFloatToIntBits = zzgzq.zzd(obj, j);
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 7:
                    i2 = i4 * 53;
                    iFloatToIntBits = zzgww.zza(zzgzq.zzz(obj, j));
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 8:
                    i2 = i4 * 53;
                    iFloatToIntBits = ((String) zzgzq.zzh(obj, j)).hashCode();
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 9:
                    i3 = i4 * 53;
                    Object objZzh = zzgzq.zzh(obj, j);
                    if (objZzh != null) {
                        iHashCode = objZzh.hashCode();
                    }
                    i4 = i3 + iHashCode;
                    break;
                case 10:
                    i2 = i4 * 53;
                    iFloatToIntBits = zzgzq.zzh(obj, j).hashCode();
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 11:
                    i2 = i4 * 53;
                    iFloatToIntBits = zzgzq.zzd(obj, j);
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 12:
                    i2 = i4 * 53;
                    iFloatToIntBits = zzgzq.zzd(obj, j);
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 13:
                    i2 = i4 * 53;
                    iFloatToIntBits = zzgzq.zzd(obj, j);
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 14:
                    i = i4 * 53;
                    jDoubleToLongBits = zzgzq.zzf(obj, j);
                    byte[] bArr5 = zzgww.zzd;
                    i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 15:
                    i2 = i4 * 53;
                    iFloatToIntBits = zzgzq.zzd(obj, j);
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 16:
                    i = i4 * 53;
                    jDoubleToLongBits = zzgzq.zzf(obj, j);
                    byte[] bArr6 = zzgww.zzd;
                    i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 17:
                    i3 = i4 * 53;
                    Object objZzh2 = zzgzq.zzh(obj, j);
                    if (objZzh2 != null) {
                        iHashCode = objZzh2.hashCode();
                    }
                    i4 = i3 + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i2 = i4 * 53;
                    iFloatToIntBits = zzgzq.zzh(obj, j).hashCode();
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 50:
                    i2 = i4 * 53;
                    iFloatToIntBits = zzgzq.zzh(obj, j).hashCode();
                    i4 = i2 + iFloatToIntBits;
                    break;
                case 51:
                    if (zzR(obj, i7, i5)) {
                        i = i4 * 53;
                        jDoubleToLongBits = Double.doubleToLongBits(zzn(obj, j));
                        byte[] bArr7 = zzgww.zzd;
                        i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 52:
                    if (zzR(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = Float.floatToIntBits(zzo(obj, j));
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
                case 53:
                    if (zzR(obj, i7, i5)) {
                        i = i4 * 53;
                        jDoubleToLongBits = zzv(obj, j);
                        byte[] bArr8 = zzgww.zzd;
                        i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 54:
                    if (zzR(obj, i7, i5)) {
                        i = i4 * 53;
                        jDoubleToLongBits = zzv(obj, j);
                        byte[] bArr9 = zzgww.zzd;
                        i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 55:
                    if (zzR(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = zzp(obj, j);
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
                case 56:
                    if (zzR(obj, i7, i5)) {
                        i = i4 * 53;
                        jDoubleToLongBits = zzv(obj, j);
                        byte[] bArr10 = zzgww.zzd;
                        i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 57:
                    if (zzR(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = zzp(obj, j);
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
                case 58:
                    if (zzR(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = zzgww.zza(zzS(obj, j));
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
                case 59:
                    if (zzR(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = ((String) zzgzq.zzh(obj, j)).hashCode();
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
                case 60:
                    if (zzR(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = zzgzq.zzh(obj, j).hashCode();
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
                case 61:
                    if (zzR(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = zzgzq.zzh(obj, j).hashCode();
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
                case 62:
                    if (zzR(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = zzp(obj, j);
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
                case 63:
                    if (zzR(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = zzp(obj, j);
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
                case 64:
                    if (zzR(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = zzp(obj, j);
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
                case 65:
                    if (zzR(obj, i7, i5)) {
                        i = i4 * 53;
                        jDoubleToLongBits = zzv(obj, j);
                        byte[] bArr11 = zzgww.zzd;
                        i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 66:
                    if (zzR(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = zzp(obj, j);
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
                case 67:
                    if (zzR(obj, i7, i5)) {
                        i = i4 * 53;
                        jDoubleToLongBits = zzv(obj, j);
                        byte[] bArr12 = zzgww.zzd;
                        i4 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 68:
                    if (zzR(obj, i7, i5)) {
                        i2 = i4 * 53;
                        iFloatToIntBits = zzgzq.zzh(obj, j).hashCode();
                        i4 = i2 + iFloatToIntBits;
                    }
                    break;
            }
        }
        int iHashCode2 = (i4 * 53) + this.zzn.zzd(obj).hashCode();
        if (!this.zzh) {
            return iHashCode2;
        }
        this.zzo.zza(obj);
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:485:0x0b5e, code lost:
    
        if (r5 == r0) goto L487;
     */
    /* JADX WARN: Code restructure failed: missing block: B:486:0x0b60, code lost:
    
        r14.putInt(r7, r5, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:487:0x0b64, code lost:
    
        r11 = r12.zzk;
     */
    /* JADX WARN: Code restructure failed: missing block: B:489:0x0b69, code lost:
    
        if (r11 >= r12.zzl) goto L565;
     */
    /* JADX WARN: Code restructure failed: missing block: B:490:0x0b6b, code lost:
    
        zzy(r34, r12.zzj[r11], null, r12.zzn, r34);
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:491:0x0b7e, code lost:
    
        if (r9 != 0) goto L496;
     */
    /* JADX WARN: Code restructure failed: missing block: B:492:0x0b80, code lost:
    
        if (r6 != r10) goto L494;
     */
    /* JADX WARN: Code restructure failed: missing block: B:495:0x0b87, code lost:
    
        throw com.google.android.gms.internal.ads.zzgwy.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:496:0x0b88, code lost:
    
        if (r6 > r10) goto L499;
     */
    /* JADX WARN: Code restructure failed: missing block: B:497:0x0b8a, code lost:
    
        if (r8 != r9) goto L499;
     */
    /* JADX WARN: Code restructure failed: missing block: B:498:0x0b8c, code lost:
    
        return r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:500:0x0b91, code lost:
    
        throw com.google.android.gms.internal.ads.zzgwy.zzg();
     */
    /* JADX WARN: Removed duplicated region for block: B:380:0x0830 A[PHI: r7 r8 r9 r10 r11 r14
      0x0830: PHI (r7v30 int) = (r7v12 int), (r7v14 int), (r7v15 int), (r7v20 int), (r7v24 int), (r7v28 int), (r7v34 int) binds: [B:369:0x07e7, B:353:0x0791, B:337:0x0742, B:262:0x05f1, B:213:0x0526, B:180:0x0494, B:139:0x038f] A[DONT_GENERATE, DONT_INLINE]
      0x0830: PHI (r8v118 int) = (r8v63 int), (r8v65 int), (r8v66 int), (r8v93 int), (r8v109 int), (r8v116 int), (r8v121 int) binds: [B:369:0x07e7, B:353:0x0791, B:337:0x0742, B:262:0x05f1, B:213:0x0526, B:180:0x0494, B:139:0x038f] A[DONT_GENERATE, DONT_INLINE]
      0x0830: PHI (r9v72 int) = (r9v45 int), (r9v47 int), (r9v48 int), (r9v60 int), (r9v68 int), (r9v70 int), (r9v75 int) binds: [B:369:0x07e7, B:353:0x0791, B:337:0x0742, B:262:0x05f1, B:213:0x0526, B:180:0x0494, B:139:0x038f] A[DONT_GENERATE, DONT_INLINE]
      0x0830: PHI (r10v97 int) = (r10v63 int), (r10v65 int), (r10v66 int), (r10v70 int), (r10v82 int), (r10v89 int), (r10v101 int) binds: [B:369:0x07e7, B:353:0x0791, B:337:0x0742, B:262:0x05f1, B:213:0x0526, B:180:0x0494, B:139:0x038f] A[DONT_GENERATE, DONT_INLINE]
      0x0830: PHI (r11v64 int) = (r11v41 int), (r11v43 int), (r11v44 int), (r11v47 int), (r11v56 int), (r11v62 int), (r11v68 int) binds: [B:369:0x07e7, B:353:0x0791, B:337:0x0742, B:262:0x05f1, B:213:0x0526, B:180:0x0494, B:139:0x038f] A[DONT_GENERATE, DONT_INLINE]
      0x0830: PHI (r14v48 sun.misc.Unsafe) = 
      (r14v27 sun.misc.Unsafe)
      (r14v29 sun.misc.Unsafe)
      (r14v30 sun.misc.Unsafe)
      (r14v32 sun.misc.Unsafe)
      (r14v40 sun.misc.Unsafe)
      (r14v46 sun.misc.Unsafe)
      (r14v51 sun.misc.Unsafe)
     binds: [B:369:0x07e7, B:353:0x0791, B:337:0x0742, B:262:0x05f1, B:213:0x0526, B:180:0x0494, B:139:0x038f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:466:0x0adc A[PHI: r8 r10 r11 r12 r36
      0x0adc: PHI (r8v58 com.google.android.gms.internal.ads.zzguq) = 
      (r8v39 com.google.android.gms.internal.ads.zzguq)
      (r8v40 com.google.android.gms.internal.ads.zzguq)
      (r8v41 com.google.android.gms.internal.ads.zzguq)
      (r8v42 com.google.android.gms.internal.ads.zzguq)
      (r8v43 com.google.android.gms.internal.ads.zzguq)
      (r8v44 com.google.android.gms.internal.ads.zzguq)
      (r8v45 com.google.android.gms.internal.ads.zzguq)
      (r8v46 com.google.android.gms.internal.ads.zzguq)
      (r8v47 com.google.android.gms.internal.ads.zzguq)
      (r8v51 com.google.android.gms.internal.ads.zzguq)
      (r8v59 com.google.android.gms.internal.ads.zzguq)
     binds: [B:464:0x0ac5, B:461:0x0aa3, B:458:0x0a85, B:455:0x0a67, B:452:0x0a49, B:449:0x0a2a, B:442:0x0a02, B:440:0x09f4, B:425:0x09a9, B:421:0x0976, B:397:0x08a1] A[DONT_GENERATE, DONT_INLINE]
      0x0adc: PHI (r10v60 int) = 
      (r10v40 int)
      (r10v41 int)
      (r10v42 int)
      (r10v43 int)
      (r10v44 int)
      (r10v45 int)
      (r10v46 int)
      (r10v47 int)
      (r10v48 int)
      (r10v54 int)
      (r10v61 int)
     binds: [B:464:0x0ac5, B:461:0x0aa3, B:458:0x0a85, B:455:0x0a67, B:452:0x0a49, B:449:0x0a2a, B:442:0x0a02, B:440:0x09f4, B:425:0x09a9, B:421:0x0976, B:397:0x08a1] A[DONT_GENERATE, DONT_INLINE]
      0x0adc: PHI (r11v39 int) = 
      (r11v23 int)
      (r11v24 int)
      (r11v25 int)
      (r11v26 int)
      (r11v27 int)
      (r11v28 int)
      (r11v29 int)
      (r11v30 int)
      (r11v31 int)
      (r11v34 int)
      (r11v40 int)
     binds: [B:464:0x0ac5, B:461:0x0aa3, B:458:0x0a85, B:455:0x0a67, B:452:0x0a49, B:449:0x0a2a, B:442:0x0a02, B:440:0x09f4, B:425:0x09a9, B:421:0x0976, B:397:0x08a1] A[DONT_GENERATE, DONT_INLINE]
      0x0adc: PHI (r12v33 int) = 
      (r12v14 int)
      (r12v15 int)
      (r12v16 int)
      (r12v17 int)
      (r12v18 int)
      (r12v19 int)
      (r12v20 int)
      (r12v21 int)
      (r12v22 int)
      (r12v26 int)
      (r12v34 int)
     binds: [B:464:0x0ac5, B:461:0x0aa3, B:458:0x0a85, B:455:0x0a67, B:452:0x0a49, B:449:0x0a2a, B:442:0x0a02, B:440:0x09f4, B:425:0x09a9, B:421:0x0976, B:397:0x08a1] A[DONT_GENERATE, DONT_INLINE]
      0x0adc: PHI (r36v21 int) = 
      (r36v3 int)
      (r36v4 int)
      (r36v5 int)
      (r36v6 int)
      (r36v7 int)
      (r36v8 int)
      (r36v9 int)
      (r36v10 int)
      (r36v14 int)
      (r36v16 int)
      (r36v22 int)
     binds: [B:464:0x0ac5, B:461:0x0aa3, B:458:0x0a85, B:455:0x0a67, B:452:0x0a49, B:449:0x0a2a, B:442:0x0a02, B:440:0x09f4, B:425:0x09a9, B:421:0x0976, B:397:0x08a1] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:468:0x0adf  */
    /* JADX WARN: Removed duplicated region for block: B:469:0x0aee  */
    /* JADX WARN: Removed duplicated region for block: B:528:0x0833 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:556:0x0843 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final int zzc(java.lang.Object r34, byte[] r35, int r36, int r37, int r38, com.google.android.gms.internal.ads.zzguq r39) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 3106
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgxz.zzc(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.ads.zzguq):int");
    }

    @Override // com.google.android.gms.internal.ads.zzgyp
    public final Object zze() {
        return ((zzgwm) this.zzg).zzaD();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x006d  */
    @Override // com.google.android.gms.internal.ads.zzgyp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zzf(java.lang.Object r8) {
        /*
            Method dump skipped, instruction units count: 218
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgxz.zzf(java.lang.Object):void");
    }

    @Override // com.google.android.gms.internal.ads.zzgyp
    public final void zzg(Object obj, Object obj2) {
        zzD(obj);
        Objects.requireNonNull(obj2);
        for (int i = 0; i < this.zzc.length; i += 3) {
            int iZzu = zzu(i);
            int i2 = 1048575 & iZzu;
            int[] iArr = this.zzc;
            int iZzt = zzt(iZzu);
            int i3 = iArr[i];
            long j = i2;
            switch (iZzt) {
                case 0:
                    if (zzN(obj2, i)) {
                        zzgzq.zzr(obj, j, zzgzq.zzb(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 1:
                    if (zzN(obj2, i)) {
                        zzgzq.zzs(obj, j, zzgzq.zzc(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 2:
                    if (zzN(obj2, i)) {
                        zzgzq.zzu(obj, j, zzgzq.zzf(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 3:
                    if (zzN(obj2, i)) {
                        zzgzq.zzu(obj, j, zzgzq.zzf(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 4:
                    if (zzN(obj2, i)) {
                        zzgzq.zzt(obj, j, zzgzq.zzd(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 5:
                    if (zzN(obj2, i)) {
                        zzgzq.zzu(obj, j, zzgzq.zzf(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 6:
                    if (zzN(obj2, i)) {
                        zzgzq.zzt(obj, j, zzgzq.zzd(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 7:
                    if (zzN(obj2, i)) {
                        zzgzq.zzp(obj, j, zzgzq.zzz(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 8:
                    if (zzN(obj2, i)) {
                        zzgzq.zzv(obj, j, zzgzq.zzh(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 9:
                    zzE(obj, obj2, i);
                    break;
                case 10:
                    if (zzN(obj2, i)) {
                        zzgzq.zzv(obj, j, zzgzq.zzh(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 11:
                    if (zzN(obj2, i)) {
                        zzgzq.zzt(obj, j, zzgzq.zzd(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 12:
                    if (zzN(obj2, i)) {
                        zzgzq.zzt(obj, j, zzgzq.zzd(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 13:
                    if (zzN(obj2, i)) {
                        zzgzq.zzt(obj, j, zzgzq.zzd(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 14:
                    if (zzN(obj2, i)) {
                        zzgzq.zzu(obj, j, zzgzq.zzf(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 15:
                    if (zzN(obj2, i)) {
                        zzgzq.zzt(obj, j, zzgzq.zzd(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 16:
                    if (zzN(obj2, i)) {
                        zzgzq.zzu(obj, j, zzgzq.zzf(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 17:
                    zzE(obj, obj2, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.zzm.zzc(obj, obj2, j);
                    break;
                case 50:
                    int i4 = zzgyr.zza;
                    zzgzq.zzv(obj, j, zzgxr.zzb(zzgzq.zzh(obj, j), zzgzq.zzh(obj2, j)));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (zzR(obj2, i3, i)) {
                        zzgzq.zzv(obj, j, zzgzq.zzh(obj2, j));
                        zzI(obj, i3, i);
                    }
                    break;
                case 60:
                    zzF(obj, obj2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzR(obj2, i3, i)) {
                        zzgzq.zzv(obj, j, zzgzq.zzh(obj2, j));
                        zzI(obj, i3, i);
                    }
                    break;
                case 68:
                    zzF(obj, obj2, i);
                    break;
            }
        }
        zzgyr.zzq(this.zzn, obj, obj2);
        if (this.zzh) {
            this.zzo.zza(obj2);
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:165:0x0615 A[Catch: all -> 0x060a, TryCatch #7 {all -> 0x060a, blocks: (B:152:0x05e9, B:163:0x0610, B:165:0x0615, B:166:0x061a), top: B:193:0x05e9 }] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x063a  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x064d A[LOOP:3: B:181:0x0649->B:183:0x064d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0661  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0620 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:220:? A[RETURN, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzgyp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zzh(java.lang.Object r18, com.google.android.gms.internal.ads.zzgyh r19, com.google.android.gms.internal.ads.zzgvy r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1780
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgxz.zzh(java.lang.Object, com.google.android.gms.internal.ads.zzgyh, com.google.android.gms.internal.ads.zzgvy):void");
    }

    @Override // com.google.android.gms.internal.ads.zzgyp
    public final void zzi(Object obj, byte[] bArr, int i, int i2, zzguq zzguqVar) throws IOException {
        zzc(obj, bArr, i, i2, 0, zzguqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgyp
    public final boolean zzj(Object obj, Object obj2) {
        boolean zZzs;
        for (int i = 0; i < this.zzc.length; i += 3) {
            int iZzu = zzu(i);
            long j = iZzu & 1048575;
            switch (zzt(iZzu)) {
                case 0:
                    if (!zzL(obj, obj2, i) || Double.doubleToLongBits(zzgzq.zzb(obj, j)) != Double.doubleToLongBits(zzgzq.zzb(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 1:
                    if (!zzL(obj, obj2, i) || Float.floatToIntBits(zzgzq.zzc(obj, j)) != Float.floatToIntBits(zzgzq.zzc(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 2:
                    if (!zzL(obj, obj2, i) || zzgzq.zzf(obj, j) != zzgzq.zzf(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 3:
                    if (!zzL(obj, obj2, i) || zzgzq.zzf(obj, j) != zzgzq.zzf(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 4:
                    if (!zzL(obj, obj2, i) || zzgzq.zzd(obj, j) != zzgzq.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 5:
                    if (!zzL(obj, obj2, i) || zzgzq.zzf(obj, j) != zzgzq.zzf(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 6:
                    if (!zzL(obj, obj2, i) || zzgzq.zzd(obj, j) != zzgzq.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 7:
                    if (!zzL(obj, obj2, i) || zzgzq.zzz(obj, j) != zzgzq.zzz(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 8:
                    if (!zzL(obj, obj2, i) || !zzgyr.zzs(zzgzq.zzh(obj, j), zzgzq.zzh(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 9:
                    if (!zzL(obj, obj2, i) || !zzgyr.zzs(zzgzq.zzh(obj, j), zzgzq.zzh(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 10:
                    if (!zzL(obj, obj2, i) || !zzgyr.zzs(zzgzq.zzh(obj, j), zzgzq.zzh(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 11:
                    if (!zzL(obj, obj2, i) || zzgzq.zzd(obj, j) != zzgzq.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 12:
                    if (!zzL(obj, obj2, i) || zzgzq.zzd(obj, j) != zzgzq.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 13:
                    if (!zzL(obj, obj2, i) || zzgzq.zzd(obj, j) != zzgzq.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 14:
                    if (!zzL(obj, obj2, i) || zzgzq.zzf(obj, j) != zzgzq.zzf(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 15:
                    if (!zzL(obj, obj2, i) || zzgzq.zzd(obj, j) != zzgzq.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 16:
                    if (!zzL(obj, obj2, i) || zzgzq.zzf(obj, j) != zzgzq.zzf(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 17:
                    if (!zzL(obj, obj2, i) || !zzgyr.zzs(zzgzq.zzh(obj, j), zzgzq.zzh(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    zZzs = zzgyr.zzs(zzgzq.zzh(obj, j), zzgzq.zzh(obj2, j));
                    break;
                case 50:
                    zZzs = zzgyr.zzs(zzgzq.zzh(obj, j), zzgzq.zzh(obj2, j));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                    long jZzr = zzr(i) & 1048575;
                    if (zzgzq.zzd(obj, jZzr) != zzgzq.zzd(obj2, jZzr) || !zzgyr.zzs(zzgzq.zzh(obj, j), zzgzq.zzh(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                default:
                    break;
            }
            if (!zZzs) {
                return false;
            }
        }
        if (!this.zzn.zzd(obj).equals(this.zzn.zzd(obj2))) {
            return false;
        }
        if (!this.zzh) {
            return true;
        }
        this.zzo.zza(obj);
        this.zzo.zza(obj2);
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00a0  */
    @Override // com.google.android.gms.internal.ads.zzgyp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean zzk(java.lang.Object r19) {
        /*
            Method dump skipped, instruction units count: 246
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgxz.zzk(java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzgyp
    public final void zzm(Object obj, zzgvu zzgvuVar) throws IOException {
        int i;
        int i2;
        int i3;
        if (this.zzh) {
            this.zzo.zza(obj);
            throw null;
        }
        int[] iArr = this.zzc;
        Unsafe unsafe = zzb;
        int i4 = 1048575;
        int i5 = 1048575;
        int i6 = 0;
        int i7 = 0;
        while (i7 < iArr.length) {
            int iZzu = zzu(i7);
            int[] iArr2 = this.zzc;
            int iZzt = zzt(iZzu);
            int i8 = iArr2[i7];
            if (iZzt <= 17) {
                int i9 = iArr2[i7 + 2];
                int i10 = i9 & i4;
                if (i10 != i5) {
                    i6 = i10 == i4 ? 0 : unsafe.getInt(obj, i10);
                    i5 = i10;
                }
                i = i5;
                i2 = i6;
                i3 = 1 << (i9 >>> 20);
            } else {
                i = i5;
                i2 = i6;
                i3 = 0;
            }
            long j = iZzu & i4;
            switch (iZzt) {
                case 0:
                    if (zzO(obj, i7, i, i2, i3)) {
                        zzgvuVar.zzf(i8, zzgzq.zzb(obj, j));
                    }
                    break;
                case 1:
                    if (zzO(obj, i7, i, i2, i3)) {
                        zzgvuVar.zzo(i8, zzgzq.zzc(obj, j));
                    }
                    break;
                case 2:
                    if (zzO(obj, i7, i, i2, i3)) {
                        zzgvuVar.zzt(i8, unsafe.getLong(obj, j));
                    }
                    break;
                case 3:
                    if (zzO(obj, i7, i, i2, i3)) {
                        zzgvuVar.zzJ(i8, unsafe.getLong(obj, j));
                    }
                    break;
                case 4:
                    if (zzO(obj, i7, i, i2, i3)) {
                        zzgvuVar.zzr(i8, unsafe.getInt(obj, j));
                    }
                    break;
                case 5:
                    if (zzO(obj, i7, i, i2, i3)) {
                        zzgvuVar.zzm(i8, unsafe.getLong(obj, j));
                    }
                    break;
                case 6:
                    if (zzO(obj, i7, i, i2, i3)) {
                        zzgvuVar.zzk(i8, unsafe.getInt(obj, j));
                    }
                    break;
                case 7:
                    if (zzO(obj, i7, i, i2, i3)) {
                        zzgvuVar.zzb(i8, zzgzq.zzz(obj, j));
                    }
                    break;
                case 8:
                    if (zzO(obj, i7, i, i2, i3)) {
                        zzT(i8, unsafe.getObject(obj, j), zzgvuVar);
                    }
                    break;
                case 9:
                    if (zzO(obj, i7, i, i2, i3)) {
                        zzgvuVar.zzv(i8, unsafe.getObject(obj, j), zzx(i7));
                    }
                    break;
                case 10:
                    if (zzO(obj, i7, i, i2, i3)) {
                        zzgvuVar.zzd(i8, (zzgve) unsafe.getObject(obj, j));
                    }
                    break;
                case 11:
                    if (zzO(obj, i7, i, i2, i3)) {
                        zzgvuVar.zzH(i8, unsafe.getInt(obj, j));
                    }
                    break;
                case 12:
                    if (zzO(obj, i7, i, i2, i3)) {
                        zzgvuVar.zzi(i8, unsafe.getInt(obj, j));
                    }
                    break;
                case 13:
                    if (zzO(obj, i7, i, i2, i3)) {
                        zzgvuVar.zzw(i8, unsafe.getInt(obj, j));
                    }
                    break;
                case 14:
                    if (zzO(obj, i7, i, i2, i3)) {
                        zzgvuVar.zzy(i8, unsafe.getLong(obj, j));
                    }
                    break;
                case 15:
                    if (zzO(obj, i7, i, i2, i3)) {
                        zzgvuVar.zzA(i8, unsafe.getInt(obj, j));
                    }
                    break;
                case 16:
                    if (zzO(obj, i7, i, i2, i3)) {
                        zzgvuVar.zzC(i8, unsafe.getLong(obj, j));
                    }
                    break;
                case 17:
                    if (zzO(obj, i7, i, i2, i3)) {
                        zzgvuVar.zzq(i8, unsafe.getObject(obj, j), zzx(i7));
                    }
                    break;
                case 18:
                    zzgyr.zzu(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgvuVar, false);
                    break;
                case 19:
                    zzgyr.zzy(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgvuVar, false);
                    break;
                case 20:
                    zzgyr.zzA(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgvuVar, false);
                    break;
                case 21:
                    zzgyr.zzG(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgvuVar, false);
                    break;
                case 22:
                    zzgyr.zzz(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgvuVar, false);
                    break;
                case 23:
                    zzgyr.zzx(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgvuVar, false);
                    break;
                case 24:
                    zzgyr.zzw(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgvuVar, false);
                    break;
                case 25:
                    zzgyr.zzt(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgvuVar, false);
                    break;
                case 26:
                    int i11 = this.zzc[i7];
                    List list = (List) unsafe.getObject(obj, j);
                    int i12 = zzgyr.zza;
                    if (list != null && !list.isEmpty()) {
                        zzgvuVar.zzG(i11, list);
                    }
                    break;
                case 27:
                    int i13 = this.zzc[i7];
                    List list2 = (List) unsafe.getObject(obj, j);
                    zzgyp zzgypVarZzx = zzx(i7);
                    int i14 = zzgyr.zza;
                    if (list2 != null && !list2.isEmpty()) {
                        for (int i15 = 0; i15 < list2.size(); i15++) {
                            zzgvuVar.zzv(i13, list2.get(i15), zzgypVarZzx);
                        }
                    }
                    break;
                case 28:
                    int i16 = this.zzc[i7];
                    List list3 = (List) unsafe.getObject(obj, j);
                    int i17 = zzgyr.zza;
                    if (list3 != null && !list3.isEmpty()) {
                        zzgvuVar.zze(i16, list3);
                    }
                    break;
                case 29:
                    zzgyr.zzF(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgvuVar, false);
                    break;
                case 30:
                    zzgyr.zzv(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgvuVar, false);
                    break;
                case 31:
                    zzgyr.zzB(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgvuVar, false);
                    break;
                case 32:
                    zzgyr.zzC(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgvuVar, false);
                    break;
                case 33:
                    zzgyr.zzD(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgvuVar, false);
                    break;
                case 34:
                    zzgyr.zzE(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgvuVar, false);
                    break;
                case 35:
                    zzgyr.zzu(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgvuVar, true);
                    break;
                case 36:
                    zzgyr.zzy(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgvuVar, true);
                    break;
                case 37:
                    zzgyr.zzA(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgvuVar, true);
                    break;
                case 38:
                    zzgyr.zzG(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgvuVar, true);
                    break;
                case 39:
                    zzgyr.zzz(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgvuVar, true);
                    break;
                case 40:
                    zzgyr.zzx(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgvuVar, true);
                    break;
                case 41:
                    zzgyr.zzw(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgvuVar, true);
                    break;
                case 42:
                    zzgyr.zzt(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgvuVar, true);
                    break;
                case 43:
                    zzgyr.zzF(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgvuVar, true);
                    break;
                case 44:
                    zzgyr.zzv(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgvuVar, true);
                    break;
                case 45:
                    zzgyr.zzB(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgvuVar, true);
                    break;
                case 46:
                    zzgyr.zzC(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgvuVar, true);
                    break;
                case 47:
                    zzgyr.zzD(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgvuVar, true);
                    break;
                case 48:
                    zzgyr.zzE(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgvuVar, true);
                    break;
                case 49:
                    int i18 = this.zzc[i7];
                    List list4 = (List) unsafe.getObject(obj, j);
                    zzgyp zzgypVarZzx2 = zzx(i7);
                    int i19 = zzgyr.zza;
                    if (list4 != null && !list4.isEmpty()) {
                        for (int i20 = 0; i20 < list4.size(); i20++) {
                            zzgvuVar.zzq(i18, list4.get(i20), zzgypVarZzx2);
                        }
                    }
                    break;
                case 50:
                    if (unsafe.getObject(obj, j) != null) {
                        throw null;
                    }
                    break;
                    break;
                case 51:
                    if (zzR(obj, i8, i7)) {
                        zzgvuVar.zzf(i8, zzn(obj, j));
                    }
                    break;
                case 52:
                    if (zzR(obj, i8, i7)) {
                        zzgvuVar.zzo(i8, zzo(obj, j));
                    }
                    break;
                case 53:
                    if (zzR(obj, i8, i7)) {
                        zzgvuVar.zzt(i8, zzv(obj, j));
                    }
                    break;
                case 54:
                    if (zzR(obj, i8, i7)) {
                        zzgvuVar.zzJ(i8, zzv(obj, j));
                    }
                    break;
                case 55:
                    if (zzR(obj, i8, i7)) {
                        zzgvuVar.zzr(i8, zzp(obj, j));
                    }
                    break;
                case 56:
                    if (zzR(obj, i8, i7)) {
                        zzgvuVar.zzm(i8, zzv(obj, j));
                    }
                    break;
                case 57:
                    if (zzR(obj, i8, i7)) {
                        zzgvuVar.zzk(i8, zzp(obj, j));
                    }
                    break;
                case 58:
                    if (zzR(obj, i8, i7)) {
                        zzgvuVar.zzb(i8, zzS(obj, j));
                    }
                    break;
                case 59:
                    if (zzR(obj, i8, i7)) {
                        zzT(i8, unsafe.getObject(obj, j), zzgvuVar);
                    }
                    break;
                case 60:
                    if (zzR(obj, i8, i7)) {
                        zzgvuVar.zzv(i8, unsafe.getObject(obj, j), zzx(i7));
                    }
                    break;
                case 61:
                    if (zzR(obj, i8, i7)) {
                        zzgvuVar.zzd(i8, (zzgve) unsafe.getObject(obj, j));
                    }
                    break;
                case 62:
                    if (zzR(obj, i8, i7)) {
                        zzgvuVar.zzH(i8, zzp(obj, j));
                    }
                    break;
                case 63:
                    if (zzR(obj, i8, i7)) {
                        zzgvuVar.zzi(i8, zzp(obj, j));
                    }
                    break;
                case 64:
                    if (zzR(obj, i8, i7)) {
                        zzgvuVar.zzw(i8, zzp(obj, j));
                    }
                    break;
                case 65:
                    if (zzR(obj, i8, i7)) {
                        zzgvuVar.zzy(i8, zzv(obj, j));
                    }
                    break;
                case 66:
                    if (zzR(obj, i8, i7)) {
                        zzgvuVar.zzA(i8, zzp(obj, j));
                    }
                    break;
                case 67:
                    if (zzR(obj, i8, i7)) {
                        zzgvuVar.zzC(i8, zzv(obj, j));
                    }
                    break;
                case 68:
                    if (zzR(obj, i8, i7)) {
                        zzgvuVar.zzq(i8, unsafe.getObject(obj, j), zzx(i7));
                    }
                    break;
            }
            i7 += 3;
            i5 = i;
            i6 = i2;
            i4 = 1048575;
        }
        zzgzg zzgzgVar = this.zzn;
        zzgzgVar.zzr(zzgzgVar.zzd(obj), zzgvuVar);
    }
}
