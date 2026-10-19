package kotlinx.serialization.internal;

import com.json.o2;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.UIntArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;

/* JADX INFO: renamed from: kotlinx.serialization.internal.p1, reason: from Kotlin metadata */
/* JADX INFO: compiled from: PrimitiveArraysSerializers.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0012\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002ø\u0001\u0000¢\u0006\u0002\u0010\u0004J\u001d\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0000ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010\u0012\u001a\u00020\u0002H\u0010ø\u0001\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\bH\u0010¢\u0006\u0002\b\u0017R\u0019\u0010\u0005\u001a\u00020\u0002X\u0082\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0006R\u001e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b@RX\u0090\u000e¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bø\u0001\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0018"}, d2 = {"Lkotlinx/serialization/internal/UIntArrayBuilder;", "Lkotlinx/serialization/internal/PrimitiveArrayBuilder;", "Lkotlin/UIntArray;", "bufferWithData", "([ILkotlin/jvm/internal/DefaultConstructorMarker;)V", "buffer", "[I", "<set-?>", "", o2.h.L, "getPosition$kotlinx_serialization_core", "()I", "append", "", "c", "Lkotlin/UInt;", "append-WZ4Q5Ns$kotlinx_serialization_core", "(I)V", "build", "build--hP7Qyg$kotlinx_serialization_core", "()[I", "ensureCapacity", "requiredCapacity", "ensureCapacity$kotlinx_serialization_core", "kotlinx-serialization-core"}, mv = {1, 7, 1}, xi = 48)
public final class UIntArrayBuilder extends PrimitiveArrayBuilder<UIntArray> {
    private int[] a;
    private int b;

    private UIntArrayBuilder(int[] iArr) {
        this.a = iArr;
        this.b = UIntArray.m1280getSizeimpl(iArr);
        b(10);
    }

    public /* synthetic */ UIntArrayBuilder(int[] iArr, kotlin.jvm.internal.n nVar) {
        this(iArr);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public /* bridge */ /* synthetic */ UIntArray a() {
        return UIntArray.m1272boximpl(e());
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public void b(int i) {
        if (UIntArray.m1280getSizeimpl(this.a) < i) {
            int[] iArr = this.a;
            int[] iArrCopyOf = Arrays.copyOf(iArr, RangesKt___RangesKt.coerceAtLeast(i, UIntArray.m1280getSizeimpl(iArr) * 2));
            Intrinsics.checkNotNullExpressionValue(iArrCopyOf, "copyOf(this, newSize)");
            this.a = UIntArray.m1274constructorimpl(iArrCopyOf);
        }
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    /* JADX INFO: renamed from: c, reason: from getter */
    public int getB() {
        return this.b;
    }

    public final void d(int i) {
        PrimitiveArrayBuilder.ensureCapacity$kotlinx_serialization_core$default(this, 0, 1, null);
        int[] iArr = this.a;
        int b = getB();
        this.b = b + 1;
        UIntArray.m1284setVXSXFK8(iArr, b, i);
    }

    public int[] e() {
        int[] iArrCopyOf = Arrays.copyOf(this.a, getB());
        Intrinsics.checkNotNullExpressionValue(iArrCopyOf, "copyOf(this, newSize)");
        return UIntArray.m1274constructorimpl(iArrCopyOf);
    }
}
