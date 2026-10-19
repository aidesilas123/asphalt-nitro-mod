package com.tapjoy.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class b1 extends com.tapjoy.n {
    public final /* synthetic */ aa a;

    public b1(aa aaVar) {
        this.a = aaVar;
    }

    @Override // com.tapjoy.n, com.tapjoy.TJConnectInterface
    public final void onConnectFailure(int i, String str) {
        this.a.d(i, str);
    }

    @Override // com.tapjoy.n, com.tapjoy.TJConnectInterface
    public final void onConnectSuccess() {
        this.a.c(5);
        this.a.b();
    }
}
