package com.unity3d.scar.adapter.v2000.c;

import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;

/* JADX INFO: compiled from: QueryInfoCallback.java */
/* JADX INFO: loaded from: classes4.dex */
public class a extends QueryInfoGenerationCallback {
    private String a;
    private com.unity3d.scar.adapter.common.l.a b;

    public a(String str, com.unity3d.scar.adapter.common.l.a aVar) {
        this.a = str;
        this.b = aVar;
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public void onFailure(String str) {
        this.b.onFailure(str);
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public void onSuccess(QueryInfo queryInfo) {
        this.b.a(this.a, queryInfo.getQuery(), queryInfo);
    }
}
