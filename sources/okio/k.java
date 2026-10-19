package okio;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ForwardingTimeout.kt */
/* JADX INFO: loaded from: classes5.dex */
public class k extends z {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private z f10888f;

    public k(z delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.f10888f = delegate;
    }

    @Override // okio.z
    public z a() {
        return this.f10888f.a();
    }

    @Override // okio.z
    public z b() {
        return this.f10888f.b();
    }

    @Override // okio.z
    public long c() {
        return this.f10888f.c();
    }

    @Override // okio.z
    public z d(long j) {
        return this.f10888f.d(j);
    }

    @Override // okio.z
    public boolean e() {
        return this.f10888f.e();
    }

    @Override // okio.z
    public void f() throws IOException {
        this.f10888f.f();
    }

    @Override // okio.z
    public z g(long j, TimeUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        return this.f10888f.g(j, unit);
    }

    public final z i() {
        return this.f10888f;
    }

    public final k j(z delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.f10888f = delegate;
        return this;
    }
}
