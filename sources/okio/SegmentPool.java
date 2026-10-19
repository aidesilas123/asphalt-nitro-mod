package okio;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SegmentPool.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class SegmentPool {
    public static final SegmentPool a = new SegmentPool();
    private static final int b = 65536;
    private static final u c = new u(new byte[0], 0, 0, false, false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f10856d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final AtomicReference<u>[] f10857e;

    static {
        int iHighestOneBit = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        f10856d = iHighestOneBit;
        AtomicReference<u>[] atomicReferenceArr = new AtomicReference[iHighestOneBit];
        for (int i = 0; i < iHighestOneBit; i++) {
            atomicReferenceArr[i] = new AtomicReference<>();
        }
        f10857e = atomicReferenceArr;
    }

    private SegmentPool() {
    }

    private final AtomicReference<u> a() {
        return f10857e[(int) (Thread.currentThread().getId() & (((long) f10856d) - 1))];
    }

    public static final void recycle(u segment) {
        AtomicReference<u> atomicReferenceA;
        u uVar;
        Intrinsics.checkNotNullParameter(segment, "segment");
        if (!(segment.f10901g == null && segment.h == null)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (segment.f10899e || (uVar = (atomicReferenceA = a.a()).get()) == c) {
            return;
        }
        int i = uVar == null ? 0 : uVar.f10898d;
        if (i >= b) {
            return;
        }
        segment.f10901g = uVar;
        segment.c = 0;
        segment.f10898d = i + 8192;
        if (atomicReferenceA.compareAndSet(uVar, segment)) {
            return;
        }
        segment.f10901g = null;
    }

    public static final u take() {
        AtomicReference<u> atomicReferenceA = a.a();
        u uVar = c;
        u andSet = atomicReferenceA.getAndSet(uVar);
        if (andSet == uVar) {
            return new u();
        }
        if (andSet == null) {
            atomicReferenceA.set(null);
            return new u();
        }
        atomicReferenceA.set(andSet.f10901g);
        andSet.f10901g = null;
        andSet.f10898d = 0;
        return andSet;
    }
}
