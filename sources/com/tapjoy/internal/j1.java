package com.tapjoy.internal;

import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.OnSuccessListener;
import com.tapjoy.TJTaskHandler;
import com.tapjoy.TapjoyLog;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public final class j1 implements OnSuccessListener {
    public final /* synthetic */ TJTaskHandler a;

    public j1(TJTaskHandler tJTaskHandler) {
        this.a = tJTaskHandler;
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(Object obj) {
        AppSetIdInfo appSetIdInfo = (AppSetIdInfo) obj;
        int scope = appSetIdInfo.getScope();
        String id = appSetIdInfo.getId();
        TapjoyLog.d("TJAppSetId", String.format(Locale.ENGLISH, "Scope: %d. AppSetId: %s", Integer.valueOf(scope), id));
        this.a.onComplete(id);
    }
}
