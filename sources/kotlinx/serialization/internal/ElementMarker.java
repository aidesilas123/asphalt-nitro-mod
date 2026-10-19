package kotlinx.serialization.internal;

import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: renamed from: kotlinx.serialization.internal.w, reason: from Kotlin metadata */
/* JADX INFO: compiled from: ElementMarker.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\b\u0001\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0018\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\u0010\bJ\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0006J\u0010\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0006H\u0002J\b\u0010\u0011\u001a\u00020\u0006H\u0002J\u0006\u0010\u0012\u001a\u00020\u0006J\u0010\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0006H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R \u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lkotlinx/serialization/internal/ElementMarker;", "", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "readIfAbsent", "Lkotlin/Function2;", "", "", "(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function2;)V", "highMarksArray", "", "lowerMarks", "", "mark", "", "index", "markHigh", "nextUnmarkedHighIndex", "nextUnmarkedIndex", "prepareHighMarksArray", "elementsCount", "Companion", "kotlinx-serialization-core"}, mv = {1, 7, 1}, xi = 48)
public final class ElementMarker {
    private static final a a = new a(null);

    @Deprecated
    private static final long[] b = new long[0];
    private final SerialDescriptor c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Function2<SerialDescriptor, Integer, Boolean> f10466d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f10467e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long[] f10468f;

    /* JADX INFO: renamed from: kotlinx.serialization.internal.w$a */
    /* JADX INFO: compiled from: ElementMarker.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0016\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lkotlinx/serialization/internal/ElementMarker$Companion;", "", "()V", "EMPTY_HIGH_MARKS", "", "kotlinx-serialization-core"}, mv = {1, 7, 1}, xi = 48)
    private static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ElementMarker(SerialDescriptor descriptor, Function2<? super SerialDescriptor, ? super Integer, Boolean> readIfAbsent) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(readIfAbsent, "readIfAbsent");
        this.c = descriptor;
        this.f10466d = readIfAbsent;
        int f10465d = descriptor.getF10465d();
        if (f10465d <= 64) {
            this.f10467e = f10465d != 64 ? (-1) << f10465d : 0L;
            this.f10468f = b;
        } else {
            this.f10467e = 0L;
            this.f10468f = e(f10465d);
        }
    }

    private final void b(int i) {
        int i2 = (i >>> 6) - 1;
        long[] jArr = this.f10468f;
        jArr[i2] = jArr[i2] | (1 << (i & 63));
    }

    private final int c() {
        int length = this.f10468f.length;
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            int i3 = i2 * 64;
            long j = this.f10468f[i];
            while (j != -1) {
                int iNumberOfTrailingZeros = Long.numberOfTrailingZeros(~j);
                j |= 1 << iNumberOfTrailingZeros;
                int i4 = iNumberOfTrailingZeros + i3;
                if (this.f10466d.invoke(this.c, Integer.valueOf(i4)).booleanValue()) {
                    this.f10468f[i] = j;
                    return i4;
                }
            }
            this.f10468f[i] = j;
            i = i2;
        }
        return -1;
    }

    private final long[] e(int i) {
        long[] jArr = new long[(i - 1) >>> 6];
        if ((i & 63) != 0) {
            jArr[ArraysKt___ArraysKt.getLastIndex(jArr)] = (-1) << i;
        }
        return jArr;
    }

    public final void a(int i) {
        if (i < 64) {
            this.f10467e |= 1 << i;
        } else {
            b(i);
        }
    }

    public final int d() {
        int iNumberOfTrailingZeros;
        int f10465d = this.c.getF10465d();
        do {
            long j = this.f10467e;
            if (j == -1) {
                if (f10465d > 64) {
                    return c();
                }
                return -1;
            }
            iNumberOfTrailingZeros = Long.numberOfTrailingZeros(~j);
            this.f10467e |= 1 << iNumberOfTrailingZeros;
        } while (!this.f10466d.invoke(this.c, Integer.valueOf(iNumberOfTrailingZeros)).booleanValue());
        return iNumberOfTrailingZeros;
    }
}
