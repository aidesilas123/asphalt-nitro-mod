package kotlin.ranges;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.internal.UProgressionUtilKt;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: renamed from: kotlin.ranges.p, reason: from Kotlin metadata */
/* JADX INFO: compiled from: ULongRange.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010(\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0017\u0018\u0000 \u001a2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001aB\u001f\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0010H\u0016J\u000f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00020\u0017H\u0086\u0002J\b\u0010\u0018\u001a\u00020\u0019H\u0016R\u0016\u0010\b\u001a\u00020\u0002ø\u0001\u0000¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\nR\u0016\u0010\f\u001a\u00020\u0002ø\u0001\u0000¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\r\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\n\u0082\u0002\u0004\n\u0002\b!¨\u0006\u001b"}, d2 = {"Lkotlin/ranges/ULongProgression;", "", "Lkotlin/ULong;", "start", "endInclusive", "step", "", "(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "first", "getFirst-s-VKNKU", "()J", "J", "last", "getLast-s-VKNKU", "getStep", "equals", "", "other", "", "hashCode", "", "isEmpty", "iterator", "", "toString", "", "Companion", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
public class ULongProgression implements Iterable<ULong>, KMappedMarker {
    public static final a a = new a(null);
    private final long b;
    private final long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f8967d;

    /* JADX INFO: renamed from: kotlin.ranges.p$a */
    /* JADX INFO: compiled from: ULongRange.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lkotlin/ranges/ULongProgression$Companion;", "", "()V", "fromClosedRange", "Lkotlin/ranges/ULongProgression;", "rangeStart", "Lkotlin/ULong;", "rangeEnd", "step", "", "fromClosedRange-7ftBX0g", "(JJJ)Lkotlin/ranges/ULongProgression;", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final ULongProgression a(long j, long j2, long j3) {
            return new ULongProgression(j, j2, j3, null);
        }
    }

    private ULongProgression(long j, long j2, long j3) {
        if (j3 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (j3 == Long.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Long.MIN_VALUE to avoid overflow on negation.");
        }
        this.b = j;
        this.c = UProgressionUtilKt.m1595getProgressionLastElement7ftBX0g(j, j2, j3);
        this.f8967d = j3;
    }

    public /* synthetic */ ULongProgression(long j, long j2, long j3, kotlin.jvm.internal.n nVar) {
        this(j, j2, j3);
    }

    public boolean equals(Object other) {
        if (other instanceof ULongProgression) {
            if (!isEmpty() || !((ULongProgression) other).isEmpty()) {
                ULongProgression uLongProgression = (ULongProgression) other;
                if (this.b != uLongProgression.b || this.c != uLongProgression.c || this.f8967d != uLongProgression.f8967d) {
                }
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final long getB() {
        return this.b;
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public final long getC() {
        return this.c;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        long j = this.b;
        int iM1287constructorimpl = ((int) ULong.m1287constructorimpl(j ^ ULong.m1287constructorimpl(j >>> 32))) * 31;
        long j2 = this.c;
        int iM1287constructorimpl2 = (iM1287constructorimpl + ((int) ULong.m1287constructorimpl(j2 ^ ULong.m1287constructorimpl(j2 >>> 32)))) * 31;
        long j3 = this.f8967d;
        return ((int) (j3 ^ (j3 >>> 32))) + iM1287constructorimpl2;
    }

    /* JADX INFO: renamed from: i, reason: from getter */
    public final long getF8967d() {
        return this.f8967d;
    }

    public boolean isEmpty() {
        long j = this.f8967d;
        long j2 = this.b;
        long j3 = this.c;
        if (j > 0) {
            if (Long.compare(j2 ^ Long.MIN_VALUE, j3 ^ Long.MIN_VALUE) > 0) {
                return true;
            }
        } else if (Long.compare(j2 ^ Long.MIN_VALUE, j3 ^ Long.MIN_VALUE) < 0) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Iterable
    public final Iterator<ULong> iterator() {
        return new ULongProgressionIterator(this.b, this.c, this.f8967d, null);
    }

    public String toString() {
        StringBuilder sb;
        long j;
        if (this.f8967d > 0) {
            sb = new StringBuilder();
            sb.append((Object) ULong.m1291toStringimpl(this.b));
            sb.append("..");
            sb.append((Object) ULong.m1291toStringimpl(this.c));
            sb.append(" step ");
            j = this.f8967d;
        } else {
            sb = new StringBuilder();
            sb.append((Object) ULong.m1291toStringimpl(this.b));
            sb.append(" downTo ");
            sb.append((Object) ULong.m1291toStringimpl(this.c));
            sb.append(" step ");
            j = -this.f8967d;
        }
        sb.append(j);
        return sb.toString();
    }
}
