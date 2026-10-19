package com.bykv.vk.openvk.preload.b;

import com.bykv.vk.openvk.preload.b.i;

/* JADX INFO: compiled from: RetryInterceptor.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class k<IN, OUT> extends d<IN, OUT> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected IN f554g;

    private Object a(b<OUT> bVar, Throwable th) throws Throwable {
        while (a(th)) {
            try {
                return bVar.a(a());
            } catch (i.a e2) {
                th = e2.getCause();
            } catch (Throwable th2) {
                th = th2;
            }
        }
        throw th;
    }

    protected OUT a() {
        return this.f554g;
    }

    @Override // com.bykv.vk.openvk.preload.b.d
    public final Object a(b<OUT> bVar, IN in) throws Throwable {
        this.f554g = in;
        try {
            return bVar.a(a());
        } catch (i.a e2) {
            return a((b) bVar, e2.getCause());
        } catch (Throwable th) {
            return a((b) bVar, th);
        }
    }

    protected abstract boolean a(Throwable th);
}
