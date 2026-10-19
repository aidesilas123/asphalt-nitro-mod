package okio;

import java.util.Arrays;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Segment.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class u {
    public static final a a = new a(null);
    public final byte[] b;
    public int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f10898d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f10899e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f10900f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public u f10901g;
    public u h;

    /* JADX INFO: compiled from: Segment.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }
    }

    public u() {
        this.b = new byte[8192];
        this.f10900f = true;
        this.f10899e = false;
    }

    public u(byte[] data, int i, int i2, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.b = data;
        this.c = i;
        this.f10898d = i2;
        this.f10899e = z;
        this.f10900f = z2;
    }

    public final void a() {
        u uVar = this.h;
        int i = 0;
        if (!(uVar != this)) {
            throw new IllegalStateException("cannot compact".toString());
        }
        Intrinsics.checkNotNull(uVar);
        if (uVar.f10900f) {
            int i2 = this.f10898d - this.c;
            u uVar2 = this.h;
            Intrinsics.checkNotNull(uVar2);
            int i3 = 8192 - uVar2.f10898d;
            u uVar3 = this.h;
            Intrinsics.checkNotNull(uVar3);
            if (!uVar3.f10899e) {
                u uVar4 = this.h;
                Intrinsics.checkNotNull(uVar4);
                i = uVar4.c;
            }
            if (i2 > i3 + i) {
                return;
            }
            u uVar5 = this.h;
            Intrinsics.checkNotNull(uVar5);
            g(uVar5, i2);
            b();
            SegmentPool.recycle(this);
        }
    }

    public final u b() {
        u uVar = this.f10901g;
        if (uVar == this) {
            uVar = null;
        }
        u uVar2 = this.h;
        Intrinsics.checkNotNull(uVar2);
        uVar2.f10901g = this.f10901g;
        u uVar3 = this.f10901g;
        Intrinsics.checkNotNull(uVar3);
        uVar3.h = this.h;
        this.f10901g = null;
        this.h = null;
        return uVar;
    }

    public final u c(u segment) {
        Intrinsics.checkNotNullParameter(segment, "segment");
        segment.h = this;
        segment.f10901g = this.f10901g;
        u uVar = this.f10901g;
        Intrinsics.checkNotNull(uVar);
        uVar.h = segment;
        this.f10901g = segment;
        return segment;
    }

    public final u d() {
        this.f10899e = true;
        return new u(this.b, this.c, this.f10898d, true, false);
    }

    public final u e(int i) {
        u uVarTake;
        if (!(i > 0 && i <= this.f10898d - this.c)) {
            throw new IllegalArgumentException("byteCount out of range".toString());
        }
        if (i >= 1024) {
            uVarTake = d();
        } else {
            uVarTake = SegmentPool.take();
            byte[] bArr = this.b;
            byte[] bArr2 = uVarTake.b;
            int i2 = this.c;
            ArraysKt___ArraysJvmKt.copyInto$default(bArr, bArr2, 0, i2, i2 + i, 2, (Object) null);
        }
        uVarTake.f10898d = uVarTake.c + i;
        this.c += i;
        u uVar = this.h;
        Intrinsics.checkNotNull(uVar);
        uVar.c(uVarTake);
        return uVarTake;
    }

    public final u f() {
        byte[] bArr = this.b;
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        Intrinsics.checkNotNullExpressionValue(bArrCopyOf, "java.util.Arrays.copyOf(this, size)");
        return new u(bArrCopyOf, this.c, this.f10898d, false, true);
    }

    public final void g(u sink, int i) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (!sink.f10900f) {
            throw new IllegalStateException("only owner can write".toString());
        }
        int i2 = sink.f10898d;
        if (i2 + i > 8192) {
            if (sink.f10899e) {
                throw new IllegalArgumentException();
            }
            int i3 = sink.c;
            if ((i2 + i) - i3 > 8192) {
                throw new IllegalArgumentException();
            }
            byte[] bArr = sink.b;
            ArraysKt___ArraysJvmKt.copyInto$default(bArr, bArr, 0, i3, i2, 2, (Object) null);
            sink.f10898d -= sink.c;
            sink.c = 0;
        }
        byte[] bArr2 = this.b;
        byte[] bArr3 = sink.b;
        int i4 = sink.f10898d;
        int i5 = this.c;
        ArraysKt___ArraysJvmKt.copyInto(bArr2, bArr3, i4, i5, i5 + i);
        sink.f10898d += i;
        this.c += i;
    }
}
