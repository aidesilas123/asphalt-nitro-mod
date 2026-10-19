package kotlin.time;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.time.ComparableTimeMark;

/* JADX INFO: compiled from: TimeSources.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\b'\u0018\u00002\u00020\u0001:\u0001\u0011B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\r\u001a\u00020\bH\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\bH$R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\n¨\u0006\u0012"}, d2 = {"Lkotlin/time/AbstractLongTimeSource;", "Lkotlin/time/TimeSource$WithComparableMarks;", "unit", "Lkotlin/time/DurationUnit;", "(Lkotlin/time/DurationUnit;)V", "getUnit", "()Lkotlin/time/DurationUnit;", "zero", "", "getZero", "()J", "zero$delegate", "Lkotlin/Lazy;", "adjustedRead", "markNow", "Lkotlin/time/ComparableTimeMark;", "read", "LongTimeMark", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
public abstract class AbstractLongTimeSource implements TimeSource {
    private final DurationUnit a;
    private final Lazy b;

    /* JADX INFO: renamed from: kotlin.time.AbstractLongTimeSource$a, reason: from toString */
    /* JADX INFO: compiled from: TimeSources.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0012\u0010\n\u001a\u00020\u0007H\u0016ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\fJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\u001b\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0001H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015J\u0018\u0010\u0016\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0007H\u0096\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\b\u0010\u001a\u001a\u00020\u001bH\u0016R\u0013\u0010\u0006\u001a\u00020\u0007X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b!¨\u0006\u001c"}, d2 = {"Lkotlin/time/AbstractLongTimeSource$LongTimeMark;", "Lkotlin/time/ComparableTimeMark;", "startedAt", "", "timeSource", "Lkotlin/time/AbstractLongTimeSource;", TypedValues.CycleType.S_WAVE_OFFSET, "Lkotlin/time/Duration;", "(JLkotlin/time/AbstractLongTimeSource;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "J", "elapsedNow", "elapsedNow-UwyO8pc", "()J", "equals", "", "other", "", "hashCode", "", "minus", "minus-UwyO8pc", "(Lkotlin/time/ComparableTimeMark;)J", "plus", "duration", "plus-LRDsOJo", "(J)Lkotlin/time/ComparableTimeMark;", "toString", "", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
    private static final class LongTimeMark implements ComparableTimeMark {
        private final long a;
        private final AbstractLongTimeSource b;
        private final long c;

        private LongTimeMark(long j, AbstractLongTimeSource timeSource, long j2) {
            Intrinsics.checkNotNullParameter(timeSource, "timeSource");
            this.a = j;
            this.b = timeSource;
            this.c = j2;
        }

        public /* synthetic */ LongTimeMark(long j, AbstractLongTimeSource abstractLongTimeSource, long j2, n nVar) {
            this(j, abstractLongTimeSource, j2);
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(ComparableTimeMark comparableTimeMark) {
            return ComparableTimeMark.DefaultImpls.compareTo(this, comparableTimeMark);
        }

        @Override // kotlin.time.TimeMark
        public ComparableTimeMark c(long j) {
            DurationUnit a = this.b.getA();
            if (Duration.m1682isInfiniteimpl(j)) {
                return new LongTimeMark(LongSaturatedMathKt.m1725saturatingAddNuflL3o(this.a, a, j), this.b, Duration.a.c(), null);
            }
            long jM1702truncateToUwyO8pc$kotlin_stdlib = Duration.m1702truncateToUwyO8pc$kotlin_stdlib(j, a);
            long jM1686plusLRDsOJo = Duration.m1686plusLRDsOJo(Duration.m1685minusLRDsOJo(j, jM1702truncateToUwyO8pc$kotlin_stdlib), this.c);
            long jM1725saturatingAddNuflL3o = LongSaturatedMathKt.m1725saturatingAddNuflL3o(this.a, a, jM1702truncateToUwyO8pc$kotlin_stdlib);
            long jM1702truncateToUwyO8pc$kotlin_stdlib2 = Duration.m1702truncateToUwyO8pc$kotlin_stdlib(jM1686plusLRDsOJo, a);
            long jM1725saturatingAddNuflL3o2 = LongSaturatedMathKt.m1725saturatingAddNuflL3o(jM1725saturatingAddNuflL3o, a, jM1702truncateToUwyO8pc$kotlin_stdlib2);
            long jM1685minusLRDsOJo = Duration.m1685minusLRDsOJo(jM1686plusLRDsOJo, jM1702truncateToUwyO8pc$kotlin_stdlib2);
            long jM1675getInWholeNanosecondsimpl = Duration.m1675getInWholeNanosecondsimpl(jM1685minusLRDsOJo);
            if (jM1725saturatingAddNuflL3o2 != 0 && jM1675getInWholeNanosecondsimpl != 0 && (jM1725saturatingAddNuflL3o2 ^ jM1675getInWholeNanosecondsimpl) < 0) {
                long duration = DurationKt.toDuration(MathKt__MathJVMKt.getSign(jM1675getInWholeNanosecondsimpl), a);
                jM1725saturatingAddNuflL3o2 = LongSaturatedMathKt.m1725saturatingAddNuflL3o(jM1725saturatingAddNuflL3o2, a, duration);
                jM1685minusLRDsOJo = Duration.m1685minusLRDsOJo(jM1685minusLRDsOJo, duration);
            }
            if ((1 | (jM1725saturatingAddNuflL3o2 - 1)) == Long.MAX_VALUE) {
                jM1685minusLRDsOJo = Duration.a.c();
            }
            return new LongTimeMark(jM1725saturatingAddNuflL3o2, this.b, jM1685minusLRDsOJo, null);
        }

        @Override // kotlin.time.ComparableTimeMark
        public long d(ComparableTimeMark other) {
            Intrinsics.checkNotNullParameter(other, "other");
            if (other instanceof LongTimeMark) {
                LongTimeMark longTimeMark = (LongTimeMark) other;
                if (Intrinsics.areEqual(this.b, longTimeMark.b)) {
                    return Duration.m1686plusLRDsOJo(LongSaturatedMathKt.saturatingOriginsDiff(this.a, longTimeMark.a, this.b.getA()), Duration.m1685minusLRDsOJo(this.c, longTimeMark.c));
                }
            }
            throw new IllegalArgumentException("Subtracting or comparing time marks from different time sources is not possible: " + this + " and " + other);
        }

        @Override // kotlin.time.TimeMark
        public long e() {
            return Duration.m1685minusLRDsOJo(LongSaturatedMathKt.saturatingOriginsDiff(this.b.b(), this.a, this.b.getA()), this.c);
        }

        public boolean equals(Object other) {
            return (other instanceof LongTimeMark) && Intrinsics.areEqual(this.b, ((LongTimeMark) other).b) && Duration.m1660equalsimpl0(d((ComparableTimeMark) other), Duration.a.c());
        }

        public int hashCode() {
            return (Duration.m1680hashCodeimpl(this.c) * 37) + androidx.privacysandbox.ads.adservices.adselection.b.a(this.a);
        }

        public String toString() {
            return "LongTimeMark(" + this.a + DurationUnitKt__DurationUnitKt.shortName(this.b.getA()) + " + " + ((Object) Duration.m1699toStringimpl(this.c)) + ", " + this.b + ')';
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long b() {
        return f() - d();
    }

    private final long d() {
        return ((Number) this.b.getValue()).longValue();
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    protected final DurationUnit getA() {
        return this.a;
    }

    @Override // kotlin.time.TimeSource
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public ComparableTimeMark a() {
        return new LongTimeMark(b(), this, Duration.a.c(), null);
    }

    protected abstract long f();
}
