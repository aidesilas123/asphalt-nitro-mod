package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzash extends zzasg {
    protected zzash(Context context, String str, boolean z) {
        super(context, str, z);
    }

    public static zzash zzt(String str, Context context, boolean z) {
        zzasg.zzr(context, false);
        return new zzash(context, str, false);
    }

    @Deprecated
    public static zzash zzu(String str, Context context, boolean z, int i) {
        zzasg.zzr(context, z);
        return new zzash(context, str, z);
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    protected final List zzp(zzatj zzatjVar, Context context, zzapg zzapgVar, zzaoz zzaozVar) {
        if (zzatjVar.zzk() == null || !((zzasg) this).zzu) {
            return super.zzp(zzatjVar, context, zzapgVar, null);
        }
        int iZza = zzatjVar.zza();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(super.zzp(zzatjVar, context, zzapgVar, null));
        arrayList.add(new zzaub(zzatjVar, "9mv9Ihk+HlE8P3WJWSjhrxWrdB7cEu1gaxdteA5kBJ6DKumpWYk1Q5Vf8aocVg4i", "s7rU1m4XsqJ83s2reIjdkboWJYkg+gYouDrDcn3Ghpw=", zzapgVar, iZza, 24));
        return arrayList;
    }
}
