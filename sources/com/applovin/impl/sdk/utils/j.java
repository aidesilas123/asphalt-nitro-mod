package com.applovin.impl.sdk.utils;

import android.content.Context;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.q;
import com.applovin.impl.sdk.utils.d;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.OnSuccessListener;
import java.util.Objects;
import lombok.NonNull;

/* JADX INFO: loaded from: classes.dex */
public class j {
    public static void ac(final Context context) {
        new Thread(new Runnable() { // from class: com.applovin.impl.sdk.utils.b0
            @Override // java.lang.Runnable
            public final void run() {
                j.ad(context);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void ad(Context context) {
        d.a aVarU = d.U(context);
        com.applovin.impl.sdk.q.a(aVarU);
        com.applovin.impl.sdk.o.a(aVarU);
        if (u.dE("com.google.android.gms.appset.AppSet")) {
            try {
                AppSet.getClient(context).getAppSetIdInfo().addOnSuccessListener(new OnSuccessListener<AppSetIdInfo>() { // from class: com.applovin.impl.sdk.utils.j.1
                    @Override // com.google.android.gms.tasks.OnSuccessListener
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public void onSuccess(@NonNull AppSetIdInfo appSetIdInfo) {
                        Objects.requireNonNull(appSetIdInfo, "info is marked non-null but is null");
                        com.applovin.impl.sdk.q.a(new q.b(appSetIdInfo.getId(), appSetIdInfo.getScope()));
                        com.applovin.impl.sdk.o.a(new o.a(appSetIdInfo.getId(), appSetIdInfo.getScope()));
                    }
                });
            } catch (Throwable unused) {
            }
        }
    }
}
