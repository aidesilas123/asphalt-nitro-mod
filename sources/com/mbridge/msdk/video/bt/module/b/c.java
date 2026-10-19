package com.mbridge.msdk.video.bt.module.b;

import com.mbridge.msdk.foundation.tools.aa;

/* JADX INFO: compiled from: H5ShowRewardListener.java */
/* JADX INFO: loaded from: classes4.dex */
public final class c extends b {
    private com.mbridge.msdk.video.bt.module.a.b a;
    private String b;

    public c(com.mbridge.msdk.video.bt.module.a.b bVar, String str) {
        this.a = bVar;
        this.b = str;
    }

    @Override // com.mbridge.msdk.video.bt.module.b.b, com.mbridge.msdk.video.bt.module.b.h
    public final void a() {
        if (this.a != null) {
            aa.a("H5ShowRewardListener", "onAdShow");
            this.a.a(this.b);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.b.b, com.mbridge.msdk.video.bt.module.b.h
    public final void a(int i, String str, String str2) {
        if (this.a != null) {
            aa.a("H5ShowRewardListener", "onAutoLoad");
            this.a.a(this.b, i, str, str2);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.b.b, com.mbridge.msdk.video.bt.module.b.h
    public final void a(String str) {
        if (this.a != null) {
            aa.a("H5ShowRewardListener", "onShowFail");
            this.a.a(this.b, str);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.b.b, com.mbridge.msdk.video.bt.module.b.h
    public final void a(String str, String str2) {
        if (this.a != null) {
            aa.a("H5ShowRewardListener", "onVideoComplete");
            this.a.b(this.b, str, str2);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.b.b, com.mbridge.msdk.video.bt.module.b.h
    public final void a(boolean z, com.mbridge.msdk.videocommon.b.c cVar) {
        if (this.a != null) {
            aa.a("H5ShowRewardListener", "onAdClose");
            this.a.a(this.b, z, cVar);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.b.b, com.mbridge.msdk.video.bt.module.b.h
    public final void a(boolean z, String str, String str2) {
        if (this.a != null) {
            aa.a("H5ShowRewardListener", "onVideoAdClicked");
            this.a.a(this.b, str, str2);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.b.b, com.mbridge.msdk.video.bt.module.b.h
    public final void b(String str, String str2) {
        if (this.a != null) {
            aa.a("H5ShowRewardListener", "onEndcardShow");
            this.a.c(this.b, str, str2);
        }
    }
}
