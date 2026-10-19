package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzxw extends zzyb implements zzma {
    public static final /* synthetic */ int zzb = 0;
    private static final zzfyd zzc = zzfyd.zzb(new Comparator() { // from class: com.google.android.gms.internal.ads.zzwv
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            Integer num = (Integer) obj;
            Integer num2 = (Integer) obj2;
            int i = zzxw.zzb;
            if (num.intValue() == -1) {
                return num2.intValue() == -1 ? 0 : -1;
            }
            if (num2.intValue() == -1) {
                return 1;
            }
            return num.intValue() - num2.intValue();
        }
    });
    private static final zzfyd zzd = zzfyd.zzb(new Comparator() { // from class: com.google.android.gms.internal.ads.zzww
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int i = zzxw.zzb;
            return 0;
        }
    });

    @Nullable
    public final Context zza;
    private final Object zze;
    private final boolean zzf;

    @GuardedBy("lock")
    private zzxk zzg;

    @Nullable
    @GuardedBy("lock")
    private zzxp zzh;

    @GuardedBy("lock")
    private zzk zzi;
    private final zzwr zzj;

    public zzxw(Context context) {
        zzwr zzwrVar = new zzwr();
        zzxk zzxkVarZzd = zzxk.zzd(context);
        this.zze = new Object();
        this.zza = context != null ? context.getApplicationContext() : null;
        this.zzj = zzwrVar;
        this.zzg = zzxkVarZzd;
        this.zzi = zzk.zza;
        boolean z = false;
        if (context != null && zzfs.zzI(context)) {
            z = true;
        }
        this.zzf = z;
        if (!z && context != null && zzfs.zza >= 32) {
            this.zzh = zzxp.zza(context);
        }
        if (this.zzg.zzR && context == null) {
            zzez.zzf("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
    }

    protected static int zza(zzam zzamVar, @Nullable String str, boolean z) {
        if (!TextUtils.isEmpty(str) && str.equals(zzamVar.zzd)) {
            return 4;
        }
        String strZzg = zzg(str);
        String strZzg2 = zzg(zzamVar.zzd);
        if (strZzg2 == null || strZzg == null) {
            return (z && strZzg2 == null) ? 1 : 0;
        }
        if (strZzg2.startsWith(strZzg) || strZzg.startsWith(strZzg2)) {
            return 3;
        }
        int i = zzfs.zza;
        return strZzg2.split("-", 2)[0].equals(strZzg.split("-", 2)[0]) ? 2 : 0;
    }

    @Nullable
    protected static String zzg(@Nullable String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, C.LANGUAGE_UNDETERMINED)) {
            return null;
        }
        return str;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:29:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ boolean zzl(com.google.android.gms.internal.ads.zzxw r8, com.google.android.gms.internal.ads.zzam r9) {
        /*
            java.lang.Object r0 = r8.zze
            monitor-enter(r0)
            com.google.android.gms.internal.ads.zzxk r1 = r8.zzg     // Catch: java.lang.Throwable -> L8e
            boolean r1 = r1.zzR     // Catch: java.lang.Throwable -> L8e
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L8b
            boolean r1 = r8.zzf     // Catch: java.lang.Throwable -> L8e
            if (r1 != 0) goto L8b
            int r1 = r9.zzz     // Catch: java.lang.Throwable -> L8e
            r4 = 2
            if (r1 <= r4) goto L8b
            java.lang.String r1 = r9.zzm     // Catch: java.lang.Throwable -> L8e
            r5 = 32
            if (r1 != 0) goto L1b
            goto L65
        L1b:
            int r6 = r1.hashCode()     // Catch: java.lang.Throwable -> L8e
            r7 = 3
            switch(r6) {
                case -2123537834: goto L42;
                case 187078296: goto L38;
                case 187078297: goto L2e;
                case 1504578661: goto L24;
                default: goto L23;
            }
        L23:
            goto L4c
        L24:
            java.lang.String r6 = "audio/eac3"
            boolean r1 = r1.equals(r6)
            if (r1 == 0) goto L4c
            r1 = 1
            goto L4d
        L2e:
            java.lang.String r6 = "audio/ac4"
            boolean r1 = r1.equals(r6)
            if (r1 == 0) goto L4c
            r1 = 3
            goto L4d
        L38:
            java.lang.String r6 = "audio/ac3"
            boolean r1 = r1.equals(r6)
            if (r1 == 0) goto L4c
            r1 = 0
            goto L4d
        L42:
            java.lang.String r6 = "audio/eac3-joc"
            boolean r1 = r1.equals(r6)
            if (r1 == 0) goto L4c
            r1 = 2
            goto L4d
        L4c:
            r1 = -1
        L4d:
            if (r1 == 0) goto L56
            if (r1 == r3) goto L56
            if (r1 == r4) goto L56
            if (r1 == r7) goto L56
            goto L65
        L56:
            int r1 = com.google.android.gms.internal.ads.zzfs.zza     // Catch: java.lang.Throwable -> L8e
            if (r1 < r5) goto L8b
            com.google.android.gms.internal.ads.zzxp r1 = r8.zzh     // Catch: java.lang.Throwable -> L8e
            if (r1 == 0) goto L8b
            boolean r1 = r1.zzg()     // Catch: java.lang.Throwable -> L8e
            if (r1 != 0) goto L65
            goto L8b
        L65:
            int r1 = com.google.android.gms.internal.ads.zzfs.zza     // Catch: java.lang.Throwable -> L8e
            if (r1 < r5) goto L8c
            com.google.android.gms.internal.ads.zzxp r1 = r8.zzh     // Catch: java.lang.Throwable -> L8e
            if (r1 == 0) goto L8c
            boolean r4 = r1.zzg()     // Catch: java.lang.Throwable -> L8e
            if (r4 == 0) goto L8c
            boolean r1 = r1.zze()     // Catch: java.lang.Throwable -> L8e
            if (r1 == 0) goto L8c
            com.google.android.gms.internal.ads.zzxp r1 = r8.zzh     // Catch: java.lang.Throwable -> L8e
            boolean r1 = r1.zzf()     // Catch: java.lang.Throwable -> L8e
            if (r1 == 0) goto L8c
            com.google.android.gms.internal.ads.zzxp r1 = r8.zzh     // Catch: java.lang.Throwable -> L8e
            com.google.android.gms.internal.ads.zzk r8 = r8.zzi     // Catch: java.lang.Throwable -> L8e
            boolean r8 = r1.zzd(r8, r9)     // Catch: java.lang.Throwable -> L8e
            if (r8 == 0) goto L8c
        L8b:
            r2 = 1
        L8c:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L8e
            return r2
        L8e:
            r8 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L8e
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzxw.zzl(com.google.android.gms.internal.ads.zzxw, com.google.android.gms.internal.ads.zzam):boolean");
    }

    protected static boolean zzn(int i, boolean z) {
        int i2 = i & 7;
        return i2 == 4 || (z && i2 == 3);
    }

    private static void zzt(zzwl zzwlVar, zzdj zzdjVar, Map map) {
        for (int i = 0; i < zzwlVar.zzc; i++) {
            if (((zzde) zzdjVar.zzC.get(zzwlVar.zzb(i))) != null) {
                throw null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzu() {
        boolean z;
        zzxp zzxpVar;
        synchronized (this.zze) {
            z = false;
            if (this.zzg.zzR && !this.zzf && zzfs.zza >= 32 && (zzxpVar = this.zzh) != null && zzxpVar.zzg()) {
                z = true;
            }
        }
        if (z) {
            zzs();
        }
    }

    @Nullable
    private static final Pair zzv(int i, zzya zzyaVar, int[][][] iArr, zzxr zzxrVar, Comparator comparator) {
        List arrayList;
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < 2; i2++) {
            if (i == zzyaVar.zzc(i2)) {
                zzwl zzwlVarZzd = zzyaVar.zzd(i2);
                for (int i3 = 0; i3 < zzwlVarZzd.zzc; i3++) {
                    zzdc zzdcVarZzb = zzwlVarZzd.zzb(i3);
                    List listZza = zzxrVar.zza(i2, zzdcVarZzb, iArr[i2][i3]);
                    int i4 = zzdcVarZzb.zzb;
                    int i5 = 1;
                    boolean[] zArr = new boolean[1];
                    int i6 = 0;
                    while (i6 <= 0) {
                        int i7 = i6 + 1;
                        zzxs zzxsVar = (zzxs) listZza.get(i6);
                        int iZzb = zzxsVar.zzb();
                        if (!zArr[i6] && iZzb != 0) {
                            if (iZzb == i5) {
                                arrayList = zzfwu.zzm(zzxsVar);
                            } else {
                                arrayList = new ArrayList();
                                arrayList.add(zzxsVar);
                                for (int i8 = i7; i8 <= 0; i8++) {
                                    zzxs zzxsVar2 = (zzxs) listZza.get(i8);
                                    if (zzxsVar2.zzb() == 2 && zzxsVar.zzc(zzxsVar2)) {
                                        arrayList.add(zzxsVar2);
                                        zArr[i8] = true;
                                    }
                                }
                            }
                            arrayList2.add(arrayList);
                        }
                        i6 = i7;
                        i5 = 1;
                    }
                }
            }
        }
        if (arrayList2.isEmpty()) {
            return null;
        }
        List list = (List) Collections.max(arrayList2, comparator);
        int[] iArr2 = new int[list.size()];
        for (int i9 = 0; i9 < list.size(); i9++) {
            iArr2[i9] = ((zzxs) list.get(i9)).zzc;
        }
        zzxs zzxsVar3 = (zzxs) list.get(0);
        return Pair.create(new zzxx(zzxsVar3.zzb, iArr2, 0), Integer.valueOf(zzxsVar3.zza));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzyb
    protected final Pair zzb(zzya zzyaVar, int[][][] iArr, final int[] iArr2, zzuk zzukVar, zzda zzdaVar) throws zzit {
        final zzxk zzxkVar;
        int i;
        final boolean z;
        final String str;
        int i2;
        int[] iArr3;
        int length;
        zzxy zzxyVarZza;
        zzxp zzxpVar;
        synchronized (this.zze) {
            zzxkVar = this.zzg;
            if (zzxkVar.zzR && zzfs.zza >= 32 && (zzxpVar = this.zzh) != null) {
                Looper looperMyLooper = Looper.myLooper();
                zzef.zzb(looperMyLooper);
                zzxpVar.zzb(this, looperMyLooper);
            }
        }
        int i3 = 2;
        zzxx[] zzxxVarArr = new zzxx[2];
        Pair pairZzv = zzv(2, zzyaVar, iArr, new zzxr() { // from class: com.google.android.gms.internal.ads.zzxa
            /* JADX WARN: Removed duplicated region for block: B:22:0x0042  */
            /* JADX WARN: Removed duplicated region for block: B:25:0x004a  */
            /* JADX WARN: Removed duplicated region for block: B:26:0x0055  */
            @Override // com.google.android.gms.internal.ads.zzxr
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final java.util.List zza(int r19, com.google.android.gms.internal.ads.zzdc r20, int[] r21) {
                /*
                    Method dump skipped, instruction units count: 201
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzxa.zza(int, com.google.android.gms.internal.ads.zzdc, int[]):java.util.List");
            }
        }, new Comparator() { // from class: com.google.android.gms.internal.ads.zzxb
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                List list = (List) obj;
                List list2 = (List) obj2;
                zzfwj zzfwjVarZzj = zzfwj.zzj();
                zzxt zzxtVar = new Comparator() { // from class: com.google.android.gms.internal.ads.zzxt
                    @Override // java.util.Comparator
                    public final int compare(Object obj3, Object obj4) {
                        return zzxv.zzd((zzxv) obj3, (zzxv) obj4);
                    }
                };
                zzfwj zzfwjVarZzb = zzfwjVarZzj.zzc((zzxv) Collections.max(list, zzxtVar), (zzxv) Collections.max(list2, zzxtVar), zzxtVar).zzb(list.size(), list2.size());
                zzxu zzxuVar = new Comparator() { // from class: com.google.android.gms.internal.ads.zzxu
                    @Override // java.util.Comparator
                    public final int compare(Object obj3, Object obj4) {
                        return zzxv.zza((zzxv) obj3, (zzxv) obj4);
                    }
                };
                return zzfwjVarZzb.zzc((zzxv) Collections.max(list, zzxuVar), (zzxv) Collections.max(list2, zzxuVar), zzxuVar).zza();
            }
        });
        if (pairZzv != null) {
            zzxxVarArr[((Integer) pairZzv.second).intValue()] = (zzxx) pairZzv.first;
        }
        int i4 = 0;
        while (true) {
            i = 1;
            if (i4 >= 2) {
                z = false;
                break;
            }
            if (zzyaVar.zzc(i4) == 2 && zzyaVar.zzd(i4).zzc > 0) {
                z = true;
                break;
            }
            i4++;
        }
        Pair pairZzv2 = zzv(1, zzyaVar, iArr, new zzxr() { // from class: com.google.android.gms.internal.ads.zzwy
            @Override // com.google.android.gms.internal.ads.zzxr
            public final List zza(int i5, zzdc zzdcVar, int[] iArr4) {
                final zzxw zzxwVar = this.zza;
                zzftz zzftzVar = new zzftz() { // from class: com.google.android.gms.internal.ads.zzwx
                    @Override // com.google.android.gms.internal.ads.zzftz
                    public final boolean zza(Object obj) {
                        return zzxw.zzl(zzxwVar, (zzam) obj);
                    }
                };
                int i6 = iArr2[i5];
                zzfwr zzfwrVar = new zzfwr();
                int i7 = 0;
                while (true) {
                    int i8 = zzdcVar.zzb;
                    if (i7 > 0) {
                        return zzfwrVar.zzi();
                    }
                    int i9 = i7;
                    zzfwrVar.zzf(new zzxe(i5, zzdcVar, i9, zzxkVar, iArr4[i7], z, zzftzVar, i6));
                    i7++;
                }
            }
        }, new Comparator() { // from class: com.google.android.gms.internal.ads.zzwz
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ((zzxe) Collections.max((List) obj)).zza((zzxe) Collections.max((List) obj2));
            }
        });
        if (pairZzv2 != null) {
            zzxxVarArr[((Integer) pairZzv2.second).intValue()] = (zzxx) pairZzv2.first;
        }
        if (pairZzv2 == null) {
            str = null;
        } else {
            Object obj = pairZzv2.first;
            str = ((zzxx) obj).zza.zzb(((zzxx) obj).zzb[0]).zzd;
        }
        int i5 = 3;
        Pair pairZzv3 = zzv(3, zzyaVar, iArr, new zzxr() { // from class: com.google.android.gms.internal.ads.zzxc
            @Override // com.google.android.gms.internal.ads.zzxr
            public final List zza(int i6, zzdc zzdcVar, int[] iArr4) {
                int i7 = zzxw.zzb;
                zzfwr zzfwrVar = new zzfwr();
                int i8 = 0;
                while (true) {
                    int i9 = zzdcVar.zzb;
                    if (i8 > 0) {
                        return zzfwrVar.zzi();
                    }
                    int i10 = i8;
                    zzfwrVar.zzf(new zzxq(i6, zzdcVar, i10, zzxkVar, iArr4[i8], str));
                    i8++;
                }
            }
        }, new Comparator() { // from class: com.google.android.gms.internal.ads.zzxd
            @Override // java.util.Comparator
            public final int compare(Object obj2, Object obj3) {
                return ((zzxq) ((List) obj2).get(0)).zza((zzxq) ((List) obj3).get(0));
            }
        });
        if (pairZzv3 != null) {
            zzxxVarArr[((Integer) pairZzv3.second).intValue()] = (zzxx) pairZzv3.first;
        }
        int i6 = 0;
        while (i6 < i3) {
            int iZzc = zzyaVar.zzc(i6);
            if (iZzc != i3 && iZzc != i && iZzc != i5) {
                zzwl zzwlVarZzd = zzyaVar.zzd(i6);
                int[][] iArr4 = iArr[i6];
                zzdc zzdcVar = null;
                zzxf zzxfVar = null;
                for (int i7 = 0; i7 < zzwlVarZzd.zzc; i7++) {
                    zzdc zzdcVarZzb = zzwlVarZzd.zzb(i7);
                    int[] iArr5 = iArr4[i7];
                    char c = 0;
                    while (true) {
                        int i8 = zzdcVarZzb.zzb;
                        if (c <= 0) {
                            if (zzn(iArr5[0], zzxkVar.zzS)) {
                                zzxf zzxfVar2 = new zzxf(zzdcVarZzb.zzb(0), iArr5[0]);
                                if (zzxfVar == null || zzxfVar2.compareTo(zzxfVar) > 0) {
                                    zzxfVar = zzxfVar2;
                                    zzdcVar = zzdcVarZzb;
                                }
                            }
                            c = 1;
                        }
                    }
                }
                zzxxVarArr[i6] = zzdcVar == null ? null : new zzxx(zzdcVar, new int[]{0}, 0);
            }
            i6++;
            i3 = 2;
            i = 1;
            i5 = 3;
        }
        HashMap map = new HashMap();
        for (int i9 = 0; i9 < 2; i9++) {
            zzt(zzyaVar.zzd(i9), zzxkVar, map);
        }
        zzt(zzyaVar.zze(), zzxkVar, map);
        for (int i10 = 0; i10 < 2; i10++) {
            if (((zzde) map.get(Integer.valueOf(zzyaVar.zzc(i10)))) != null) {
                throw null;
            }
        }
        int i11 = 0;
        for (int i12 = 2; i11 < i12; i12 = 2) {
            zzwl zzwlVarZzd2 = zzyaVar.zzd(i11);
            if (zzxkVar.zzg(i11, zzwlVarZzd2)) {
                if (zzxkVar.zze(i11, zzwlVarZzd2) != null) {
                    throw null;
                }
                zzxxVarArr[i11] = null;
            }
            i11++;
        }
        for (int i13 = 0; i13 < 2; i13++) {
            int iZzc2 = zzyaVar.zzc(i13);
            if (zzxkVar.zzf(i13) || zzxkVar.zzD.contains(Integer.valueOf(iZzc2))) {
                zzxxVarArr[i13] = null;
            }
        }
        zzwr zzwrVar = this.zzj;
        zzym zzymVarZzq = zzq();
        zzfwu zzfwuVarZzf = zzws.zzf(zzxxVarArr);
        int i14 = 2;
        zzxy[] zzxyVarArr = new zzxy[2];
        int i15 = 0;
        while (i15 < i14) {
            zzxx zzxxVar = zzxxVarArr[i15];
            if (zzxxVar == null || (length = (iArr3 = zzxxVar.zzb).length) == 0) {
                i2 = i15;
            } else {
                if (length == 1) {
                    zzxyVarZza = new zzxz(zzxxVar.zza, iArr3[0], 0, 0, null);
                    i2 = i15;
                } else {
                    i2 = i15;
                    zzxyVarZza = zzwrVar.zza(zzxxVar.zza, iArr3, 0, zzymVarZzq, (zzfwu) zzfwuVarZzf.get(i15));
                }
                zzxyVarArr[i2] = zzxyVarZza;
            }
            i15 = i2 + 1;
            i14 = 2;
        }
        zzmc[] zzmcVarArr = new zzmc[i14];
        for (int i16 = 0; i16 < i14; i16++) {
            zzmcVarArr[i16] = (zzxkVar.zzf(i16) || zzxkVar.zzD.contains(Integer.valueOf(zzyaVar.zzc(i16))) || (zzyaVar.zzc(i16) != -2 && zzxyVarArr[i16] == null)) ? null : zzmc.zza;
        }
        return Pair.create(zzmcVarArr, zzxyVarArr);
    }

    @Override // com.google.android.gms.internal.ads.zzye
    @Nullable
    public final zzma zzc() {
        return this;
    }

    public final zzxk zzd() {
        zzxk zzxkVar;
        synchronized (this.zze) {
            zzxkVar = this.zzg;
        }
        return zzxkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzye
    public final void zzi() {
        zzxp zzxpVar;
        synchronized (this.zze) {
            if (zzfs.zza >= 32 && (zzxpVar = this.zzh) != null) {
                zzxpVar.zzc();
            }
        }
        super.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzye
    public final void zzj(zzk zzkVar) {
        boolean z;
        synchronized (this.zze) {
            z = !this.zzi.equals(zzkVar);
            this.zzi = zzkVar;
        }
        if (z) {
            zzu();
        }
    }

    public final void zzk(zzxi zzxiVar) {
        boolean z;
        zzxk zzxkVar = new zzxk(zzxiVar);
        synchronized (this.zze) {
            z = !this.zzg.equals(zzxkVar);
            this.zzg = zzxkVar;
        }
        if (z) {
            if (zzxkVar.zzR && this.zza == null) {
                zzez.zzf("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
            }
            zzs();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzye
    public final boolean zzm() {
        return true;
    }
}
