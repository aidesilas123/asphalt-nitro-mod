package com.android.billingclient.api;

import android.content.Context;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Event;
import com.google.android.datatransport.b;
import com.google.android.datatransport.c;
import com.google.android.datatransport.cct.CCTDestination;
import com.google.android.datatransport.runtime.TransportRuntime;
import com.google.android.gms.internal.play_billing.zzfz;

/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class zzay {
    private boolean a;
    private c b;

    zzay(Context context) {
        try {
            TransportRuntime.initialize(context);
            this.b = TransportRuntime.getInstance().e(CCTDestination.f2954e).a("PLAY_BILLING_LIBRARY", zzfz.class, Encoding.of("proto"), new b() { // from class: com.android.billingclient.api.zzax
                @Override // com.google.android.datatransport.b
                public final Object apply(Object obj) {
                    return ((zzfz) obj).zzc();
                }
            });
        } catch (Throwable unused) {
            this.a = true;
        }
    }

    public final void a(zzfz zzfzVar) {
        if (this.a) {
            com.google.android.gms.internal.play_billing.zzb.zzj("BillingLogger", "Skipping logging since initialization failed.");
            return;
        }
        try {
            this.b.a(Event.ofData(zzfzVar));
        } catch (Throwable unused) {
            com.google.android.gms.internal.play_billing.zzb.zzj("BillingLogger", "logging failed.");
        }
    }
}
