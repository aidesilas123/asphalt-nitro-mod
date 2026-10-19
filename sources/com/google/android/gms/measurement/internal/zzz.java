package com.google.android.gms.measurement.internal;

import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzz extends zzkw {
    private String zza;
    private Set zzb;
    private Map zzc;
    private Long zzd;
    private Long zze;

    zzz(zzli zzliVar) {
        super(zzliVar);
    }

    private final zzt zzd(Integer num) {
        if (this.zzc.containsKey(num)) {
            return (zzt) this.zzc.get(num);
        }
        zzt zztVar = new zzt(this, this.zza, null);
        this.zzc.put(num, zztVar);
        return zztVar;
    }

    private final boolean zzf(int i, int i2) {
        zzt zztVar = (zzt) this.zzc.get(Integer.valueOf(i));
        if (zztVar == null) {
            return false;
        }
        return zztVar.zze.get(i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:385:0x0a0a, code lost:
    
        r0 = r65.zzs.zzaz().zzk();
        r6 = com.google.android.gms.measurement.internal.zzey.zzn(r65.zza);
     */
    /* JADX WARN: Code restructure failed: missing block: B:386:0x0a1e, code lost:
    
        if (r7.zzj() == false) goto L388;
     */
    /* JADX WARN: Code restructure failed: missing block: B:387:0x0a20, code lost:
    
        r7 = java.lang.Integer.valueOf(r7.zza());
     */
    /* JADX WARN: Code restructure failed: missing block: B:388:0x0a29, code lost:
    
        r7 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:389:0x0a2a, code lost:
    
        r0.zzc("Invalid property filter ID. appId, id", r6, java.lang.String.valueOf(r7));
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0313  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x03d0  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x03df  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0593  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x071a A[PHI: r0 r11 r13 r25 r28 r29
      0x071a: PHI (r0v97 java.util.Map) = (r0v99 java.util.Map), (r0v108 java.util.Map) binds: [B:282:0x0750, B:266:0x0716] A[DONT_GENERATE, DONT_INLINE]
      0x071a: PHI (r11v14 android.database.Cursor) = (r11v15 android.database.Cursor), (r11v17 android.database.Cursor) binds: [B:282:0x0750, B:266:0x0716] A[DONT_GENERATE, DONT_INLINE]
      0x071a: PHI (r13v12 java.lang.String) = (r13v13 java.lang.String), (r13v16 java.lang.String) binds: [B:282:0x0750, B:266:0x0716] A[DONT_GENERATE, DONT_INLINE]
      0x071a: PHI (r25v4 java.lang.String) = (r25v5 java.lang.String), (r25v7 java.lang.String) binds: [B:282:0x0750, B:266:0x0716] A[DONT_GENERATE, DONT_INLINE]
      0x071a: PHI (r28v7 java.lang.String) = (r28v8 java.lang.String), (r28v13 java.lang.String) binds: [B:282:0x0750, B:266:0x0716] A[DONT_GENERATE, DONT_INLINE]
      0x071a: PHI (r29v7 java.lang.String) = (r29v8 java.lang.String), (r29v14 java.lang.String) binds: [B:282:0x0750, B:266:0x0716] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:294:0x0775  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x081d  */
    /* JADX WARN: Removed duplicated region for block: B:398:0x0a67  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01b0 A[Catch: SQLiteException -> 0x0220, all -> 0x0af7, TRY_LEAVE, TryCatch #7 {SQLiteException -> 0x0220, blocks: (B:58:0x01aa, B:60:0x01b0, B:62:0x01be, B:63:0x01c3, B:64:0x01cd, B:65:0x01dd, B:67:0x01ec), top: B:423:0x01aa }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01be A[Catch: SQLiteException -> 0x0220, all -> 0x0af7, TRY_ENTER, TryCatch #7 {SQLiteException -> 0x0220, blocks: (B:58:0x01aa, B:60:0x01b0, B:62:0x01be, B:63:0x01c3, B:64:0x01cd, B:65:0x01dd, B:67:0x01ec), top: B:423:0x01aa }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x025e  */
    /* JADX WARN: Type inference failed for: r4v45, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v39 */
    /* JADX WARN: Type inference failed for: r5v41, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r5v45, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v46 */
    /* JADX WARN: Type inference failed for: r5v47, types: [java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r5v48 */
    /* JADX WARN: Type inference failed for: r5v49 */
    /* JADX WARN: Type inference failed for: r5v5, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v8, types: [android.database.Cursor] */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.util.List zza(java.lang.String r66, java.util.List r67, java.util.List r68, java.lang.Long r69, java.lang.Long r70) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 2815
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzz.zza(java.lang.String, java.util.List, java.util.List, java.lang.Long, java.lang.Long):java.util.List");
    }

    @Override // com.google.android.gms.measurement.internal.zzkw
    protected final boolean zzb() {
        return false;
    }
}
