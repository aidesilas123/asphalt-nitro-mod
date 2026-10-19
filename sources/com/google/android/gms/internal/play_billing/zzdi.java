package com.google.android.gms.internal.play_billing;

import com.google.android.gms.drive.DriveFile;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.RandomAccess;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes3.dex */
final class zzdi<T> implements zzdp<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzeq.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzdf zzg;
    private final boolean zzh;
    private final int[] zzi;
    private final int zzj;
    private final int zzk;
    private final zzct zzl;
    private final zzeg zzm;
    private final zzbo zzn;
    private final int zzo;
    private final zzdk zzp;
    private final zzda zzq;

    private zzdi(int[] iArr, Object[] objArr, int i, int i2, zzdf zzdfVar, int i3, boolean z, int[] iArr2, int i4, int i5, zzdk zzdkVar, zzct zzctVar, zzeg zzegVar, zzbo zzboVar, zzda zzdaVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        this.zzo = i3;
        boolean z2 = false;
        if (zzboVar != null && zzboVar.zzc(zzdfVar)) {
            z2 = true;
        }
        this.zzh = z2;
        this.zzi = iArr2;
        this.zzj = i4;
        this.zzk = i5;
        this.zzp = zzdkVar;
        this.zzl = zzctVar;
        this.zzm = zzegVar;
        this.zzn = zzboVar;
        this.zzg = zzdfVar;
        this.zzq = zzdaVar;
    }

    private final zzce zzA(int i) {
        int i2 = i / 3;
        return (zzce) this.zzd[i2 + i2 + 1];
    }

    private final zzdp zzB(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzdp zzdpVar = (zzdp) this.zzd[i3];
        if (zzdpVar != null) {
            return zzdpVar;
        }
        zzdp zzdpVarZzb = zzdn.zza().zzb((Class) this.zzd[i3 + 1]);
        this.zzd[i3] = zzdpVarZzb;
        return zzdpVarZzb;
    }

    private final Object zzC(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    private final Object zzD(Object obj, int i) {
        zzdp zzdpVarZzB = zzB(i);
        int iZzy = zzy(i) & 1048575;
        if (!zzP(obj, i)) {
            return zzdpVarZzB.zze();
        }
        Object object = zzb.getObject(obj, iZzy);
        if (zzS(object)) {
            return object;
        }
        Object objZze = zzdpVarZzB.zze();
        if (object != null) {
            zzdpVarZzB.zzg(objZze, object);
        }
        return objZze;
    }

    private final Object zzE(Object obj, int i, int i2) {
        zzdp zzdpVarZzB = zzB(i2);
        if (!zzT(obj, i, i2)) {
            return zzdpVarZzB.zze();
        }
        Object object = zzb.getObject(obj, zzy(i2) & 1048575);
        if (zzS(object)) {
            return object;
        }
        Object objZze = zzdpVarZzB.zze();
        if (object != null) {
            zzdpVarZzB.zzg(objZze, object);
        }
        return objZze;
    }

    private static Field zzF(Class cls, String str) {
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

    private static void zzG(Object obj) {
        if (!zzS(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
    }

    private final void zzH(Object obj, Object obj2, int i) {
        if (zzP(obj2, i)) {
            int iZzy = zzy(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = iZzy;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + obj2.toString());
            }
            zzdp zzdpVarZzB = zzB(i);
            if (!zzP(obj, i)) {
                if (zzS(object)) {
                    Object objZze = zzdpVarZzB.zze();
                    zzdpVarZzB.zzg(objZze, object);
                    unsafe.putObject(obj, j, objZze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzJ(obj, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzS(object2)) {
                Object objZze2 = zzdpVarZzB.zze();
                zzdpVarZzB.zzg(objZze2, object2);
                unsafe.putObject(obj, j, objZze2);
                object2 = objZze2;
            }
            zzdpVarZzB.zzg(object2, object);
        }
    }

    private final void zzI(Object obj, Object obj2, int i) {
        int i2 = this.zzc[i];
        if (zzT(obj2, i2, i)) {
            int iZzy = zzy(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = iZzy;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + obj2.toString());
            }
            zzdp zzdpVarZzB = zzB(i);
            if (!zzT(obj, i2, i)) {
                if (zzS(object)) {
                    Object objZze = zzdpVarZzB.zze();
                    zzdpVarZzB.zzg(objZze, object);
                    unsafe.putObject(obj, j, objZze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzK(obj, i2, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzS(object2)) {
                Object objZze2 = zzdpVarZzB.zze();
                zzdpVarZzB.zzg(objZze2, object2);
                unsafe.putObject(obj, j, objZze2);
                object2 = objZze2;
            }
            zzdpVarZzB.zzg(object2, object);
        }
    }

    private final void zzJ(Object obj, int i) {
        int iZzv = zzv(i);
        long j = 1048575 & iZzv;
        if (j == 1048575) {
            return;
        }
        zzeq.zzq(obj, j, (1 << (iZzv >>> 20)) | zzeq.zzc(obj, j));
    }

    private final void zzK(Object obj, int i, int i2) {
        zzeq.zzq(obj, zzv(i2) & 1048575, i);
    }

    private final void zzL(Object obj, int i, Object obj2) {
        zzb.putObject(obj, zzy(i) & 1048575, obj2);
        zzJ(obj, i);
    }

    private final void zzM(Object obj, int i, int i2, Object obj2) {
        zzb.putObject(obj, zzy(i2) & 1048575, obj2);
        zzK(obj, i, i2);
    }

    private final void zzN(zzey zzeyVar, int i, Object obj, int i2) throws IOException {
        if (obj == null) {
            return;
        }
        throw null;
    }

    private final boolean zzO(Object obj, Object obj2, int i) {
        return zzP(obj, i) == zzP(obj2, i);
    }

    private final boolean zzP(Object obj, int i) {
        int iZzv = zzv(i);
        long j = iZzv & 1048575;
        if (j != 1048575) {
            return (zzeq.zzc(obj, j) & (1 << (iZzv >>> 20))) != 0;
        }
        int iZzy = zzy(i);
        long j2 = iZzy & 1048575;
        switch (zzx(iZzy)) {
            case 0:
                return Double.doubleToRawLongBits(zzeq.zza(obj, j2)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzeq.zzb(obj, j2)) != 0;
            case 2:
                return zzeq.zzd(obj, j2) != 0;
            case 3:
                return zzeq.zzd(obj, j2) != 0;
            case 4:
                return zzeq.zzc(obj, j2) != 0;
            case 5:
                return zzeq.zzd(obj, j2) != 0;
            case 6:
                return zzeq.zzc(obj, j2) != 0;
            case 7:
                return zzeq.zzw(obj, j2);
            case 8:
                Object objZzf = zzeq.zzf(obj, j2);
                if (objZzf instanceof String) {
                    return !((String) objZzf).isEmpty();
                }
                if (objZzf instanceof zzba) {
                    return !zzba.zzb.equals(objZzf);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzeq.zzf(obj, j2) != null;
            case 10:
                return !zzba.zzb.equals(zzeq.zzf(obj, j2));
            case 11:
                return zzeq.zzc(obj, j2) != 0;
            case 12:
                return zzeq.zzc(obj, j2) != 0;
            case 13:
                return zzeq.zzc(obj, j2) != 0;
            case 14:
                return zzeq.zzd(obj, j2) != 0;
            case 15:
                return zzeq.zzc(obj, j2) != 0;
            case 16:
                return zzeq.zzd(obj, j2) != 0;
            case 17:
                return zzeq.zzf(obj, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzQ(Object obj, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? zzP(obj, i) : (i3 & i4) != 0;
    }

    private static boolean zzR(Object obj, int i, zzdp zzdpVar) {
        return zzdpVar.zzk(zzeq.zzf(obj, i & 1048575));
    }

    private static boolean zzS(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzcb) {
            return ((zzcb) obj).zzt();
        }
        return true;
    }

    private final boolean zzT(Object obj, int i, int i2) {
        return zzeq.zzc(obj, (long) (zzv(i2) & 1048575)) == i;
    }

    private static boolean zzU(Object obj, long j) {
        return ((Boolean) zzeq.zzf(obj, j)).booleanValue();
    }

    private static final void zzV(int i, Object obj, zzey zzeyVar) throws IOException {
        if (obj instanceof String) {
            zzeyVar.zzF(i, (String) obj);
        } else {
            zzeyVar.zzd(i, (zzba) obj);
        }
    }

    static zzeh zzd(Object obj) {
        zzcb zzcbVar = (zzcb) obj;
        zzeh zzehVar = zzcbVar.zzc;
        if (zzehVar != zzeh.zzc()) {
            return zzehVar;
        }
        zzeh zzehVarZzf = zzeh.zzf();
        zzcbVar.zzc = zzehVarZzf;
        return zzehVarZzf;
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x024e  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x026c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static com.google.android.gms.internal.play_billing.zzdi zzl(java.lang.Class r30, com.google.android.gms.internal.play_billing.zzdc r31, com.google.android.gms.internal.play_billing.zzdk r32, com.google.android.gms.internal.play_billing.zzct r33, com.google.android.gms.internal.play_billing.zzeg r34, com.google.android.gms.internal.play_billing.zzbo r35, com.google.android.gms.internal.play_billing.zzda r36) {
        /*
            Method dump skipped, instruction units count: 995
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzdi.zzl(java.lang.Class, com.google.android.gms.internal.play_billing.zzdc, com.google.android.gms.internal.play_billing.zzdk, com.google.android.gms.internal.play_billing.zzct, com.google.android.gms.internal.play_billing.zzeg, com.google.android.gms.internal.play_billing.zzbo, com.google.android.gms.internal.play_billing.zzda):com.google.android.gms.internal.play_billing.zzdi");
    }

    private static double zzm(Object obj, long j) {
        return ((Double) zzeq.zzf(obj, j)).doubleValue();
    }

    private static float zzn(Object obj, long j) {
        return ((Float) zzeq.zzf(obj, j)).floatValue();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private final int zzo(Object obj) {
        int i;
        int iZzx;
        int iZzx2;
        int iZzy;
        int iZzx3;
        int iZzx4;
        int iZzx5;
        int iZzx6;
        int iZzt;
        int iZzh;
        int iZzx7;
        int iZzx8;
        int iZzx9;
        int iZzx10;
        int iZzx11;
        int iZzx12;
        int iZzx13;
        Unsafe unsafe = zzb;
        int i2 = 1048575;
        int i3 = 0;
        int iZzx14 = 0;
        int i4 = 1048575;
        int i5 = 0;
        while (i3 < this.zzc.length) {
            int iZzy2 = zzy(i3);
            int[] iArr = this.zzc;
            int i6 = iArr[i3];
            int iZzx15 = zzx(iZzy2);
            if (iZzx15 <= 17) {
                int i7 = iArr[i3 + 2];
                int i8 = i7 & i2;
                int i9 = i7 >>> 20;
                if (i8 != i4) {
                    i5 = unsafe.getInt(obj, i8);
                    i4 = i8;
                }
                i = 1 << i9;
            } else {
                i = 0;
            }
            long j = iZzy2 & i2;
            switch (iZzx15) {
                case 0:
                    if ((i5 & i) != 0) {
                        iZzx = zzbi.zzx(i6 << 3);
                        iZzx4 = iZzx + 8;
                        iZzx14 += iZzx4;
                    }
                    break;
                case 1:
                    if ((i5 & i) != 0) {
                        iZzx2 = zzbi.zzx(i6 << 3);
                        iZzx4 = iZzx2 + 4;
                        iZzx14 += iZzx4;
                    }
                    break;
                case 2:
                    if ((i5 & i) != 0) {
                        iZzy = zzbi.zzy(unsafe.getLong(obj, j));
                        iZzx3 = zzbi.zzx(i6 << 3);
                        iZzx14 += iZzx3 + iZzy;
                    }
                    break;
                case 3:
                    if ((i5 & i) != 0) {
                        iZzy = zzbi.zzy(unsafe.getLong(obj, j));
                        iZzx3 = zzbi.zzx(i6 << 3);
                        iZzx14 += iZzx3 + iZzy;
                    }
                    break;
                case 4:
                    if ((i5 & i) != 0) {
                        iZzy = zzbi.zzu(unsafe.getInt(obj, j));
                        iZzx3 = zzbi.zzx(i6 << 3);
                        iZzx14 += iZzx3 + iZzy;
                    }
                    break;
                case 5:
                    if ((i5 & i) != 0) {
                        iZzx = zzbi.zzx(i6 << 3);
                        iZzx4 = iZzx + 8;
                        iZzx14 += iZzx4;
                    }
                    break;
                case 6:
                    if ((i5 & i) != 0) {
                        iZzx2 = zzbi.zzx(i6 << 3);
                        iZzx4 = iZzx2 + 4;
                        iZzx14 += iZzx4;
                    }
                    break;
                case 7:
                    if ((i5 & i) != 0) {
                        iZzx4 = zzbi.zzx(i6 << 3) + 1;
                        iZzx14 += iZzx4;
                    }
                    break;
                case 8:
                    if ((i5 & i) != 0) {
                        Object object = unsafe.getObject(obj, j);
                        if (!(object instanceof zzba)) {
                            iZzy = zzbi.zzw((String) object);
                            iZzx3 = zzbi.zzx(i6 << 3);
                            iZzx14 += iZzx3 + iZzy;
                        } else {
                            int i10 = zzbi.zzb;
                            int iZzd = ((zzba) object).zzd();
                            iZzx5 = zzbi.zzx(iZzd) + iZzd;
                            iZzx6 = zzbi.zzx(i6 << 3);
                            iZzx4 = iZzx6 + iZzx5;
                            iZzx14 += iZzx4;
                        }
                    }
                    break;
                case 9:
                    if ((i5 & i) != 0) {
                        iZzx4 = zzdr.zzn(i6, unsafe.getObject(obj, j), zzB(i3));
                        iZzx14 += iZzx4;
                    }
                    break;
                case 10:
                    if ((i5 & i) != 0) {
                        zzba zzbaVar = (zzba) unsafe.getObject(obj, j);
                        int i11 = zzbi.zzb;
                        int iZzd2 = zzbaVar.zzd();
                        iZzx5 = zzbi.zzx(iZzd2) + iZzd2;
                        iZzx6 = zzbi.zzx(i6 << 3);
                        iZzx4 = iZzx6 + iZzx5;
                        iZzx14 += iZzx4;
                    }
                    break;
                case 11:
                    if ((i5 & i) != 0) {
                        iZzy = zzbi.zzx(unsafe.getInt(obj, j));
                        iZzx3 = zzbi.zzx(i6 << 3);
                        iZzx14 += iZzx3 + iZzy;
                    }
                    break;
                case 12:
                    if ((i5 & i) != 0) {
                        iZzy = zzbi.zzu(unsafe.getInt(obj, j));
                        iZzx3 = zzbi.zzx(i6 << 3);
                        iZzx14 += iZzx3 + iZzy;
                    }
                    break;
                case 13:
                    if ((i5 & i) != 0) {
                        iZzx2 = zzbi.zzx(i6 << 3);
                        iZzx4 = iZzx2 + 4;
                        iZzx14 += iZzx4;
                    }
                    break;
                case 14:
                    if ((i5 & i) != 0) {
                        iZzx = zzbi.zzx(i6 << 3);
                        iZzx4 = iZzx + 8;
                        iZzx14 += iZzx4;
                    }
                    break;
                case 15:
                    if ((i5 & i) != 0) {
                        int i12 = unsafe.getInt(obj, j);
                        iZzx3 = zzbi.zzx(i6 << 3);
                        iZzy = zzbi.zzx((i12 >> 31) ^ (i12 + i12));
                        iZzx14 += iZzx3 + iZzy;
                    }
                    break;
                case 16:
                    if ((i & i5) != 0) {
                        long j2 = unsafe.getLong(obj, j);
                        iZzx14 += zzbi.zzx(i6 << 3) + zzbi.zzy((j2 >> 63) ^ (j2 + j2));
                    }
                    break;
                case 17:
                    if ((i5 & i) != 0) {
                        iZzx4 = zzbi.zzt(i6, (zzdf) unsafe.getObject(obj, j), zzB(i3));
                        iZzx14 += iZzx4;
                    }
                    break;
                case 18:
                    iZzx4 = zzdr.zzg(i6, (List) unsafe.getObject(obj, j), false);
                    iZzx14 += iZzx4;
                    break;
                case 19:
                    iZzx4 = zzdr.zze(i6, (List) unsafe.getObject(obj, j), false);
                    iZzx14 += iZzx4;
                    break;
                case 20:
                    iZzx4 = zzdr.zzl(i6, (List) unsafe.getObject(obj, j), false);
                    iZzx14 += iZzx4;
                    break;
                case 21:
                    iZzx4 = zzdr.zzw(i6, (List) unsafe.getObject(obj, j), false);
                    iZzx14 += iZzx4;
                    break;
                case 22:
                    iZzx4 = zzdr.zzj(i6, (List) unsafe.getObject(obj, j), false);
                    iZzx14 += iZzx4;
                    break;
                case 23:
                    iZzx4 = zzdr.zzg(i6, (List) unsafe.getObject(obj, j), false);
                    iZzx14 += iZzx4;
                    break;
                case 24:
                    iZzx4 = zzdr.zze(i6, (List) unsafe.getObject(obj, j), false);
                    iZzx14 += iZzx4;
                    break;
                case 25:
                    iZzx4 = zzdr.zza(i6, (List) unsafe.getObject(obj, j), false);
                    iZzx14 += iZzx4;
                    break;
                case 26:
                    iZzt = zzdr.zzt(i6, (List) unsafe.getObject(obj, j));
                    iZzx14 += iZzt;
                    break;
                case 27:
                    iZzt = zzdr.zzo(i6, (List) unsafe.getObject(obj, j), zzB(i3));
                    iZzx14 += iZzt;
                    break;
                case 28:
                    iZzt = zzdr.zzb(i6, (List) unsafe.getObject(obj, j));
                    iZzx14 += iZzt;
                    break;
                case 29:
                    iZzt = zzdr.zzu(i6, (List) unsafe.getObject(obj, j), false);
                    iZzx14 += iZzt;
                    break;
                case 30:
                    iZzt = zzdr.zzc(i6, (List) unsafe.getObject(obj, j), false);
                    iZzx14 += iZzt;
                    break;
                case 31:
                    iZzt = zzdr.zze(i6, (List) unsafe.getObject(obj, j), false);
                    iZzx14 += iZzt;
                    break;
                case 32:
                    iZzt = zzdr.zzg(i6, (List) unsafe.getObject(obj, j), false);
                    iZzx14 += iZzt;
                    break;
                case 33:
                    iZzt = zzdr.zzp(i6, (List) unsafe.getObject(obj, j), false);
                    iZzx14 += iZzt;
                    break;
                case 34:
                    iZzt = zzdr.zzr(i6, (List) unsafe.getObject(obj, j), false);
                    iZzx14 += iZzt;
                    break;
                case 35:
                    iZzh = zzdr.zzh((List) unsafe.getObject(obj, j));
                    if (iZzh > 0) {
                        iZzx7 = zzbi.zzx(iZzh);
                        iZzx8 = zzbi.zzx(i6 << 3);
                        iZzx9 = iZzx8 + iZzx7;
                        iZzx14 += iZzx9 + iZzh;
                    }
                    break;
                case 36:
                    iZzh = zzdr.zzf((List) unsafe.getObject(obj, j));
                    if (iZzh > 0) {
                        iZzx7 = zzbi.zzx(iZzh);
                        iZzx8 = zzbi.zzx(i6 << 3);
                        iZzx9 = iZzx8 + iZzx7;
                        iZzx14 += iZzx9 + iZzh;
                    }
                    break;
                case 37:
                    iZzh = zzdr.zzm((List) unsafe.getObject(obj, j));
                    if (iZzh > 0) {
                        iZzx7 = zzbi.zzx(iZzh);
                        iZzx8 = zzbi.zzx(i6 << 3);
                        iZzx9 = iZzx8 + iZzx7;
                        iZzx14 += iZzx9 + iZzh;
                    }
                    break;
                case 38:
                    iZzh = zzdr.zzx((List) unsafe.getObject(obj, j));
                    if (iZzh > 0) {
                        iZzx7 = zzbi.zzx(iZzh);
                        iZzx8 = zzbi.zzx(i6 << 3);
                        iZzx9 = iZzx8 + iZzx7;
                        iZzx14 += iZzx9 + iZzh;
                    }
                    break;
                case 39:
                    iZzh = zzdr.zzk((List) unsafe.getObject(obj, j));
                    if (iZzh > 0) {
                        iZzx7 = zzbi.zzx(iZzh);
                        iZzx8 = zzbi.zzx(i6 << 3);
                        iZzx9 = iZzx8 + iZzx7;
                        iZzx14 += iZzx9 + iZzh;
                    }
                    break;
                case 40:
                    iZzh = zzdr.zzh((List) unsafe.getObject(obj, j));
                    if (iZzh > 0) {
                        iZzx7 = zzbi.zzx(iZzh);
                        iZzx8 = zzbi.zzx(i6 << 3);
                        iZzx9 = iZzx8 + iZzx7;
                        iZzx14 += iZzx9 + iZzh;
                    }
                    break;
                case 41:
                    iZzh = zzdr.zzf((List) unsafe.getObject(obj, j));
                    if (iZzh > 0) {
                        iZzx7 = zzbi.zzx(iZzh);
                        iZzx8 = zzbi.zzx(i6 << 3);
                        iZzx9 = iZzx8 + iZzx7;
                        iZzx14 += iZzx9 + iZzh;
                    }
                    break;
                case 42:
                    List list = (List) unsafe.getObject(obj, j);
                    int i13 = zzdr.zza;
                    iZzh = list.size();
                    if (iZzh > 0) {
                        iZzx7 = zzbi.zzx(iZzh);
                        iZzx8 = zzbi.zzx(i6 << 3);
                        iZzx9 = iZzx8 + iZzx7;
                        iZzx14 += iZzx9 + iZzh;
                    }
                    break;
                case 43:
                    iZzh = zzdr.zzv((List) unsafe.getObject(obj, j));
                    if (iZzh > 0) {
                        iZzx7 = zzbi.zzx(iZzh);
                        iZzx8 = zzbi.zzx(i6 << 3);
                        iZzx9 = iZzx8 + iZzx7;
                        iZzx14 += iZzx9 + iZzh;
                    }
                    break;
                case 44:
                    iZzh = zzdr.zzd((List) unsafe.getObject(obj, j));
                    if (iZzh > 0) {
                        iZzx7 = zzbi.zzx(iZzh);
                        iZzx8 = zzbi.zzx(i6 << 3);
                        iZzx9 = iZzx8 + iZzx7;
                        iZzx14 += iZzx9 + iZzh;
                    }
                    break;
                case 45:
                    iZzh = zzdr.zzf((List) unsafe.getObject(obj, j));
                    if (iZzh > 0) {
                        iZzx7 = zzbi.zzx(iZzh);
                        iZzx8 = zzbi.zzx(i6 << 3);
                        iZzx9 = iZzx8 + iZzx7;
                        iZzx14 += iZzx9 + iZzh;
                    }
                    break;
                case 46:
                    iZzh = zzdr.zzh((List) unsafe.getObject(obj, j));
                    if (iZzh > 0) {
                        iZzx7 = zzbi.zzx(iZzh);
                        iZzx8 = zzbi.zzx(i6 << 3);
                        iZzx9 = iZzx8 + iZzx7;
                        iZzx14 += iZzx9 + iZzh;
                    }
                    break;
                case 47:
                    iZzh = zzdr.zzq((List) unsafe.getObject(obj, j));
                    if (iZzh > 0) {
                        iZzx7 = zzbi.zzx(iZzh);
                        iZzx8 = zzbi.zzx(i6 << 3);
                        iZzx9 = iZzx8 + iZzx7;
                        iZzx14 += iZzx9 + iZzh;
                    }
                    break;
                case 48:
                    iZzh = zzdr.zzs((List) unsafe.getObject(obj, j));
                    if (iZzh > 0) {
                        iZzx7 = zzbi.zzx(iZzh);
                        iZzx8 = zzbi.zzx(i6 << 3);
                        iZzx9 = iZzx8 + iZzx7;
                        iZzx14 += iZzx9 + iZzh;
                    }
                    break;
                case 49:
                    iZzt = zzdr.zzi(i6, (List) unsafe.getObject(obj, j), zzB(i3));
                    iZzx14 += iZzt;
                    break;
                case 50:
                    zzda.zza(i6, unsafe.getObject(obj, j), zzC(i3));
                    break;
                case 51:
                    if (zzT(obj, i6, i3)) {
                        iZzx10 = zzbi.zzx(i6 << 3);
                        iZzt = iZzx10 + 8;
                        iZzx14 += iZzt;
                    }
                    break;
                case 52:
                    if (zzT(obj, i6, i3)) {
                        iZzx11 = zzbi.zzx(i6 << 3);
                        iZzt = iZzx11 + 4;
                        iZzx14 += iZzt;
                    }
                    break;
                case 53:
                    if (zzT(obj, i6, i3)) {
                        iZzh = zzbi.zzy(zzz(obj, j));
                        iZzx9 = zzbi.zzx(i6 << 3);
                        iZzx14 += iZzx9 + iZzh;
                    }
                    break;
                case 54:
                    if (zzT(obj, i6, i3)) {
                        iZzh = zzbi.zzy(zzz(obj, j));
                        iZzx9 = zzbi.zzx(i6 << 3);
                        iZzx14 += iZzx9 + iZzh;
                    }
                    break;
                case 55:
                    if (zzT(obj, i6, i3)) {
                        iZzh = zzbi.zzu(zzp(obj, j));
                        iZzx9 = zzbi.zzx(i6 << 3);
                        iZzx14 += iZzx9 + iZzh;
                    }
                    break;
                case 56:
                    if (zzT(obj, i6, i3)) {
                        iZzx10 = zzbi.zzx(i6 << 3);
                        iZzt = iZzx10 + 8;
                        iZzx14 += iZzt;
                    }
                    break;
                case 57:
                    if (zzT(obj, i6, i3)) {
                        iZzx11 = zzbi.zzx(i6 << 3);
                        iZzt = iZzx11 + 4;
                        iZzx14 += iZzt;
                    }
                    break;
                case 58:
                    if (zzT(obj, i6, i3)) {
                        iZzt = zzbi.zzx(i6 << 3) + 1;
                        iZzx14 += iZzt;
                    }
                    break;
                case 59:
                    if (zzT(obj, i6, i3)) {
                        Object object2 = unsafe.getObject(obj, j);
                        if (object2 instanceof zzba) {
                            int i14 = zzbi.zzb;
                            int iZzd3 = ((zzba) object2).zzd();
                            iZzx12 = zzbi.zzx(iZzd3) + iZzd3;
                            iZzx13 = zzbi.zzx(i6 << 3);
                            iZzt = iZzx13 + iZzx12;
                            iZzx14 += iZzt;
                        } else {
                            iZzh = zzbi.zzw((String) object2);
                            iZzx9 = zzbi.zzx(i6 << 3);
                            iZzx14 += iZzx9 + iZzh;
                        }
                    }
                    break;
                case 60:
                    if (zzT(obj, i6, i3)) {
                        iZzt = zzdr.zzn(i6, unsafe.getObject(obj, j), zzB(i3));
                        iZzx14 += iZzt;
                    }
                    break;
                case 61:
                    if (zzT(obj, i6, i3)) {
                        zzba zzbaVar2 = (zzba) unsafe.getObject(obj, j);
                        int i15 = zzbi.zzb;
                        int iZzd4 = zzbaVar2.zzd();
                        iZzx12 = zzbi.zzx(iZzd4) + iZzd4;
                        iZzx13 = zzbi.zzx(i6 << 3);
                        iZzt = iZzx13 + iZzx12;
                        iZzx14 += iZzt;
                    }
                    break;
                case 62:
                    if (zzT(obj, i6, i3)) {
                        iZzh = zzbi.zzx(zzp(obj, j));
                        iZzx9 = zzbi.zzx(i6 << 3);
                        iZzx14 += iZzx9 + iZzh;
                    }
                    break;
                case 63:
                    if (zzT(obj, i6, i3)) {
                        iZzh = zzbi.zzu(zzp(obj, j));
                        iZzx9 = zzbi.zzx(i6 << 3);
                        iZzx14 += iZzx9 + iZzh;
                    }
                    break;
                case 64:
                    if (zzT(obj, i6, i3)) {
                        iZzx11 = zzbi.zzx(i6 << 3);
                        iZzt = iZzx11 + 4;
                        iZzx14 += iZzt;
                    }
                    break;
                case 65:
                    if (zzT(obj, i6, i3)) {
                        iZzx10 = zzbi.zzx(i6 << 3);
                        iZzt = iZzx10 + 8;
                        iZzx14 += iZzt;
                    }
                    break;
                case 66:
                    if (zzT(obj, i6, i3)) {
                        int iZzp = zzp(obj, j);
                        iZzx9 = zzbi.zzx(i6 << 3);
                        iZzh = zzbi.zzx((iZzp >> 31) ^ (iZzp + iZzp));
                        iZzx14 += iZzx9 + iZzh;
                    }
                    break;
                case 67:
                    if (zzT(obj, i6, i3)) {
                        long jZzz = zzz(obj, j);
                        iZzx14 += zzbi.zzx(i6 << 3) + zzbi.zzy((jZzz >> 63) ^ (jZzz + jZzz));
                    }
                    break;
                case 68:
                    if (zzT(obj, i6, i3)) {
                        iZzt = zzbi.zzt(i6, (zzdf) unsafe.getObject(obj, j), zzB(i3));
                        iZzx14 += iZzt;
                    }
                    break;
            }
            i3 += 3;
            i2 = 1048575;
        }
        zzeg zzegVar = this.zzm;
        int iZza = iZzx14 + zzegVar.zza(zzegVar.zzd(obj));
        if (!this.zzh) {
            return iZza;
        }
        this.zzn.zza(obj);
        throw null;
    }

    private static int zzp(Object obj, long j) {
        return ((Integer) zzeq.zzf(obj, j)).intValue();
    }

    private final int zzq(Object obj, byte[] bArr, int i, int i2, int i3, long j, zzan zzanVar) throws IOException {
        Unsafe unsafe = zzb;
        Object objZzC = zzC(i3);
        Object object = unsafe.getObject(obj, j);
        if (!((zzcz) object).zze()) {
            zzcz zzczVarZzb = zzcz.zza().zzb();
            zzda.zzb(zzczVarZzb, object);
            unsafe.putObject(obj, j, zzczVarZzb);
        }
        throw null;
    }

    private final int zzr(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzan zzanVar) throws IOException {
        Unsafe unsafe = zzb;
        long j2 = this.zzc[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 != 1) {
                    return i;
                }
                unsafe.putObject(obj, j, Double.valueOf(Double.longBitsToDouble(zzao.zzp(bArr, i))));
                int i9 = i + 8;
                unsafe.putInt(obj, j2, i4);
                return i9;
            case 52:
                if (i5 != 5) {
                    return i;
                }
                unsafe.putObject(obj, j, Float.valueOf(Float.intBitsToFloat(zzao.zzb(bArr, i))));
                int i10 = i + 4;
                unsafe.putInt(obj, j2, i4);
                return i10;
            case 53:
            case 54:
                if (i5 != 0) {
                    return i;
                }
                int iZzm = zzao.zzm(bArr, i, zzanVar);
                unsafe.putObject(obj, j, Long.valueOf(zzanVar.zzb));
                unsafe.putInt(obj, j2, i4);
                return iZzm;
            case 55:
            case 62:
                if (i5 != 0) {
                    return i;
                }
                int iZzj = zzao.zzj(bArr, i, zzanVar);
                unsafe.putObject(obj, j, Integer.valueOf(zzanVar.zza));
                unsafe.putInt(obj, j2, i4);
                return iZzj;
            case 56:
            case 65:
                if (i5 != 1) {
                    return i;
                }
                unsafe.putObject(obj, j, Long.valueOf(zzao.zzp(bArr, i)));
                int i11 = i + 8;
                unsafe.putInt(obj, j2, i4);
                return i11;
            case 57:
            case 64:
                if (i5 != 5) {
                    return i;
                }
                unsafe.putObject(obj, j, Integer.valueOf(zzao.zzb(bArr, i)));
                int i12 = i + 4;
                unsafe.putInt(obj, j2, i4);
                return i12;
            case 58:
                if (i5 != 0) {
                    return i;
                }
                int iZzm2 = zzao.zzm(bArr, i, zzanVar);
                unsafe.putObject(obj, j, Boolean.valueOf(zzanVar.zzb != 0));
                unsafe.putInt(obj, j2, i4);
                return iZzm2;
            case 59:
                if (i5 != 2) {
                    return i;
                }
                int iZzj2 = zzao.zzj(bArr, i, zzanVar);
                int i13 = zzanVar.zza;
                if (i13 == 0) {
                    unsafe.putObject(obj, j, "");
                } else {
                    if ((i6 & DriveFile.MODE_WRITE_ONLY) != 0 && !zzev.zze(bArr, iZzj2, iZzj2 + i13)) {
                        throw zzci.zzc();
                    }
                    unsafe.putObject(obj, j, new String(bArr, iZzj2, i13, zzcg.zzb));
                    iZzj2 += i13;
                }
                unsafe.putInt(obj, j2, i4);
                return iZzj2;
            case 60:
                if (i5 != 2) {
                    return i;
                }
                Object objZzE = zzE(obj, i4, i8);
                int iZzo = zzao.zzo(objZzE, zzB(i8), bArr, i, i2, zzanVar);
                zzM(obj, i4, i8, objZzE);
                return iZzo;
            case 61:
                if (i5 != 2) {
                    return i;
                }
                int iZza = zzao.zza(bArr, i, zzanVar);
                unsafe.putObject(obj, j, zzanVar.zzc);
                unsafe.putInt(obj, j2, i4);
                return iZza;
            case 63:
                if (i5 != 0) {
                    return i;
                }
                int iZzj3 = zzao.zzj(bArr, i, zzanVar);
                int i14 = zzanVar.zza;
                zzce zzceVarZzA = zzA(i8);
                if (zzceVarZzA == null || zzceVarZzA.zza(i14)) {
                    unsafe.putObject(obj, j, Integer.valueOf(i14));
                    unsafe.putInt(obj, j2, i4);
                } else {
                    zzd(obj).zzj(i3, Long.valueOf(i14));
                }
                return iZzj3;
            case 66:
                if (i5 != 0) {
                    return i;
                }
                int iZzj4 = zzao.zzj(bArr, i, zzanVar);
                unsafe.putObject(obj, j, Integer.valueOf(zzbe.zzb(zzanVar.zza)));
                unsafe.putInt(obj, j2, i4);
                return iZzj4;
            case 67:
                if (i5 != 0) {
                    return i;
                }
                int iZzm3 = zzao.zzm(bArr, i, zzanVar);
                unsafe.putObject(obj, j, Long.valueOf(zzbe.zzc(zzanVar.zzb)));
                unsafe.putInt(obj, j2, i4);
                return iZzm3;
            case 68:
                if (i5 != 3) {
                    return i;
                }
                Object objZzE2 = zzE(obj, i4, i8);
                int iZzn = zzao.zzn(objZzE2, zzB(i8), bArr, i, i2, (i3 & (-8)) | 4, zzanVar);
                zzM(obj, i4, i8, objZzE2);
                return iZzn;
            default:
                return i;
        }
    }

    private final int zzs(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7, long j2, zzan zzanVar) throws IOException {
        int i8;
        int i9;
        int i10;
        int i11;
        int iZzl;
        int iZzj = i;
        Unsafe unsafe = zzb;
        zzcf zzcfVarZzd = (zzcf) unsafe.getObject(obj, j2);
        if (!zzcfVarZzd.zzc()) {
            int size = zzcfVarZzd.size();
            zzcfVarZzd = zzcfVarZzd.zzd(size == 0 ? 10 : size + size);
            unsafe.putObject(obj, j2, zzcfVarZzd);
        }
        switch (i7) {
            case 18:
            case 35:
                if (i5 == 2) {
                    zzbk zzbkVar = (zzbk) zzcfVarZzd;
                    int iZzj2 = zzao.zzj(bArr, iZzj, zzanVar);
                    int i12 = zzanVar.zza + iZzj2;
                    while (iZzj2 < i12) {
                        zzbkVar.zze(Double.longBitsToDouble(zzao.zzp(bArr, iZzj2)));
                        iZzj2 += 8;
                    }
                    if (iZzj2 == i12) {
                        return iZzj2;
                    }
                    throw zzci.zzg();
                }
                if (i5 == 1) {
                    zzbk zzbkVar2 = (zzbk) zzcfVarZzd;
                    zzbkVar2.zze(Double.longBitsToDouble(zzao.zzp(bArr, i)));
                    while (true) {
                        i8 = iZzj + 8;
                        if (i8 < i2) {
                            iZzj = zzao.zzj(bArr, i8, zzanVar);
                            if (i3 == zzanVar.zza) {
                                zzbkVar2.zze(Double.longBitsToDouble(zzao.zzp(bArr, iZzj)));
                            }
                        }
                    }
                    return i8;
                }
                break;
            case 19:
            case 36:
                if (i5 == 2) {
                    zzbu zzbuVar = (zzbu) zzcfVarZzd;
                    int iZzj3 = zzao.zzj(bArr, iZzj, zzanVar);
                    int i13 = zzanVar.zza + iZzj3;
                    while (iZzj3 < i13) {
                        zzbuVar.zze(Float.intBitsToFloat(zzao.zzb(bArr, iZzj3)));
                        iZzj3 += 4;
                    }
                    if (iZzj3 == i13) {
                        return iZzj3;
                    }
                    throw zzci.zzg();
                }
                if (i5 == 5) {
                    zzbu zzbuVar2 = (zzbu) zzcfVarZzd;
                    zzbuVar2.zze(Float.intBitsToFloat(zzao.zzb(bArr, i)));
                    while (true) {
                        i9 = iZzj + 4;
                        if (i9 < i2) {
                            iZzj = zzao.zzj(bArr, i9, zzanVar);
                            if (i3 == zzanVar.zza) {
                                zzbuVar2.zze(Float.intBitsToFloat(zzao.zzb(bArr, iZzj)));
                            }
                        }
                    }
                    return i9;
                }
                break;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i5 == 2) {
                    zzcu zzcuVar = (zzcu) zzcfVarZzd;
                    int iZzj4 = zzao.zzj(bArr, iZzj, zzanVar);
                    int i14 = zzanVar.zza + iZzj4;
                    while (iZzj4 < i14) {
                        iZzj4 = zzao.zzm(bArr, iZzj4, zzanVar);
                        zzcuVar.zzf(zzanVar.zzb);
                    }
                    if (iZzj4 == i14) {
                        return iZzj4;
                    }
                    throw zzci.zzg();
                }
                if (i5 == 0) {
                    zzcu zzcuVar2 = (zzcu) zzcfVarZzd;
                    int iZzm = zzao.zzm(bArr, iZzj, zzanVar);
                    zzcuVar2.zzf(zzanVar.zzb);
                    while (iZzm < i2) {
                        int iZzj5 = zzao.zzj(bArr, iZzm, zzanVar);
                        if (i3 != zzanVar.zza) {
                            return iZzm;
                        }
                        iZzm = zzao.zzm(bArr, iZzj5, zzanVar);
                        zzcuVar2.zzf(zzanVar.zzb);
                    }
                    return iZzm;
                }
                break;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i5 == 2) {
                    return zzao.zzf(bArr, iZzj, zzcfVarZzd, zzanVar);
                }
                if (i5 == 0) {
                    return zzao.zzl(i3, bArr, i, i2, zzcfVarZzd, zzanVar);
                }
                break;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i5 == 2) {
                    zzcu zzcuVar3 = (zzcu) zzcfVarZzd;
                    int iZzj6 = zzao.zzj(bArr, iZzj, zzanVar);
                    int i15 = zzanVar.zza + iZzj6;
                    while (iZzj6 < i15) {
                        zzcuVar3.zzf(zzao.zzp(bArr, iZzj6));
                        iZzj6 += 8;
                    }
                    if (iZzj6 == i15) {
                        return iZzj6;
                    }
                    throw zzci.zzg();
                }
                if (i5 == 1) {
                    zzcu zzcuVar4 = (zzcu) zzcfVarZzd;
                    zzcuVar4.zzf(zzao.zzp(bArr, i));
                    while (true) {
                        i10 = iZzj + 8;
                        if (i10 < i2) {
                            iZzj = zzao.zzj(bArr, i10, zzanVar);
                            if (i3 == zzanVar.zza) {
                                zzcuVar4.zzf(zzao.zzp(bArr, iZzj));
                            }
                        }
                    }
                    return i10;
                }
                break;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i5 == 2) {
                    zzcc zzccVar = (zzcc) zzcfVarZzd;
                    int iZzj7 = zzao.zzj(bArr, iZzj, zzanVar);
                    int i16 = zzanVar.zza + iZzj7;
                    while (iZzj7 < i16) {
                        zzccVar.zzf(zzao.zzb(bArr, iZzj7));
                        iZzj7 += 4;
                    }
                    if (iZzj7 == i16) {
                        return iZzj7;
                    }
                    throw zzci.zzg();
                }
                if (i5 == 5) {
                    zzcc zzccVar2 = (zzcc) zzcfVarZzd;
                    zzccVar2.zzf(zzao.zzb(bArr, i));
                    while (true) {
                        i11 = iZzj + 4;
                        if (i11 < i2) {
                            iZzj = zzao.zzj(bArr, i11, zzanVar);
                            if (i3 == zzanVar.zza) {
                                zzccVar2.zzf(zzao.zzb(bArr, iZzj));
                            }
                        }
                    }
                    return i11;
                }
                break;
            case 25:
            case 42:
                if (i5 == 2) {
                    zzap zzapVar = (zzap) zzcfVarZzd;
                    int iZzj8 = zzao.zzj(bArr, iZzj, zzanVar);
                    int i17 = zzanVar.zza + iZzj8;
                    while (iZzj8 < i17) {
                        iZzj8 = zzao.zzm(bArr, iZzj8, zzanVar);
                        zzapVar.zze(zzanVar.zzb != 0);
                    }
                    if (iZzj8 == i17) {
                        return iZzj8;
                    }
                    throw zzci.zzg();
                }
                if (i5 == 0) {
                    zzap zzapVar2 = (zzap) zzcfVarZzd;
                    int iZzm2 = zzao.zzm(bArr, iZzj, zzanVar);
                    zzapVar2.zze(zzanVar.zzb != 0);
                    while (iZzm2 < i2) {
                        int iZzj9 = zzao.zzj(bArr, iZzm2, zzanVar);
                        if (i3 != zzanVar.zza) {
                            return iZzm2;
                        }
                        iZzm2 = zzao.zzm(bArr, iZzj9, zzanVar);
                        zzapVar2.zze(zzanVar.zzb != 0);
                    }
                    return iZzm2;
                }
                break;
            case 26:
                if (i5 == 2) {
                    if ((j & 536870912) != 0) {
                        iZzj = zzao.zzj(bArr, iZzj, zzanVar);
                        int i18 = zzanVar.zza;
                        if (i18 < 0) {
                            throw zzci.zzd();
                        }
                        if (i18 == 0) {
                            zzcfVarZzd.add("");
                        } else {
                            int i19 = iZzj + i18;
                            if (!zzev.zze(bArr, iZzj, i19)) {
                                throw zzci.zzc();
                            }
                            zzcfVarZzd.add(new String(bArr, iZzj, i18, zzcg.zzb));
                            iZzj = i19;
                        }
                        while (iZzj < i2) {
                            int iZzj10 = zzao.zzj(bArr, iZzj, zzanVar);
                            if (i3 != zzanVar.zza) {
                                break;
                            } else {
                                iZzj = zzao.zzj(bArr, iZzj10, zzanVar);
                                int i20 = zzanVar.zza;
                                if (i20 < 0) {
                                    throw zzci.zzd();
                                }
                                if (i20 == 0) {
                                    zzcfVarZzd.add("");
                                } else {
                                    int i21 = iZzj + i20;
                                    if (!zzev.zze(bArr, iZzj, i21)) {
                                        throw zzci.zzc();
                                    }
                                    zzcfVarZzd.add(new String(bArr, iZzj, i20, zzcg.zzb));
                                    iZzj = i21;
                                }
                            }
                        }
                    } else {
                        iZzj = zzao.zzj(bArr, iZzj, zzanVar);
                        int i22 = zzanVar.zza;
                        if (i22 < 0) {
                            throw zzci.zzd();
                        }
                        if (i22 == 0) {
                            zzcfVarZzd.add("");
                        } else {
                            zzcfVarZzd.add(new String(bArr, iZzj, i22, zzcg.zzb));
                            iZzj += i22;
                        }
                        while (iZzj < i2) {
                            int iZzj11 = zzao.zzj(bArr, iZzj, zzanVar);
                            if (i3 != zzanVar.zza) {
                                break;
                            } else {
                                iZzj = zzao.zzj(bArr, iZzj11, zzanVar);
                                int i23 = zzanVar.zza;
                                if (i23 < 0) {
                                    throw zzci.zzd();
                                }
                                if (i23 == 0) {
                                    zzcfVarZzd.add("");
                                } else {
                                    zzcfVarZzd.add(new String(bArr, iZzj, i23, zzcg.zzb));
                                    iZzj += i23;
                                }
                            }
                        }
                    }
                }
                break;
            case 27:
                if (i5 == 2) {
                    return zzao.zze(zzB(i6), i3, bArr, i, i2, zzcfVarZzd, zzanVar);
                }
                break;
            case 28:
                if (i5 == 2) {
                    int iZzj12 = zzao.zzj(bArr, iZzj, zzanVar);
                    int i24 = zzanVar.zza;
                    if (i24 < 0) {
                        throw zzci.zzd();
                    }
                    if (i24 > bArr.length - iZzj12) {
                        throw zzci.zzg();
                    }
                    if (i24 == 0) {
                        zzcfVarZzd.add(zzba.zzb);
                    } else {
                        zzcfVarZzd.add(zzba.zzl(bArr, iZzj12, i24));
                        iZzj12 += i24;
                    }
                    while (iZzj12 < i2) {
                        int iZzj13 = zzao.zzj(bArr, iZzj12, zzanVar);
                        if (i3 != zzanVar.zza) {
                            return iZzj12;
                        }
                        iZzj12 = zzao.zzj(bArr, iZzj13, zzanVar);
                        int i25 = zzanVar.zza;
                        if (i25 < 0) {
                            throw zzci.zzd();
                        }
                        if (i25 > bArr.length - iZzj12) {
                            throw zzci.zzg();
                        }
                        if (i25 == 0) {
                            zzcfVarZzd.add(zzba.zzb);
                        } else {
                            zzcfVarZzd.add(zzba.zzl(bArr, iZzj12, i25));
                            iZzj12 += i25;
                        }
                    }
                    return iZzj12;
                }
                break;
            case 30:
            case 44:
                if (i5 == 2) {
                    iZzl = zzao.zzf(bArr, iZzj, zzcfVarZzd, zzanVar);
                } else if (i5 == 0) {
                    iZzl = zzao.zzl(i3, bArr, i, i2, zzcfVarZzd, zzanVar);
                }
                zzce zzceVarZzA = zzA(i6);
                zzeg zzegVar = this.zzm;
                int i26 = zzdr.zza;
                if (zzceVarZzA != null) {
                    Object objZzA = null;
                    if (zzcfVarZzd instanceof RandomAccess) {
                        int size2 = zzcfVarZzd.size();
                        int i27 = 0;
                        for (int i28 = 0; i28 < size2; i28++) {
                            int iIntValue = ((Integer) zzcfVarZzd.get(i28)).intValue();
                            if (zzceVarZzA.zza(iIntValue)) {
                                if (i28 != i27) {
                                    zzcfVarZzd.set(i27, Integer.valueOf(iIntValue));
                                }
                                i27++;
                            } else {
                                objZzA = zzdr.zzA(obj, i4, iIntValue, objZzA, zzegVar);
                            }
                        }
                        if (i27 != size2) {
                            zzcfVarZzd.subList(i27, size2).clear();
                            return iZzl;
                        }
                    } else {
                        Iterator it = zzcfVarZzd.iterator();
                        while (it.hasNext()) {
                            int iIntValue2 = ((Integer) it.next()).intValue();
                            if (!zzceVarZzA.zza(iIntValue2)) {
                                objZzA = zzdr.zzA(obj, i4, iIntValue2, objZzA, zzegVar);
                                it.remove();
                            }
                        }
                    }
                }
                return iZzl;
            case 33:
            case 47:
                if (i5 == 2) {
                    zzcc zzccVar3 = (zzcc) zzcfVarZzd;
                    int iZzj14 = zzao.zzj(bArr, iZzj, zzanVar);
                    int i29 = zzanVar.zza + iZzj14;
                    while (iZzj14 < i29) {
                        iZzj14 = zzao.zzj(bArr, iZzj14, zzanVar);
                        zzccVar3.zzf(zzbe.zzb(zzanVar.zza));
                    }
                    if (iZzj14 == i29) {
                        return iZzj14;
                    }
                    throw zzci.zzg();
                }
                if (i5 == 0) {
                    zzcc zzccVar4 = (zzcc) zzcfVarZzd;
                    int iZzj15 = zzao.zzj(bArr, iZzj, zzanVar);
                    zzccVar4.zzf(zzbe.zzb(zzanVar.zza));
                    while (iZzj15 < i2) {
                        int iZzj16 = zzao.zzj(bArr, iZzj15, zzanVar);
                        if (i3 != zzanVar.zza) {
                            return iZzj15;
                        }
                        iZzj15 = zzao.zzj(bArr, iZzj16, zzanVar);
                        zzccVar4.zzf(zzbe.zzb(zzanVar.zza));
                    }
                    return iZzj15;
                }
                break;
            case 34:
            case 48:
                if (i5 == 2) {
                    zzcu zzcuVar5 = (zzcu) zzcfVarZzd;
                    int iZzj17 = zzao.zzj(bArr, iZzj, zzanVar);
                    int i30 = zzanVar.zza + iZzj17;
                    while (iZzj17 < i30) {
                        iZzj17 = zzao.zzm(bArr, iZzj17, zzanVar);
                        zzcuVar5.zzf(zzbe.zzc(zzanVar.zzb));
                    }
                    if (iZzj17 == i30) {
                        return iZzj17;
                    }
                    throw zzci.zzg();
                }
                if (i5 == 0) {
                    zzcu zzcuVar6 = (zzcu) zzcfVarZzd;
                    int iZzm3 = zzao.zzm(bArr, iZzj, zzanVar);
                    zzcuVar6.zzf(zzbe.zzc(zzanVar.zzb));
                    while (iZzm3 < i2) {
                        int iZzj18 = zzao.zzj(bArr, iZzm3, zzanVar);
                        if (i3 != zzanVar.zza) {
                            return iZzm3;
                        }
                        iZzm3 = zzao.zzm(bArr, iZzj18, zzanVar);
                        zzcuVar6.zzf(zzbe.zzc(zzanVar.zzb));
                    }
                    return iZzm3;
                }
                break;
            default:
                if (i5 == 3) {
                    zzdp zzdpVarZzB = zzB(i6);
                    int i31 = (i3 & (-8)) | 4;
                    int iZzc = zzao.zzc(zzdpVarZzB, bArr, i, i2, i31, zzanVar);
                    zzcfVarZzd.add(zzanVar.zzc);
                    while (iZzc < i2) {
                        int iZzj19 = zzao.zzj(bArr, iZzc, zzanVar);
                        if (i3 != zzanVar.zza) {
                            return iZzc;
                        }
                        iZzc = zzao.zzc(zzdpVarZzB, bArr, iZzj19, i2, i31, zzanVar);
                        zzcfVarZzd.add(zzanVar.zzc);
                    }
                    return iZzc;
                }
                break;
        }
        return iZzj;
    }

    private final int zzt(int i) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzw(i, 0);
    }

    private final int zzu(int i, int i2) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzw(i, i2);
    }

    private final int zzv(int i) {
        return this.zzc[i + 2];
    }

    private final int zzw(int i, int i2) {
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

    private static int zzx(int i) {
        return (i >>> 20) & 255;
    }

    private final int zzy(int i) {
        return this.zzc[i + 1];
    }

    private static long zzz(Object obj, long j) {
        return ((Long) zzeq.zzf(obj, j)).longValue();
    }

    @Override // com.google.android.gms.internal.play_billing.zzdp
    public final int zza(Object obj) {
        int iZzx;
        int iZzx2;
        int iZzy;
        int iZzx3;
        int iZzx4;
        int iZzx5;
        int iZzx6;
        int iZzn;
        int iZzx7;
        int iZzy2;
        int iZzx8;
        int iZzx9;
        zzew zzewVar = zzew.zza;
        if (this.zzo - 1 == 0) {
            return zzo(obj);
        }
        Unsafe unsafe = zzb;
        int i = 0;
        for (int i2 = 0; i2 < this.zzc.length; i2 += 3) {
            int iZzy3 = zzy(i2);
            int iZzx10 = zzx(iZzy3);
            int i3 = this.zzc[i2];
            int i4 = iZzy3 & 1048575;
            if (iZzx10 >= zzbt.zzJ.zza() && iZzx10 <= zzbt.zzW.zza()) {
                int i5 = this.zzc[i2 + 2];
            }
            long j = i4;
            switch (iZzx10) {
                case 0:
                    if (zzP(obj, i2)) {
                        iZzx = zzbi.zzx(i3 << 3);
                        iZzn = iZzx + 8;
                        i += iZzn;
                    }
                    break;
                case 1:
                    if (zzP(obj, i2)) {
                        iZzx2 = zzbi.zzx(i3 << 3);
                        iZzn = iZzx2 + 4;
                        i += iZzn;
                    }
                    break;
                case 2:
                    if (zzP(obj, i2)) {
                        iZzy = zzbi.zzy(zzeq.zzd(obj, j));
                        iZzx3 = zzbi.zzx(i3 << 3);
                        i += iZzx3 + iZzy;
                    }
                    break;
                case 3:
                    if (zzP(obj, i2)) {
                        iZzy = zzbi.zzy(zzeq.zzd(obj, j));
                        iZzx3 = zzbi.zzx(i3 << 3);
                        i += iZzx3 + iZzy;
                    }
                    break;
                case 4:
                    if (zzP(obj, i2)) {
                        iZzy = zzbi.zzu(zzeq.zzc(obj, j));
                        iZzx3 = zzbi.zzx(i3 << 3);
                        i += iZzx3 + iZzy;
                    }
                    break;
                case 5:
                    if (zzP(obj, i2)) {
                        iZzx = zzbi.zzx(i3 << 3);
                        iZzn = iZzx + 8;
                        i += iZzn;
                    }
                    break;
                case 6:
                    if (zzP(obj, i2)) {
                        iZzx2 = zzbi.zzx(i3 << 3);
                        iZzn = iZzx2 + 4;
                        i += iZzn;
                    }
                    break;
                case 7:
                    if (zzP(obj, i2)) {
                        iZzx4 = zzbi.zzx(i3 << 3);
                        iZzn = iZzx4 + 1;
                        i += iZzn;
                    }
                    break;
                case 8:
                    if (zzP(obj, i2)) {
                        Object objZzf = zzeq.zzf(obj, j);
                        if (objZzf instanceof zzba) {
                            int i6 = i3 << 3;
                            int i7 = zzbi.zzb;
                            int iZzd = ((zzba) objZzf).zzd();
                            iZzx5 = zzbi.zzx(iZzd) + iZzd;
                            iZzx6 = zzbi.zzx(i6);
                            iZzn = iZzx6 + iZzx5;
                            i += iZzn;
                        } else {
                            iZzy = zzbi.zzw((String) objZzf);
                            iZzx3 = zzbi.zzx(i3 << 3);
                            i += iZzx3 + iZzy;
                        }
                    }
                    break;
                case 9:
                    if (zzP(obj, i2)) {
                        iZzn = zzdr.zzn(i3, zzeq.zzf(obj, j), zzB(i2));
                        i += iZzn;
                    }
                    break;
                case 10:
                    if (zzP(obj, i2)) {
                        zzba zzbaVar = (zzba) zzeq.zzf(obj, j);
                        int i8 = i3 << 3;
                        int i9 = zzbi.zzb;
                        int iZzd2 = zzbaVar.zzd();
                        iZzx5 = zzbi.zzx(iZzd2) + iZzd2;
                        iZzx6 = zzbi.zzx(i8);
                        iZzn = iZzx6 + iZzx5;
                        i += iZzn;
                    }
                    break;
                case 11:
                    if (zzP(obj, i2)) {
                        iZzy = zzbi.zzx(zzeq.zzc(obj, j));
                        iZzx3 = zzbi.zzx(i3 << 3);
                        i += iZzx3 + iZzy;
                    }
                    break;
                case 12:
                    if (zzP(obj, i2)) {
                        iZzy = zzbi.zzu(zzeq.zzc(obj, j));
                        iZzx3 = zzbi.zzx(i3 << 3);
                        i += iZzx3 + iZzy;
                    }
                    break;
                case 13:
                    if (zzP(obj, i2)) {
                        iZzx2 = zzbi.zzx(i3 << 3);
                        iZzn = iZzx2 + 4;
                        i += iZzn;
                    }
                    break;
                case 14:
                    if (zzP(obj, i2)) {
                        iZzx = zzbi.zzx(i3 << 3);
                        iZzn = iZzx + 8;
                        i += iZzn;
                    }
                    break;
                case 15:
                    if (zzP(obj, i2)) {
                        int iZzc = zzeq.zzc(obj, j);
                        iZzx3 = zzbi.zzx(i3 << 3);
                        iZzy = zzbi.zzx((iZzc >> 31) ^ (iZzc + iZzc));
                        i += iZzx3 + iZzy;
                    }
                    break;
                case 16:
                    if (zzP(obj, i2)) {
                        long jZzd = zzeq.zzd(obj, j);
                        iZzx7 = zzbi.zzx(i3 << 3);
                        iZzy2 = zzbi.zzy((jZzd + jZzd) ^ (jZzd >> 63));
                        iZzn = iZzx7 + iZzy2;
                        i += iZzn;
                    }
                    break;
                case 17:
                    if (zzP(obj, i2)) {
                        iZzn = zzbi.zzt(i3, (zzdf) zzeq.zzf(obj, j), zzB(i2));
                        i += iZzn;
                    }
                    break;
                case 18:
                    iZzn = zzdr.zzg(i3, (List) zzeq.zzf(obj, j), false);
                    i += iZzn;
                    break;
                case 19:
                    iZzn = zzdr.zze(i3, (List) zzeq.zzf(obj, j), false);
                    i += iZzn;
                    break;
                case 20:
                    iZzn = zzdr.zzl(i3, (List) zzeq.zzf(obj, j), false);
                    i += iZzn;
                    break;
                case 21:
                    iZzn = zzdr.zzw(i3, (List) zzeq.zzf(obj, j), false);
                    i += iZzn;
                    break;
                case 22:
                    iZzn = zzdr.zzj(i3, (List) zzeq.zzf(obj, j), false);
                    i += iZzn;
                    break;
                case 23:
                    iZzn = zzdr.zzg(i3, (List) zzeq.zzf(obj, j), false);
                    i += iZzn;
                    break;
                case 24:
                    iZzn = zzdr.zze(i3, (List) zzeq.zzf(obj, j), false);
                    i += iZzn;
                    break;
                case 25:
                    iZzn = zzdr.zza(i3, (List) zzeq.zzf(obj, j), false);
                    i += iZzn;
                    break;
                case 26:
                    iZzn = zzdr.zzt(i3, (List) zzeq.zzf(obj, j));
                    i += iZzn;
                    break;
                case 27:
                    iZzn = zzdr.zzo(i3, (List) zzeq.zzf(obj, j), zzB(i2));
                    i += iZzn;
                    break;
                case 28:
                    iZzn = zzdr.zzb(i3, (List) zzeq.zzf(obj, j));
                    i += iZzn;
                    break;
                case 29:
                    iZzn = zzdr.zzu(i3, (List) zzeq.zzf(obj, j), false);
                    i += iZzn;
                    break;
                case 30:
                    iZzn = zzdr.zzc(i3, (List) zzeq.zzf(obj, j), false);
                    i += iZzn;
                    break;
                case 31:
                    iZzn = zzdr.zze(i3, (List) zzeq.zzf(obj, j), false);
                    i += iZzn;
                    break;
                case 32:
                    iZzn = zzdr.zzg(i3, (List) zzeq.zzf(obj, j), false);
                    i += iZzn;
                    break;
                case 33:
                    iZzn = zzdr.zzp(i3, (List) zzeq.zzf(obj, j), false);
                    i += iZzn;
                    break;
                case 34:
                    iZzn = zzdr.zzr(i3, (List) zzeq.zzf(obj, j), false);
                    i += iZzn;
                    break;
                case 35:
                    iZzy = zzdr.zzh((List) unsafe.getObject(obj, j));
                    if (iZzy > 0) {
                        int i10 = i3 << 3;
                        iZzx8 = zzbi.zzx(iZzy);
                        iZzx9 = zzbi.zzx(i10);
                        iZzx3 = iZzx9 + iZzx8;
                        i += iZzx3 + iZzy;
                    }
                    break;
                case 36:
                    iZzy = zzdr.zzf((List) unsafe.getObject(obj, j));
                    if (iZzy > 0) {
                        int i11 = i3 << 3;
                        iZzx8 = zzbi.zzx(iZzy);
                        iZzx9 = zzbi.zzx(i11);
                        iZzx3 = iZzx9 + iZzx8;
                        i += iZzx3 + iZzy;
                    }
                    break;
                case 37:
                    iZzy = zzdr.zzm((List) unsafe.getObject(obj, j));
                    if (iZzy > 0) {
                        int i12 = i3 << 3;
                        iZzx8 = zzbi.zzx(iZzy);
                        iZzx9 = zzbi.zzx(i12);
                        iZzx3 = iZzx9 + iZzx8;
                        i += iZzx3 + iZzy;
                    }
                    break;
                case 38:
                    iZzy = zzdr.zzx((List) unsafe.getObject(obj, j));
                    if (iZzy > 0) {
                        int i13 = i3 << 3;
                        iZzx8 = zzbi.zzx(iZzy);
                        iZzx9 = zzbi.zzx(i13);
                        iZzx3 = iZzx9 + iZzx8;
                        i += iZzx3 + iZzy;
                    }
                    break;
                case 39:
                    iZzy = zzdr.zzk((List) unsafe.getObject(obj, j));
                    if (iZzy > 0) {
                        int i14 = i3 << 3;
                        iZzx8 = zzbi.zzx(iZzy);
                        iZzx9 = zzbi.zzx(i14);
                        iZzx3 = iZzx9 + iZzx8;
                        i += iZzx3 + iZzy;
                    }
                    break;
                case 40:
                    iZzy = zzdr.zzh((List) unsafe.getObject(obj, j));
                    if (iZzy > 0) {
                        int i15 = i3 << 3;
                        iZzx8 = zzbi.zzx(iZzy);
                        iZzx9 = zzbi.zzx(i15);
                        iZzx3 = iZzx9 + iZzx8;
                        i += iZzx3 + iZzy;
                    }
                    break;
                case 41:
                    iZzy = zzdr.zzf((List) unsafe.getObject(obj, j));
                    if (iZzy > 0) {
                        int i16 = i3 << 3;
                        iZzx8 = zzbi.zzx(iZzy);
                        iZzx9 = zzbi.zzx(i16);
                        iZzx3 = iZzx9 + iZzx8;
                        i += iZzx3 + iZzy;
                    }
                    break;
                case 42:
                    List list = (List) unsafe.getObject(obj, j);
                    int i17 = zzdr.zza;
                    iZzy = list.size();
                    if (iZzy > 0) {
                        int i18 = i3 << 3;
                        iZzx8 = zzbi.zzx(iZzy);
                        iZzx9 = zzbi.zzx(i18);
                        iZzx3 = iZzx9 + iZzx8;
                        i += iZzx3 + iZzy;
                    }
                    break;
                case 43:
                    iZzy = zzdr.zzv((List) unsafe.getObject(obj, j));
                    if (iZzy > 0) {
                        int i19 = i3 << 3;
                        iZzx8 = zzbi.zzx(iZzy);
                        iZzx9 = zzbi.zzx(i19);
                        iZzx3 = iZzx9 + iZzx8;
                        i += iZzx3 + iZzy;
                    }
                    break;
                case 44:
                    iZzy = zzdr.zzd((List) unsafe.getObject(obj, j));
                    if (iZzy > 0) {
                        int i20 = i3 << 3;
                        iZzx8 = zzbi.zzx(iZzy);
                        iZzx9 = zzbi.zzx(i20);
                        iZzx3 = iZzx9 + iZzx8;
                        i += iZzx3 + iZzy;
                    }
                    break;
                case 45:
                    iZzy = zzdr.zzf((List) unsafe.getObject(obj, j));
                    if (iZzy > 0) {
                        int i21 = i3 << 3;
                        iZzx8 = zzbi.zzx(iZzy);
                        iZzx9 = zzbi.zzx(i21);
                        iZzx3 = iZzx9 + iZzx8;
                        i += iZzx3 + iZzy;
                    }
                    break;
                case 46:
                    iZzy = zzdr.zzh((List) unsafe.getObject(obj, j));
                    if (iZzy > 0) {
                        int i22 = i3 << 3;
                        iZzx8 = zzbi.zzx(iZzy);
                        iZzx9 = zzbi.zzx(i22);
                        iZzx3 = iZzx9 + iZzx8;
                        i += iZzx3 + iZzy;
                    }
                    break;
                case 47:
                    iZzy = zzdr.zzq((List) unsafe.getObject(obj, j));
                    if (iZzy > 0) {
                        int i23 = i3 << 3;
                        iZzx8 = zzbi.zzx(iZzy);
                        iZzx9 = zzbi.zzx(i23);
                        iZzx3 = iZzx9 + iZzx8;
                        i += iZzx3 + iZzy;
                    }
                    break;
                case 48:
                    iZzy = zzdr.zzs((List) unsafe.getObject(obj, j));
                    if (iZzy > 0) {
                        int i24 = i3 << 3;
                        iZzx8 = zzbi.zzx(iZzy);
                        iZzx9 = zzbi.zzx(i24);
                        iZzx3 = iZzx9 + iZzx8;
                        i += iZzx3 + iZzy;
                    }
                    break;
                case 49:
                    iZzn = zzdr.zzi(i3, (List) zzeq.zzf(obj, j), zzB(i2));
                    i += iZzn;
                    break;
                case 50:
                    zzda.zza(i3, zzeq.zzf(obj, j), zzC(i2));
                    break;
                case 51:
                    if (zzT(obj, i3, i2)) {
                        iZzx = zzbi.zzx(i3 << 3);
                        iZzn = iZzx + 8;
                        i += iZzn;
                    }
                    break;
                case 52:
                    if (zzT(obj, i3, i2)) {
                        iZzx2 = zzbi.zzx(i3 << 3);
                        iZzn = iZzx2 + 4;
                        i += iZzn;
                    }
                    break;
                case 53:
                    if (zzT(obj, i3, i2)) {
                        iZzy = zzbi.zzy(zzz(obj, j));
                        iZzx3 = zzbi.zzx(i3 << 3);
                        i += iZzx3 + iZzy;
                    }
                    break;
                case 54:
                    if (zzT(obj, i3, i2)) {
                        iZzy = zzbi.zzy(zzz(obj, j));
                        iZzx3 = zzbi.zzx(i3 << 3);
                        i += iZzx3 + iZzy;
                    }
                    break;
                case 55:
                    if (zzT(obj, i3, i2)) {
                        iZzy = zzbi.zzu(zzp(obj, j));
                        iZzx3 = zzbi.zzx(i3 << 3);
                        i += iZzx3 + iZzy;
                    }
                    break;
                case 56:
                    if (zzT(obj, i3, i2)) {
                        iZzx = zzbi.zzx(i3 << 3);
                        iZzn = iZzx + 8;
                        i += iZzn;
                    }
                    break;
                case 57:
                    if (zzT(obj, i3, i2)) {
                        iZzx2 = zzbi.zzx(i3 << 3);
                        iZzn = iZzx2 + 4;
                        i += iZzn;
                    }
                    break;
                case 58:
                    if (zzT(obj, i3, i2)) {
                        iZzx4 = zzbi.zzx(i3 << 3);
                        iZzn = iZzx4 + 1;
                        i += iZzn;
                    }
                    break;
                case 59:
                    if (zzT(obj, i3, i2)) {
                        Object objZzf2 = zzeq.zzf(obj, j);
                        if (objZzf2 instanceof zzba) {
                            int i25 = i3 << 3;
                            int i26 = zzbi.zzb;
                            int iZzd3 = ((zzba) objZzf2).zzd();
                            iZzx5 = zzbi.zzx(iZzd3) + iZzd3;
                            iZzx6 = zzbi.zzx(i25);
                            iZzn = iZzx6 + iZzx5;
                            i += iZzn;
                        } else {
                            iZzy = zzbi.zzw((String) objZzf2);
                            iZzx3 = zzbi.zzx(i3 << 3);
                            i += iZzx3 + iZzy;
                        }
                    }
                    break;
                case 60:
                    if (zzT(obj, i3, i2)) {
                        iZzn = zzdr.zzn(i3, zzeq.zzf(obj, j), zzB(i2));
                        i += iZzn;
                    }
                    break;
                case 61:
                    if (zzT(obj, i3, i2)) {
                        zzba zzbaVar2 = (zzba) zzeq.zzf(obj, j);
                        int i27 = i3 << 3;
                        int i28 = zzbi.zzb;
                        int iZzd4 = zzbaVar2.zzd();
                        iZzx5 = zzbi.zzx(iZzd4) + iZzd4;
                        iZzx6 = zzbi.zzx(i27);
                        iZzn = iZzx6 + iZzx5;
                        i += iZzn;
                    }
                    break;
                case 62:
                    if (zzT(obj, i3, i2)) {
                        iZzy = zzbi.zzx(zzp(obj, j));
                        iZzx3 = zzbi.zzx(i3 << 3);
                        i += iZzx3 + iZzy;
                    }
                    break;
                case 63:
                    if (zzT(obj, i3, i2)) {
                        iZzy = zzbi.zzu(zzp(obj, j));
                        iZzx3 = zzbi.zzx(i3 << 3);
                        i += iZzx3 + iZzy;
                    }
                    break;
                case 64:
                    if (zzT(obj, i3, i2)) {
                        iZzx2 = zzbi.zzx(i3 << 3);
                        iZzn = iZzx2 + 4;
                        i += iZzn;
                    }
                    break;
                case 65:
                    if (zzT(obj, i3, i2)) {
                        iZzx = zzbi.zzx(i3 << 3);
                        iZzn = iZzx + 8;
                        i += iZzn;
                    }
                    break;
                case 66:
                    if (zzT(obj, i3, i2)) {
                        int iZzp = zzp(obj, j);
                        iZzx3 = zzbi.zzx(i3 << 3);
                        iZzy = zzbi.zzx((iZzp >> 31) ^ (iZzp + iZzp));
                        i += iZzx3 + iZzy;
                    }
                    break;
                case 67:
                    if (zzT(obj, i3, i2)) {
                        long jZzz = zzz(obj, j);
                        iZzx7 = zzbi.zzx(i3 << 3);
                        iZzy2 = zzbi.zzy((jZzz + jZzz) ^ (jZzz >> 63));
                        iZzn = iZzx7 + iZzy2;
                        i += iZzn;
                    }
                    break;
                case 68:
                    if (zzT(obj, i3, i2)) {
                        iZzn = zzbi.zzt(i3, (zzdf) zzeq.zzf(obj, j), zzB(i2));
                        i += iZzn;
                    }
                    break;
            }
        }
        zzeg zzegVar = this.zzm;
        return i + zzegVar.zza(zzegVar.zzd(obj));
    }

    @Override // com.google.android.gms.internal.play_billing.zzdp
    public final int zzb(Object obj) {
        int i;
        long jDoubleToLongBits;
        int i2;
        int iFloatToIntBits;
        int length = this.zzc.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4 += 3) {
            int iZzy = zzy(i4);
            int i5 = this.zzc[i4];
            long j = 1048575 & iZzy;
            int iHashCode = 37;
            switch (zzx(iZzy)) {
                case 0:
                    i = i3 * 53;
                    jDoubleToLongBits = Double.doubleToLongBits(zzeq.zza(obj, j));
                    byte[] bArr = zzcg.zzd;
                    i3 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 1:
                    i2 = i3 * 53;
                    iFloatToIntBits = Float.floatToIntBits(zzeq.zzb(obj, j));
                    i3 = i2 + iFloatToIntBits;
                    break;
                case 2:
                    i = i3 * 53;
                    jDoubleToLongBits = zzeq.zzd(obj, j);
                    byte[] bArr2 = zzcg.zzd;
                    i3 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 3:
                    i = i3 * 53;
                    jDoubleToLongBits = zzeq.zzd(obj, j);
                    byte[] bArr3 = zzcg.zzd;
                    i3 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 4:
                    i2 = i3 * 53;
                    iFloatToIntBits = zzeq.zzc(obj, j);
                    i3 = i2 + iFloatToIntBits;
                    break;
                case 5:
                    i = i3 * 53;
                    jDoubleToLongBits = zzeq.zzd(obj, j);
                    byte[] bArr4 = zzcg.zzd;
                    i3 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 6:
                    i2 = i3 * 53;
                    iFloatToIntBits = zzeq.zzc(obj, j);
                    i3 = i2 + iFloatToIntBits;
                    break;
                case 7:
                    i2 = i3 * 53;
                    iFloatToIntBits = zzcg.zza(zzeq.zzw(obj, j));
                    i3 = i2 + iFloatToIntBits;
                    break;
                case 8:
                    i2 = i3 * 53;
                    iFloatToIntBits = ((String) zzeq.zzf(obj, j)).hashCode();
                    i3 = i2 + iFloatToIntBits;
                    break;
                case 9:
                    Object objZzf = zzeq.zzf(obj, j);
                    if (objZzf != null) {
                        iHashCode = objZzf.hashCode();
                    }
                    i3 = (i3 * 53) + iHashCode;
                    break;
                case 10:
                    i2 = i3 * 53;
                    iFloatToIntBits = zzeq.zzf(obj, j).hashCode();
                    i3 = i2 + iFloatToIntBits;
                    break;
                case 11:
                    i2 = i3 * 53;
                    iFloatToIntBits = zzeq.zzc(obj, j);
                    i3 = i2 + iFloatToIntBits;
                    break;
                case 12:
                    i2 = i3 * 53;
                    iFloatToIntBits = zzeq.zzc(obj, j);
                    i3 = i2 + iFloatToIntBits;
                    break;
                case 13:
                    i2 = i3 * 53;
                    iFloatToIntBits = zzeq.zzc(obj, j);
                    i3 = i2 + iFloatToIntBits;
                    break;
                case 14:
                    i = i3 * 53;
                    jDoubleToLongBits = zzeq.zzd(obj, j);
                    byte[] bArr5 = zzcg.zzd;
                    i3 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 15:
                    i2 = i3 * 53;
                    iFloatToIntBits = zzeq.zzc(obj, j);
                    i3 = i2 + iFloatToIntBits;
                    break;
                case 16:
                    i = i3 * 53;
                    jDoubleToLongBits = zzeq.zzd(obj, j);
                    byte[] bArr6 = zzcg.zzd;
                    i3 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 17:
                    Object objZzf2 = zzeq.zzf(obj, j);
                    if (objZzf2 != null) {
                        iHashCode = objZzf2.hashCode();
                    }
                    i3 = (i3 * 53) + iHashCode;
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
                    i2 = i3 * 53;
                    iFloatToIntBits = zzeq.zzf(obj, j).hashCode();
                    i3 = i2 + iFloatToIntBits;
                    break;
                case 50:
                    i2 = i3 * 53;
                    iFloatToIntBits = zzeq.zzf(obj, j).hashCode();
                    i3 = i2 + iFloatToIntBits;
                    break;
                case 51:
                    if (zzT(obj, i5, i4)) {
                        i = i3 * 53;
                        jDoubleToLongBits = Double.doubleToLongBits(zzm(obj, j));
                        byte[] bArr7 = zzcg.zzd;
                        i3 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 52:
                    if (zzT(obj, i5, i4)) {
                        i2 = i3 * 53;
                        iFloatToIntBits = Float.floatToIntBits(zzn(obj, j));
                        i3 = i2 + iFloatToIntBits;
                    }
                    break;
                case 53:
                    if (zzT(obj, i5, i4)) {
                        i = i3 * 53;
                        jDoubleToLongBits = zzz(obj, j);
                        byte[] bArr8 = zzcg.zzd;
                        i3 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 54:
                    if (zzT(obj, i5, i4)) {
                        i = i3 * 53;
                        jDoubleToLongBits = zzz(obj, j);
                        byte[] bArr9 = zzcg.zzd;
                        i3 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 55:
                    if (zzT(obj, i5, i4)) {
                        i2 = i3 * 53;
                        iFloatToIntBits = zzp(obj, j);
                        i3 = i2 + iFloatToIntBits;
                    }
                    break;
                case 56:
                    if (zzT(obj, i5, i4)) {
                        i = i3 * 53;
                        jDoubleToLongBits = zzz(obj, j);
                        byte[] bArr10 = zzcg.zzd;
                        i3 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 57:
                    if (zzT(obj, i5, i4)) {
                        i2 = i3 * 53;
                        iFloatToIntBits = zzp(obj, j);
                        i3 = i2 + iFloatToIntBits;
                    }
                    break;
                case 58:
                    if (zzT(obj, i5, i4)) {
                        i2 = i3 * 53;
                        iFloatToIntBits = zzcg.zza(zzU(obj, j));
                        i3 = i2 + iFloatToIntBits;
                    }
                    break;
                case 59:
                    if (zzT(obj, i5, i4)) {
                        i2 = i3 * 53;
                        iFloatToIntBits = ((String) zzeq.zzf(obj, j)).hashCode();
                        i3 = i2 + iFloatToIntBits;
                    }
                    break;
                case 60:
                    if (zzT(obj, i5, i4)) {
                        i2 = i3 * 53;
                        iFloatToIntBits = zzeq.zzf(obj, j).hashCode();
                        i3 = i2 + iFloatToIntBits;
                    }
                    break;
                case 61:
                    if (zzT(obj, i5, i4)) {
                        i2 = i3 * 53;
                        iFloatToIntBits = zzeq.zzf(obj, j).hashCode();
                        i3 = i2 + iFloatToIntBits;
                    }
                    break;
                case 62:
                    if (zzT(obj, i5, i4)) {
                        i2 = i3 * 53;
                        iFloatToIntBits = zzp(obj, j);
                        i3 = i2 + iFloatToIntBits;
                    }
                    break;
                case 63:
                    if (zzT(obj, i5, i4)) {
                        i2 = i3 * 53;
                        iFloatToIntBits = zzp(obj, j);
                        i3 = i2 + iFloatToIntBits;
                    }
                    break;
                case 64:
                    if (zzT(obj, i5, i4)) {
                        i2 = i3 * 53;
                        iFloatToIntBits = zzp(obj, j);
                        i3 = i2 + iFloatToIntBits;
                    }
                    break;
                case 65:
                    if (zzT(obj, i5, i4)) {
                        i = i3 * 53;
                        jDoubleToLongBits = zzz(obj, j);
                        byte[] bArr11 = zzcg.zzd;
                        i3 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 66:
                    if (zzT(obj, i5, i4)) {
                        i2 = i3 * 53;
                        iFloatToIntBits = zzp(obj, j);
                        i3 = i2 + iFloatToIntBits;
                    }
                    break;
                case 67:
                    if (zzT(obj, i5, i4)) {
                        i = i3 * 53;
                        jDoubleToLongBits = zzz(obj, j);
                        byte[] bArr12 = zzcg.zzd;
                        i3 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 68:
                    if (zzT(obj, i5, i4)) {
                        i2 = i3 * 53;
                        iFloatToIntBits = zzeq.zzf(obj, j).hashCode();
                        i3 = i2 + iFloatToIntBits;
                    }
                    break;
            }
        }
        int iHashCode2 = (i3 * 53) + this.zzm.zzd(obj).hashCode();
        if (!this.zzh) {
            return iHashCode2;
        }
        this.zzn.zza(obj);
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:141:0x0401, code lost:
    
        if (r6 == 1048575) goto L143;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0403, code lost:
    
        r27.putInt(r12, r6, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0409, code lost:
    
        r2 = r8.zzj;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x040d, code lost:
    
        if (r2 >= r8.zzk) goto L216;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x040f, code lost:
    
        r4 = r8.zzi[r2];
        r5 = r8.zzc[r4];
        r5 = com.google.android.gms.internal.play_billing.zzeq.zzf(r12, r8.zzy(r4) & 1048575);
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0421, code lost:
    
        if (r5 != null) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0428, code lost:
    
        if (r8.zzA(r4) != null) goto L217;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x042a, code lost:
    
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x042d, code lost:
    
        r5 = (com.google.android.gms.internal.play_billing.zzcz) r5;
        r0 = (com.google.android.gms.internal.play_billing.zzcy) r8.zzC(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0435, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0436, code lost:
    
        if (r9 != 0) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x043a, code lost:
    
        if (r0 != r32) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0441, code lost:
    
        throw com.google.android.gms.internal.play_billing.zzci.zze();
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x0444, code lost:
    
        if (r0 > r32) goto L164;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0446, code lost:
    
        if (r3 != r9) goto L164;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x0448, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x044d, code lost:
    
        throw com.google.android.gms.internal.play_billing.zzci.zze();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final int zzc(java.lang.Object r29, byte[] r30, int r31, int r32, int r33, com.google.android.gms.internal.play_billing.zzan r34) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1140
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzdi.zzc(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.play_billing.zzan):int");
    }

    @Override // com.google.android.gms.internal.play_billing.zzdp
    public final Object zze() {
        return ((zzcb) this.zzg).zzi();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x006c  */
    @Override // com.google.android.gms.internal.play_billing.zzdp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zzf(java.lang.Object r8) {
        /*
            Method dump skipped, instruction units count: 218
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzdi.zzf(java.lang.Object):void");
    }

    @Override // com.google.android.gms.internal.play_billing.zzdp
    public final void zzg(Object obj, Object obj2) {
        zzG(obj);
        Objects.requireNonNull(obj2);
        for (int i = 0; i < this.zzc.length; i += 3) {
            int iZzy = zzy(i);
            int i2 = this.zzc[i];
            long j = 1048575 & iZzy;
            switch (zzx(iZzy)) {
                case 0:
                    if (zzP(obj2, i)) {
                        zzeq.zzo(obj, j, zzeq.zza(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 1:
                    if (zzP(obj2, i)) {
                        zzeq.zzp(obj, j, zzeq.zzb(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 2:
                    if (zzP(obj2, i)) {
                        zzeq.zzr(obj, j, zzeq.zzd(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 3:
                    if (zzP(obj2, i)) {
                        zzeq.zzr(obj, j, zzeq.zzd(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 4:
                    if (zzP(obj2, i)) {
                        zzeq.zzq(obj, j, zzeq.zzc(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 5:
                    if (zzP(obj2, i)) {
                        zzeq.zzr(obj, j, zzeq.zzd(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 6:
                    if (zzP(obj2, i)) {
                        zzeq.zzq(obj, j, zzeq.zzc(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 7:
                    if (zzP(obj2, i)) {
                        zzeq.zzm(obj, j, zzeq.zzw(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 8:
                    if (zzP(obj2, i)) {
                        zzeq.zzs(obj, j, zzeq.zzf(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 9:
                    zzH(obj, obj2, i);
                    break;
                case 10:
                    if (zzP(obj2, i)) {
                        zzeq.zzs(obj, j, zzeq.zzf(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 11:
                    if (zzP(obj2, i)) {
                        zzeq.zzq(obj, j, zzeq.zzc(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 12:
                    if (zzP(obj2, i)) {
                        zzeq.zzq(obj, j, zzeq.zzc(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 13:
                    if (zzP(obj2, i)) {
                        zzeq.zzq(obj, j, zzeq.zzc(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 14:
                    if (zzP(obj2, i)) {
                        zzeq.zzr(obj, j, zzeq.zzd(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 15:
                    if (zzP(obj2, i)) {
                        zzeq.zzq(obj, j, zzeq.zzc(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 16:
                    if (zzP(obj2, i)) {
                        zzeq.zzr(obj, j, zzeq.zzd(obj2, j));
                        zzJ(obj, i);
                    }
                    break;
                case 17:
                    zzH(obj, obj2, i);
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
                    this.zzl.zzb(obj, obj2, j);
                    break;
                case 50:
                    int i3 = zzdr.zza;
                    zzeq.zzs(obj, j, zzda.zzb(zzeq.zzf(obj, j), zzeq.zzf(obj2, j)));
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
                    if (zzT(obj2, i2, i)) {
                        zzeq.zzs(obj, j, zzeq.zzf(obj2, j));
                        zzK(obj, i2, i);
                    }
                    break;
                case 60:
                    zzI(obj, obj2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzT(obj2, i2, i)) {
                        zzeq.zzs(obj, j, zzeq.zzf(obj2, j));
                        zzK(obj, i2, i);
                    }
                    break;
                case 68:
                    zzI(obj, obj2, i);
                    break;
            }
        }
        zzdr.zzB(this.zzm, obj, obj2);
        if (this.zzh) {
            this.zzn.zza(obj2);
            throw null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x02e6, code lost:
    
        if (r0 != r15) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x030a, code lost:
    
        if (r0 != r15) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x02a3, code lost:
    
        if (r0 != r5) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x02a5, code lost:
    
        r15 = r28;
        r14 = r29;
        r12 = r30;
        r13 = r32;
        r11 = r33;
        r1 = r19;
        r2 = r22;
        r6 = r25;
        r7 = r26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x02b9, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:27:0x008e. Please report as an issue. */
    @Override // com.google.android.gms.internal.play_billing.zzdp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zzh(java.lang.Object r29, byte[] r30, int r31, int r32, com.google.android.gms.internal.play_billing.zzan r33) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 906
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzdi.zzh(java.lang.Object, byte[], int, int, com.google.android.gms.internal.play_billing.zzan):void");
    }

    @Override // com.google.android.gms.internal.play_billing.zzdp
    public final void zzi(Object obj, zzey zzeyVar) throws IOException {
        int i;
        zzew zzewVar = zzew.zza;
        int i2 = 1048575;
        if (this.zzo - 1 != 0) {
            if (this.zzh) {
                this.zzn.zza(obj);
                throw null;
            }
            int length = this.zzc.length;
            for (int i3 = 0; i3 < length; i3 += 3) {
                int iZzy = zzy(i3);
                int i4 = this.zzc[i3];
                switch (zzx(iZzy)) {
                    case 0:
                        if (zzP(obj, i3)) {
                            zzeyVar.zzf(i4, zzeq.zza(obj, iZzy & 1048575));
                        }
                        break;
                    case 1:
                        if (zzP(obj, i3)) {
                            zzeyVar.zzo(i4, zzeq.zzb(obj, iZzy & 1048575));
                        }
                        break;
                    case 2:
                        if (zzP(obj, i3)) {
                            zzeyVar.zzt(i4, zzeq.zzd(obj, iZzy & 1048575));
                        }
                        break;
                    case 3:
                        if (zzP(obj, i3)) {
                            zzeyVar.zzJ(i4, zzeq.zzd(obj, iZzy & 1048575));
                        }
                        break;
                    case 4:
                        if (zzP(obj, i3)) {
                            zzeyVar.zzr(i4, zzeq.zzc(obj, iZzy & 1048575));
                        }
                        break;
                    case 5:
                        if (zzP(obj, i3)) {
                            zzeyVar.zzm(i4, zzeq.zzd(obj, iZzy & 1048575));
                        }
                        break;
                    case 6:
                        if (zzP(obj, i3)) {
                            zzeyVar.zzk(i4, zzeq.zzc(obj, iZzy & 1048575));
                        }
                        break;
                    case 7:
                        if (zzP(obj, i3)) {
                            zzeyVar.zzb(i4, zzeq.zzw(obj, iZzy & 1048575));
                        }
                        break;
                    case 8:
                        if (zzP(obj, i3)) {
                            zzV(i4, zzeq.zzf(obj, iZzy & 1048575), zzeyVar);
                        }
                        break;
                    case 9:
                        if (zzP(obj, i3)) {
                            zzeyVar.zzv(i4, zzeq.zzf(obj, iZzy & 1048575), zzB(i3));
                        }
                        break;
                    case 10:
                        if (zzP(obj, i3)) {
                            zzeyVar.zzd(i4, (zzba) zzeq.zzf(obj, iZzy & 1048575));
                        }
                        break;
                    case 11:
                        if (zzP(obj, i3)) {
                            zzeyVar.zzH(i4, zzeq.zzc(obj, iZzy & 1048575));
                        }
                        break;
                    case 12:
                        if (zzP(obj, i3)) {
                            zzeyVar.zzi(i4, zzeq.zzc(obj, iZzy & 1048575));
                        }
                        break;
                    case 13:
                        if (zzP(obj, i3)) {
                            zzeyVar.zzw(i4, zzeq.zzc(obj, iZzy & 1048575));
                        }
                        break;
                    case 14:
                        if (zzP(obj, i3)) {
                            zzeyVar.zzy(i4, zzeq.zzd(obj, iZzy & 1048575));
                        }
                        break;
                    case 15:
                        if (zzP(obj, i3)) {
                            zzeyVar.zzA(i4, zzeq.zzc(obj, iZzy & 1048575));
                        }
                        break;
                    case 16:
                        if (zzP(obj, i3)) {
                            zzeyVar.zzC(i4, zzeq.zzd(obj, iZzy & 1048575));
                        }
                        break;
                    case 17:
                        if (zzP(obj, i3)) {
                            zzeyVar.zzq(i4, zzeq.zzf(obj, iZzy & 1048575), zzB(i3));
                        }
                        break;
                    case 18:
                        zzdr.zzF(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, false);
                        break;
                    case 19:
                        zzdr.zzJ(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, false);
                        break;
                    case 20:
                        zzdr.zzM(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, false);
                        break;
                    case 21:
                        zzdr.zzU(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, false);
                        break;
                    case 22:
                        zzdr.zzL(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, false);
                        break;
                    case 23:
                        zzdr.zzI(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, false);
                        break;
                    case 24:
                        zzdr.zzH(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, false);
                        break;
                    case 25:
                        zzdr.zzD(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, false);
                        break;
                    case 26:
                        zzdr.zzS(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar);
                        break;
                    case 27:
                        zzdr.zzN(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, zzB(i3));
                        break;
                    case 28:
                        zzdr.zzE(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar);
                        break;
                    case 29:
                        zzdr.zzT(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, false);
                        break;
                    case 30:
                        zzdr.zzG(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, false);
                        break;
                    case 31:
                        zzdr.zzO(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, false);
                        break;
                    case 32:
                        zzdr.zzP(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, false);
                        break;
                    case 33:
                        zzdr.zzQ(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, false);
                        break;
                    case 34:
                        zzdr.zzR(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, false);
                        break;
                    case 35:
                        zzdr.zzF(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, true);
                        break;
                    case 36:
                        zzdr.zzJ(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, true);
                        break;
                    case 37:
                        zzdr.zzM(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, true);
                        break;
                    case 38:
                        zzdr.zzU(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, true);
                        break;
                    case 39:
                        zzdr.zzL(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, true);
                        break;
                    case 40:
                        zzdr.zzI(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, true);
                        break;
                    case 41:
                        zzdr.zzH(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, true);
                        break;
                    case 42:
                        zzdr.zzD(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, true);
                        break;
                    case 43:
                        zzdr.zzT(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, true);
                        break;
                    case 44:
                        zzdr.zzG(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, true);
                        break;
                    case 45:
                        zzdr.zzO(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, true);
                        break;
                    case 46:
                        zzdr.zzP(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, true);
                        break;
                    case 47:
                        zzdr.zzQ(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, true);
                        break;
                    case 48:
                        zzdr.zzR(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, true);
                        break;
                    case 49:
                        zzdr.zzK(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, zzB(i3));
                        break;
                    case 50:
                        zzN(zzeyVar, i4, zzeq.zzf(obj, iZzy & 1048575), i3);
                        break;
                    case 51:
                        if (zzT(obj, i4, i3)) {
                            zzeyVar.zzf(i4, zzm(obj, iZzy & 1048575));
                        }
                        break;
                    case 52:
                        if (zzT(obj, i4, i3)) {
                            zzeyVar.zzo(i4, zzn(obj, iZzy & 1048575));
                        }
                        break;
                    case 53:
                        if (zzT(obj, i4, i3)) {
                            zzeyVar.zzt(i4, zzz(obj, iZzy & 1048575));
                        }
                        break;
                    case 54:
                        if (zzT(obj, i4, i3)) {
                            zzeyVar.zzJ(i4, zzz(obj, iZzy & 1048575));
                        }
                        break;
                    case 55:
                        if (zzT(obj, i4, i3)) {
                            zzeyVar.zzr(i4, zzp(obj, iZzy & 1048575));
                        }
                        break;
                    case 56:
                        if (zzT(obj, i4, i3)) {
                            zzeyVar.zzm(i4, zzz(obj, iZzy & 1048575));
                        }
                        break;
                    case 57:
                        if (zzT(obj, i4, i3)) {
                            zzeyVar.zzk(i4, zzp(obj, iZzy & 1048575));
                        }
                        break;
                    case 58:
                        if (zzT(obj, i4, i3)) {
                            zzeyVar.zzb(i4, zzU(obj, iZzy & 1048575));
                        }
                        break;
                    case 59:
                        if (zzT(obj, i4, i3)) {
                            zzV(i4, zzeq.zzf(obj, iZzy & 1048575), zzeyVar);
                        }
                        break;
                    case 60:
                        if (zzT(obj, i4, i3)) {
                            zzeyVar.zzv(i4, zzeq.zzf(obj, iZzy & 1048575), zzB(i3));
                        }
                        break;
                    case 61:
                        if (zzT(obj, i4, i3)) {
                            zzeyVar.zzd(i4, (zzba) zzeq.zzf(obj, iZzy & 1048575));
                        }
                        break;
                    case 62:
                        if (zzT(obj, i4, i3)) {
                            zzeyVar.zzH(i4, zzp(obj, iZzy & 1048575));
                        }
                        break;
                    case 63:
                        if (zzT(obj, i4, i3)) {
                            zzeyVar.zzi(i4, zzp(obj, iZzy & 1048575));
                        }
                        break;
                    case 64:
                        if (zzT(obj, i4, i3)) {
                            zzeyVar.zzw(i4, zzp(obj, iZzy & 1048575));
                        }
                        break;
                    case 65:
                        if (zzT(obj, i4, i3)) {
                            zzeyVar.zzy(i4, zzz(obj, iZzy & 1048575));
                        }
                        break;
                    case 66:
                        if (zzT(obj, i4, i3)) {
                            zzeyVar.zzA(i4, zzp(obj, iZzy & 1048575));
                        }
                        break;
                    case 67:
                        if (zzT(obj, i4, i3)) {
                            zzeyVar.zzC(i4, zzz(obj, iZzy & 1048575));
                        }
                        break;
                    case 68:
                        if (zzT(obj, i4, i3)) {
                            zzeyVar.zzq(i4, zzeq.zzf(obj, iZzy & 1048575), zzB(i3));
                        }
                        break;
                }
            }
            zzeg zzegVar = this.zzm;
            zzegVar.zzi(zzegVar.zzd(obj), zzeyVar);
            return;
        }
        if (this.zzh) {
            this.zzn.zza(obj);
            throw null;
        }
        int length2 = this.zzc.length;
        Unsafe unsafe = zzb;
        int i5 = 0;
        int i6 = 1048575;
        int i7 = 0;
        while (i5 < length2) {
            int iZzy2 = zzy(i5);
            int[] iArr = this.zzc;
            int i8 = iArr[i5];
            int iZzx = zzx(iZzy2);
            if (iZzx <= 17) {
                int i9 = iArr[i5 + 2];
                int i10 = i9 & i2;
                if (i10 != i6) {
                    i7 = unsafe.getInt(obj, i10);
                    i6 = i10;
                }
                i = 1 << (i9 >>> 20);
            } else {
                i = 0;
            }
            long j = iZzy2 & i2;
            switch (iZzx) {
                case 0:
                    if ((i7 & i) != 0) {
                        zzeyVar.zzf(i8, zzeq.zza(obj, j));
                        continue;
                    }
                    i5 += 3;
                    i2 = 1048575;
                    break;
                case 1:
                    if ((i7 & i) != 0) {
                        zzeyVar.zzo(i8, zzeq.zzb(obj, j));
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i2 = 1048575;
                    break;
                case 2:
                    if ((i7 & i) != 0) {
                        zzeyVar.zzt(i8, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i2 = 1048575;
                    break;
                case 3:
                    if ((i7 & i) != 0) {
                        zzeyVar.zzJ(i8, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i2 = 1048575;
                    break;
                case 4:
                    if ((i7 & i) != 0) {
                        zzeyVar.zzr(i8, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i2 = 1048575;
                    break;
                case 5:
                    if ((i7 & i) != 0) {
                        zzeyVar.zzm(i8, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i2 = 1048575;
                    break;
                case 6:
                    if ((i7 & i) != 0) {
                        zzeyVar.zzk(i8, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i2 = 1048575;
                    break;
                case 7:
                    if ((i7 & i) != 0) {
                        zzeyVar.zzb(i8, zzeq.zzw(obj, j));
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i2 = 1048575;
                    break;
                case 8:
                    if ((i7 & i) != 0) {
                        zzV(i8, unsafe.getObject(obj, j), zzeyVar);
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i2 = 1048575;
                    break;
                case 9:
                    if ((i7 & i) != 0) {
                        zzeyVar.zzv(i8, unsafe.getObject(obj, j), zzB(i5));
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i2 = 1048575;
                    break;
                case 10:
                    if ((i7 & i) != 0) {
                        zzeyVar.zzd(i8, (zzba) unsafe.getObject(obj, j));
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i2 = 1048575;
                    break;
                case 11:
                    if ((i7 & i) != 0) {
                        zzeyVar.zzH(i8, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i2 = 1048575;
                    break;
                case 12:
                    if ((i7 & i) != 0) {
                        zzeyVar.zzi(i8, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i2 = 1048575;
                    break;
                case 13:
                    if ((i7 & i) != 0) {
                        zzeyVar.zzw(i8, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i2 = 1048575;
                    break;
                case 14:
                    if ((i7 & i) != 0) {
                        zzeyVar.zzy(i8, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i2 = 1048575;
                    break;
                case 15:
                    if ((i7 & i) != 0) {
                        zzeyVar.zzA(i8, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i2 = 1048575;
                    break;
                case 16:
                    if ((i7 & i) != 0) {
                        zzeyVar.zzC(i8, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i2 = 1048575;
                    break;
                case 17:
                    if ((i7 & i) != 0) {
                        zzeyVar.zzq(i8, unsafe.getObject(obj, j), zzB(i5));
                    } else {
                        continue;
                    }
                    i5 += 3;
                    i2 = 1048575;
                    break;
                case 18:
                    zzdr.zzF(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, false);
                    continue;
                    i5 += 3;
                    i2 = 1048575;
                    break;
                case 19:
                    zzdr.zzJ(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, false);
                    continue;
                    i5 += 3;
                    i2 = 1048575;
                    break;
                case 20:
                    zzdr.zzM(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, false);
                    continue;
                    i5 += 3;
                    i2 = 1048575;
                    break;
                case 21:
                    zzdr.zzU(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, false);
                    continue;
                    i5 += 3;
                    i2 = 1048575;
                    break;
                case 22:
                    zzdr.zzL(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, false);
                    continue;
                    i5 += 3;
                    i2 = 1048575;
                    break;
                case 23:
                    zzdr.zzI(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, false);
                    continue;
                    i5 += 3;
                    i2 = 1048575;
                    break;
                case 24:
                    zzdr.zzH(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, false);
                    continue;
                    i5 += 3;
                    i2 = 1048575;
                    break;
                case 25:
                    zzdr.zzD(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, false);
                    continue;
                    i5 += 3;
                    i2 = 1048575;
                    break;
                case 26:
                    zzdr.zzS(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar);
                    break;
                case 27:
                    zzdr.zzN(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, zzB(i5));
                    break;
                case 28:
                    zzdr.zzE(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar);
                    break;
                case 29:
                    zzdr.zzT(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, false);
                    break;
                case 30:
                    zzdr.zzG(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, false);
                    break;
                case 31:
                    zzdr.zzO(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, false);
                    break;
                case 32:
                    zzdr.zzP(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, false);
                    break;
                case 33:
                    zzdr.zzQ(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, false);
                    break;
                case 34:
                    zzdr.zzR(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, false);
                    break;
                case 35:
                    zzdr.zzF(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, true);
                    break;
                case 36:
                    zzdr.zzJ(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, true);
                    break;
                case 37:
                    zzdr.zzM(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, true);
                    break;
                case 38:
                    zzdr.zzU(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, true);
                    break;
                case 39:
                    zzdr.zzL(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, true);
                    break;
                case 40:
                    zzdr.zzI(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, true);
                    break;
                case 41:
                    zzdr.zzH(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, true);
                    break;
                case 42:
                    zzdr.zzD(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, true);
                    break;
                case 43:
                    zzdr.zzT(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, true);
                    break;
                case 44:
                    zzdr.zzG(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, true);
                    break;
                case 45:
                    zzdr.zzO(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, true);
                    break;
                case 46:
                    zzdr.zzP(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, true);
                    break;
                case 47:
                    zzdr.zzQ(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, true);
                    break;
                case 48:
                    zzdr.zzR(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, true);
                    break;
                case 49:
                    zzdr.zzK(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, zzB(i5));
                    break;
                case 50:
                    zzN(zzeyVar, i8, unsafe.getObject(obj, j), i5);
                    break;
                case 51:
                    if (zzT(obj, i8, i5)) {
                        zzeyVar.zzf(i8, zzm(obj, j));
                    }
                    break;
                case 52:
                    if (zzT(obj, i8, i5)) {
                        zzeyVar.zzo(i8, zzn(obj, j));
                    }
                    break;
                case 53:
                    if (zzT(obj, i8, i5)) {
                        zzeyVar.zzt(i8, zzz(obj, j));
                    }
                    break;
                case 54:
                    if (zzT(obj, i8, i5)) {
                        zzeyVar.zzJ(i8, zzz(obj, j));
                    }
                    break;
                case 55:
                    if (zzT(obj, i8, i5)) {
                        zzeyVar.zzr(i8, zzp(obj, j));
                    }
                    break;
                case 56:
                    if (zzT(obj, i8, i5)) {
                        zzeyVar.zzm(i8, zzz(obj, j));
                    }
                    break;
                case 57:
                    if (zzT(obj, i8, i5)) {
                        zzeyVar.zzk(i8, zzp(obj, j));
                    }
                    break;
                case 58:
                    if (zzT(obj, i8, i5)) {
                        zzeyVar.zzb(i8, zzU(obj, j));
                    }
                    break;
                case 59:
                    if (zzT(obj, i8, i5)) {
                        zzV(i8, unsafe.getObject(obj, j), zzeyVar);
                    }
                    break;
                case 60:
                    if (zzT(obj, i8, i5)) {
                        zzeyVar.zzv(i8, unsafe.getObject(obj, j), zzB(i5));
                    }
                    break;
                case 61:
                    if (zzT(obj, i8, i5)) {
                        zzeyVar.zzd(i8, (zzba) unsafe.getObject(obj, j));
                    }
                    break;
                case 62:
                    if (zzT(obj, i8, i5)) {
                        zzeyVar.zzH(i8, zzp(obj, j));
                    }
                    break;
                case 63:
                    if (zzT(obj, i8, i5)) {
                        zzeyVar.zzi(i8, zzp(obj, j));
                    }
                    break;
                case 64:
                    if (zzT(obj, i8, i5)) {
                        zzeyVar.zzw(i8, zzp(obj, j));
                    }
                    break;
                case 65:
                    if (zzT(obj, i8, i5)) {
                        zzeyVar.zzy(i8, zzz(obj, j));
                    }
                    break;
                case 66:
                    if (zzT(obj, i8, i5)) {
                        zzeyVar.zzA(i8, zzp(obj, j));
                    }
                    break;
                case 67:
                    if (zzT(obj, i8, i5)) {
                        zzeyVar.zzC(i8, zzz(obj, j));
                    }
                    break;
                case 68:
                    if (zzT(obj, i8, i5)) {
                        zzeyVar.zzq(i8, unsafe.getObject(obj, j), zzB(i5));
                    }
                    break;
            }
            i5 += 3;
            i2 = 1048575;
        }
        zzeg zzegVar2 = this.zzm;
        zzegVar2.zzi(zzegVar2.zzd(obj), zzeyVar);
    }

    @Override // com.google.android.gms.internal.play_billing.zzdp
    public final boolean zzj(Object obj, Object obj2) {
        boolean zZzV;
        int length = this.zzc.length;
        for (int i = 0; i < length; i += 3) {
            int iZzy = zzy(i);
            long j = iZzy & 1048575;
            switch (zzx(iZzy)) {
                case 0:
                    if (!zzO(obj, obj2, i) || Double.doubleToLongBits(zzeq.zza(obj, j)) != Double.doubleToLongBits(zzeq.zza(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 1:
                    if (!zzO(obj, obj2, i) || Float.floatToIntBits(zzeq.zzb(obj, j)) != Float.floatToIntBits(zzeq.zzb(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 2:
                    if (!zzO(obj, obj2, i) || zzeq.zzd(obj, j) != zzeq.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 3:
                    if (!zzO(obj, obj2, i) || zzeq.zzd(obj, j) != zzeq.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 4:
                    if (!zzO(obj, obj2, i) || zzeq.zzc(obj, j) != zzeq.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 5:
                    if (!zzO(obj, obj2, i) || zzeq.zzd(obj, j) != zzeq.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 6:
                    if (!zzO(obj, obj2, i) || zzeq.zzc(obj, j) != zzeq.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 7:
                    if (!zzO(obj, obj2, i) || zzeq.zzw(obj, j) != zzeq.zzw(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 8:
                    if (!zzO(obj, obj2, i) || !zzdr.zzV(zzeq.zzf(obj, j), zzeq.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 9:
                    if (!zzO(obj, obj2, i) || !zzdr.zzV(zzeq.zzf(obj, j), zzeq.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 10:
                    if (!zzO(obj, obj2, i) || !zzdr.zzV(zzeq.zzf(obj, j), zzeq.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 11:
                    if (!zzO(obj, obj2, i) || zzeq.zzc(obj, j) != zzeq.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 12:
                    if (!zzO(obj, obj2, i) || zzeq.zzc(obj, j) != zzeq.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 13:
                    if (!zzO(obj, obj2, i) || zzeq.zzc(obj, j) != zzeq.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 14:
                    if (!zzO(obj, obj2, i) || zzeq.zzd(obj, j) != zzeq.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 15:
                    if (!zzO(obj, obj2, i) || zzeq.zzc(obj, j) != zzeq.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 16:
                    if (!zzO(obj, obj2, i) || zzeq.zzd(obj, j) != zzeq.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 17:
                    if (!zzO(obj, obj2, i) || !zzdr.zzV(zzeq.zzf(obj, j), zzeq.zzf(obj2, j))) {
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
                    zZzV = zzdr.zzV(zzeq.zzf(obj, j), zzeq.zzf(obj2, j));
                    break;
                case 50:
                    zZzV = zzdr.zzV(zzeq.zzf(obj, j), zzeq.zzf(obj2, j));
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
                    long jZzv = zzv(i) & 1048575;
                    if (zzeq.zzc(obj, jZzv) != zzeq.zzc(obj2, jZzv) || !zzdr.zzV(zzeq.zzf(obj, j), zzeq.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                default:
                    break;
            }
            if (!zZzV) {
                return false;
            }
        }
        if (!this.zzm.zzd(obj).equals(this.zzm.zzd(obj2))) {
            return false;
        }
        if (!this.zzh) {
            return true;
        }
        this.zzn.zza(obj);
        this.zzn.zza(obj2);
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00a0  */
    @Override // com.google.android.gms.internal.play_billing.zzdp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean zzk(java.lang.Object r19) {
        /*
            Method dump skipped, instruction units count: 246
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzdi.zzk(java.lang.Object):boolean");
    }
}
