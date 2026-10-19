package com.mbridge.msdk.mbbanner.common.util;

import android.os.Handler;
import android.os.Looper;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.entity.e;
import com.mbridge.msdk.mbbanner.common.b.b;

/* JADX INFO: compiled from: BannerDelivery.java */
/* JADX INFO: loaded from: classes4.dex */
public class a {
    private static final String a = "a";
    private final Handler b = new Handler(Looper.getMainLooper());
    private boolean c;

    public final void a(final b bVar, final CampaignUnit campaignUnit, final String str) {
        this.b.post(new Runnable() { // from class: com.mbridge.msdk.mbbanner.common.util.a.1
            @Override // java.lang.Runnable
            public final void run() {
                b bVar2 = bVar;
                if (bVar2 != null) {
                    bVar2.a(str, campaignUnit, a.this.c);
                }
            }
        });
    }

    public final void a(final b bVar, final e eVar, final String str, final CampaignEx campaignEx) {
        this.b.post(new Runnable() { // from class: com.mbridge.msdk.mbbanner.common.util.a.2
            @Override // java.lang.Runnable
            public final void run() {
                b bVar2 = bVar;
                if (bVar2 != null) {
                    bVar2.a(str, eVar, a.this.c, campaignEx);
                }
            }
        });
    }

    public final void a(final b bVar, final String str) {
        this.b.post(new Runnable() { // from class: com.mbridge.msdk.mbbanner.common.util.a.3
            @Override // java.lang.Runnable
            public final void run() {
                b bVar2 = bVar;
                if (bVar2 != null) {
                    bVar2.a(str, a.this.c);
                }
            }
        });
    }

    public final void a(final b bVar, final String str, final CampaignEx campaignEx) {
        this.b.post(new Runnable() { // from class: com.mbridge.msdk.mbbanner.common.util.a.4
            @Override // java.lang.Runnable
            public final void run() {
                b bVar2 = bVar;
                if (bVar2 != null) {
                    bVar2.a(str, a.this.c, campaignEx);
                }
            }
        });
    }

    public final void a(boolean z) {
        this.c = z;
    }

    public final boolean a() {
        return this.c;
    }
}
