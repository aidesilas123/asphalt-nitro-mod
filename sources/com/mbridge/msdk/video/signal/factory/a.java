package com.mbridge.msdk.video.signal.factory;

import com.mbridge.msdk.video.signal.a.d;
import com.mbridge.msdk.video.signal.a.g;
import com.mbridge.msdk.video.signal.c;
import com.mbridge.msdk.video.signal.e;
import com.mbridge.msdk.video.signal.f;
import com.mbridge.msdk.video.signal.h;
import com.mbridge.msdk.video.signal.i;

/* JADX INFO: compiled from: DefaultJSFactory.java */
/* JADX INFO: loaded from: classes4.dex */
public class a implements IJSFactory {
    protected com.mbridge.msdk.video.signal.a a;
    protected c b;
    protected i c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected f f7576d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected e f7577e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected h f7578f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected com.mbridge.msdk.video.signal.b f7579g;

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public com.mbridge.msdk.video.signal.a getActivityProxy() {
        if (this.a == null) {
            this.a = new com.mbridge.msdk.video.signal.a.a();
        }
        return this.a;
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public h getIJSRewardVideoV1() {
        if (this.f7578f == null) {
            this.f7578f = new com.mbridge.msdk.video.signal.a.f();
        }
        return this.f7578f;
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public com.mbridge.msdk.video.signal.b getJSBTModule() {
        if (this.f7579g == null) {
            this.f7579g = new com.mbridge.msdk.video.signal.a.b();
        }
        return this.f7579g;
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public c getJSCommon() {
        if (this.b == null) {
            this.b = new com.mbridge.msdk.video.signal.a.c();
        }
        return this.b;
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public e getJSContainerModule() {
        if (this.f7577e == null) {
            this.f7577e = new d();
        }
        return this.f7577e;
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public f getJSNotifyProxy() {
        if (this.f7576d == null) {
            this.f7576d = new com.mbridge.msdk.video.signal.a.e();
        }
        return this.f7576d;
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public i getJSVideoModule() {
        if (this.c == null) {
            this.c = new g();
        }
        return this.c;
    }
}
