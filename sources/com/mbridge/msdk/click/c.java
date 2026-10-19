package com.mbridge.msdk.click;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.mbridge.msdk.click.entity.JumpLoaderResult;
import com.mbridge.msdk.foundation.entity.CampaignEx;

/* JADX INFO: compiled from: CommonJumpLoader.java */
/* JADX INFO: loaded from: classes4.dex */
public final class c extends d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f6799d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.mbridge.msdk.foundation.same.e.b f6802g;
    private m h;
    private int b = 0;
    private String c = null;
    JumpLoaderResult a = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private e f6800e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f6801f = true;
    private Handler i = new Handler(Looper.getMainLooper());

    public c(Context context) {
        this.f6802g = new com.mbridge.msdk.foundation.same.e.b(context);
        this.h = new m(context);
    }

    @Override // com.mbridge.msdk.click.d
    public final void a() {
        this.f6801f = false;
    }

    public final void a(String str, CampaignEx campaignEx, e eVar) {
        this.c = new String(campaignEx.getClickURL());
        this.f6800e = eVar;
        this.a = null;
        this.h.a(campaignEx.getClickURL(), eVar, CampaignEx.CLICKMODE_ON.equals(campaignEx.getClick_mode()) || "6".equals(campaignEx.getClick_mode()), campaignEx.getId(), str, campaignEx, true, false, com.mbridge.msdk.click.a.a.j);
    }

    public final void a(String str, CampaignEx campaignEx, e eVar, String str2, boolean z, boolean z2, int i) {
        String id;
        boolean z3;
        this.c = str2;
        this.f6800e = eVar;
        this.a = null;
        this.f6799d = i;
        if (campaignEx != null) {
            boolean z4 = CampaignEx.CLICKMODE_ON.equals(campaignEx.getClick_mode()) || "6".equals(campaignEx.getClick_mode());
            id = campaignEx.getId();
            z3 = z4;
        } else {
            id = "";
            z3 = false;
        }
        this.h.a(str2, eVar, z3, id, str, campaignEx, z, z2, i);
    }
}
