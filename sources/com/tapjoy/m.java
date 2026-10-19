package com.tapjoy;

import android.content.Context;
import com.google.android.gms.appset.AppSet;
import com.tapjoy.internal.j1;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class m {
    public void a(Context context, TJTaskHandler<String> tJTaskHandler) {
        try {
            Class.forName("com.google.android.gms.appset.AppSet");
            AppSet.getClient(context.getApplicationContext()).getAppSetIdInfo().addOnSuccessListener(new j1(tJTaskHandler));
        } catch (Exception e2) {
            TapjoyLog.d("TJAppSetId", String.format(Locale.ENGLISH, "AppSetId class not found: %s", e2.getMessage()));
            tJTaskHandler.onComplete("");
        }
    }
}
