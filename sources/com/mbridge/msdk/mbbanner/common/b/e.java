package com.mbridge.msdk.mbbanner.common.b;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.videocommon.download.g;

/* JADX INFO: compiled from: DownloadBannerUrlListener.java */
/* JADX INFO: loaded from: classes4.dex */
public class e implements g.b {
    private static final String a = "e";
    private String b;
    private com.mbridge.msdk.mbbanner.common.c.b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private CampaignEx f7269d;

    public e(com.mbridge.msdk.mbbanner.common.c.b bVar, String str, CampaignEx campaignEx) {
        this.c = bVar;
        this.b = str;
        this.f7269d = campaignEx;
    }

    @Override // com.mbridge.msdk.videocommon.download.g.a
    public final void a(String str, String str2) {
        com.mbridge.msdk.mbbanner.common.c.b bVar = this.c;
        if (bVar != null) {
            bVar.a(this.b, 3, str, false, this.f7269d);
        }
    }

    @Override // com.mbridge.msdk.videocommon.download.g.a
    public final void a(String str, String str2, boolean z) {
        com.mbridge.msdk.mbbanner.common.c.b bVar = this.c;
        if (bVar != null) {
            bVar.a(this.b, 3, str, true, this.f7269d);
        }
    }
}
