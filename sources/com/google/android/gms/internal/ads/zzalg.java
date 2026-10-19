package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzalg implements zzace {
    public static final zzacl zza = new zzacl() { // from class: com.google.android.gms.internal.ads.zzald
        @Override // com.google.android.gms.internal.ads.zzacl
        public final /* synthetic */ zzace[] zza(Uri uri, Map map) {
            int i = zzack.zza;
            zzacl zzaclVar = zzalg.zza;
            return new zzace[]{new zzalg(0)};
        }
    };
    private final List zzb;
    private final zzfj zzc;
    private final SparseIntArray zzd;
    private final zzalj zze;
    private final SparseArray zzf;
    private final SparseBooleanArray zzg;
    private final SparseBooleanArray zzh;
    private final zzalc zzi;
    private zzalb zzj;
    private zzach zzk;
    private int zzl;
    private boolean zzm;
    private boolean zzn;
    private boolean zzo;
    private int zzp;
    private int zzq;

    public zzalg() {
        this(0);
    }

    public zzalg(int i) {
        this(1, new zzfq(0L), new zzajv(0), 112800);
    }

    public zzalg(int i, zzfq zzfqVar, zzalj zzaljVar, int i2) {
        this.zze = zzaljVar;
        this.zzb = Collections.singletonList(zzfqVar);
        this.zzc = new zzfj(new byte[9400], 0);
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        this.zzg = sparseBooleanArray;
        this.zzh = new SparseBooleanArray();
        SparseArray sparseArray = new SparseArray();
        this.zzf = sparseArray;
        this.zzd = new SparseIntArray();
        this.zzi = new zzalc(112800);
        this.zzk = zzach.zza;
        this.zzq = -1;
        sparseBooleanArray.clear();
        sparseArray.clear();
        SparseArray sparseArray2 = new SparseArray();
        int size = sparseArray2.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.zzf.put(sparseArray2.keyAt(i3), (zzall) sparseArray2.valueAt(i3));
        }
        this.zzf.put(0, new zzaky(new zzale(this)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01b5  */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v2, types: [boolean, int] */
    @Override // com.google.android.gms.internal.ads.zzace
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int zzb(com.google.android.gms.internal.ads.zzacf r19, com.google.android.gms.internal.ads.zzadb r20) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 456
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzalg.zzb(com.google.android.gms.internal.ads.zzacf, com.google.android.gms.internal.ads.zzadb):int");
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final void zzc(zzach zzachVar) {
        this.zzk = zzachVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0031  */
    @Override // com.google.android.gms.internal.ads.zzace
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zzd(long r10, long r12) {
        /*
            r9 = this;
            java.util.List r10 = r9.zzb
            int r10 = r10.size()
            r11 = 0
            r0 = 0
        L8:
            r1 = 0
            if (r0 >= r10) goto L37
            java.util.List r3 = r9.zzb
            java.lang.Object r3 = r3.get(r0)
            com.google.android.gms.internal.ads.zzfq r3 = (com.google.android.gms.internal.ads.zzfq) r3
            long r4 = r3.zze()
            r6 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 == 0) goto L31
            long r4 = r3.zzc()
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 == 0) goto L34
            int r6 = (r4 > r1 ? 1 : (r4 == r1 ? 0 : -1))
            if (r6 == 0) goto L34
            int r1 = (r4 > r12 ? 1 : (r4 == r12 ? 0 : -1))
            if (r1 == 0) goto L34
        L31:
            r3.zzf(r12)
        L34:
            int r0 = r0 + 1
            goto L8
        L37:
            int r10 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r10 == 0) goto L42
            com.google.android.gms.internal.ads.zzalb r10 = r9.zzj
            if (r10 == 0) goto L42
            r10.zzd(r12)
        L42:
            com.google.android.gms.internal.ads.zzfj r10 = r9.zzc
            r10.zzD(r11)
            android.util.SparseIntArray r10 = r9.zzd
            r10.clear()
            r10 = 0
        L4d:
            android.util.SparseArray r12 = r9.zzf
            int r12 = r12.size()
            if (r10 >= r12) goto L63
            android.util.SparseArray r12 = r9.zzf
            java.lang.Object r12 = r12.valueAt(r10)
            com.google.android.gms.internal.ads.zzall r12 = (com.google.android.gms.internal.ads.zzall) r12
            r12.zzc()
            int r10 = r10 + 1
            goto L4d
        L63:
            r9.zzp = r11
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzalg.zzd(long, long):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0020, code lost:
    
        r2 = r2 + 1;
     */
    @Override // com.google.android.gms.internal.ads.zzace
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean zze(com.google.android.gms.internal.ads.zzacf r7) throws java.io.IOException {
        /*
            r6 = this;
            com.google.android.gms.internal.ads.zzfj r0 = r6.zzc
            byte[] r0 = r0.zzI()
            com.google.android.gms.internal.ads.zzabu r7 = (com.google.android.gms.internal.ads.zzabu) r7
            r1 = 0
            r2 = 940(0x3ac, float:1.317E-42)
            r7.zzm(r0, r1, r2, r1)
            r2 = 0
        Lf:
            r3 = 188(0xbc, float:2.63E-43)
            if (r2 >= r3) goto L2b
            r3 = 0
        L14:
            r4 = 5
            if (r3 >= r4) goto L26
            int r4 = r3 * 188
            int r4 = r4 + r2
            r4 = r0[r4]
            r5 = 71
            if (r4 == r5) goto L23
            int r2 = r2 + 1
            goto Lf
        L23:
            int r3 = r3 + 1
            goto L14
        L26:
            r7.zzo(r2, r1)
            r7 = 1
            return r7
        L2b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzalg.zze(com.google.android.gms.internal.ads.zzacf):boolean");
    }
}
