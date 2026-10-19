package kotlinx.serialization.internal;

import com.json.o2;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.UShortArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;

/* JADX INFO: renamed from: kotlinx.serialization.internal.v1, reason: from Kotlin metadata */
/* JADX INFO: compiled from: PrimitiveArraysSerializers.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0012\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002ø\u0001\u0000¢\u0006\u0002\u0010\u0004J\u001d\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0000ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010\u0012\u001a\u00020\u0002H\u0010ø\u0001\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\bH\u0010¢\u0006\u0002\b\u0017R\u0019\u0010\u0005\u001a\u00020\u0002X\u0082\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0006R\u001e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b@RX\u0090\u000e¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bø\u0001\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0018"}, d2 = {"Lkotlinx/serialization/internal/UShortArrayBuilder;", "Lkotlinx/serialization/internal/PrimitiveArrayBuilder;", "Lkotlin/UShortArray;", "bufferWithData", "([SLkotlin/jvm/internal/DefaultConstructorMarker;)V", "buffer", "[S", "<set-?>", "", o2.h.L, "getPosition$kotlinx_serialization_core", "()I", "append", "", "c", "Lkotlin/UShort;", "append-xj2QHRw$kotlinx_serialization_core", "(S)V", "build", "build-amswpOA$kotlinx_serialization_core", "()[S", "ensureCapacity", "requiredCapacity", "ensureCapacity$kotlinx_serialization_core", "kotlinx-serialization-core"}, mv = {1, 7, 1}, xi = 48)
public final class UShortArrayBuilder extends PrimitiveArrayBuilder<UShortArray> {
    private short[] a;
    private int b;

    private UShortArrayBuilder(short[] sArr) {
        this.a = sArr;
        this.b = UShortArray.m1320getSizeimpl(sArr);
        b(10);
    }

    public /* synthetic */ UShortArrayBuilder(short[] sArr, kotlin.jvm.internal.n nVar) {
        this(sArr);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public /* bridge */ /* synthetic */ UShortArray a() {
        return UShortArray.m1312boximpl(e());
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public void b(int i) {
        if (UShortArray.m1320getSizeimpl(this.a) < i) {
            short[] sArr = this.a;
            short[] sArrCopyOf = Arrays.copyOf(sArr, RangesKt___RangesKt.coerceAtLeast(i, UShortArray.m1320getSizeimpl(sArr) * 2));
            Intrinsics.checkNotNullExpressionValue(sArrCopyOf, "copyOf(this, newSize)");
            this.a = UShortArray.m1314constructorimpl(sArrCopyOf);
        }
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    /* JADX INFO: renamed from: c, reason: from getter */
    public int getB() {
        return this.b;
    }

    public final void d(short s) {
        PrimitiveArrayBuilder.ensureCapacity$kotlinx_serialization_core$default(this, 0, 1, null);
        short[] sArr = this.a;
        int b = getB();
        this.b = b + 1;
        UShortArray.m1324set01HTLdE(sArr, b, s);
    }

    public short[] e() {
        short[] sArrCopyOf = Arrays.copyOf(this.a, getB());
        Intrinsics.checkNotNullExpressionValue(sArrCopyOf, "copyOf(this, newSize)");
        return UShortArray.m1314constructorimpl(sArrCopyOf);
    }
}
