package com.google.android.gms.internal.consent_sdk;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.ump:user-messaging-platform@@2.1.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcq {
    @Nullable
    public static zzco zza(Context context, String str) {
        String strConcat;
        String str2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] strArrSplit = str.split("/", -1);
        int length = strArrSplit.length;
        if (length != 1) {
            if (length == 2) {
                strConcat = strArrSplit[0];
                str2 = strArrSplit[1];
            }
            return null;
        }
        String strValueOf = String.valueOf(context.getPackageName());
        str2 = strArrSplit[0];
        strConcat = strValueOf.concat("_preferences");
        if (!TextUtils.isEmpty(strConcat) && !TextUtils.isEmpty(str2)) {
            return new zzco(strConcat, str2);
        }
        return null;
    }

    public static void zzb(Context context, Set set) {
        zzcp zzcpVar = new zzcp(context);
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            zzco zzcoVarZza = zza(context, str);
            if (zzcoVarZza == null) {
                Log.d("UserMessagingPlatform", "clearKeys: unable to process key: ".concat(String.valueOf(str)));
            } else {
                zzcpVar.zzd(zzcoVarZza.zza).remove(zzcoVarZza.zzb);
            }
        }
        zzcpVar.zzb();
    }
}
