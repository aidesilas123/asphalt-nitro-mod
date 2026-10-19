package kotlin.ranges;

import com.google.android.gms.ads.RequestConfiguration;
import java.lang.Comparable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.OpenEndRange;

/* JADX INFO: renamed from: kotlin.ranges.e, reason: from Kotlin metadata */
/* JADX INFO: compiled from: Ranges.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0012\u0018\u0000*\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0015\u0012\u0006\u0010\u0004\u001a\u00028\u0000\u0012\u0006\u0010\u0005\u001a\u00028\u0000¢\u0006\u0002\u0010\u0006J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u0016\u0010\u0005\u001a\u00028\u0000X\u0096\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0004\u001a\u00028\u0000X\u0096\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\n\u0010\b¨\u0006\u0013"}, d2 = {"Lkotlin/ranges/ComparableOpenEndRange;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "Lkotlin/ranges/OpenEndRange;", "start", "endExclusive", "(Ljava/lang/Comparable;Ljava/lang/Comparable;)V", "getEndExclusive", "()Ljava/lang/Comparable;", "Ljava/lang/Comparable;", "getStart", "equals", "", "other", "", "hashCode", "", "toString", "", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
class ComparableOpenEndRange<T extends Comparable<? super T>> implements OpenEndRange<T> {
    private final T a;
    private final T b;

    public ComparableOpenEndRange(T start, T endExclusive) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(endExclusive, "endExclusive");
        this.a = start;
        this.b = endExclusive;
    }

    public boolean a() {
        return OpenEndRange.DefaultImpls.isEmpty(this);
    }

    @Override // kotlin.ranges.OpenEndRange
    public boolean contains(T t) {
        return OpenEndRange.DefaultImpls.contains(this, t);
    }

    @Override // kotlin.ranges.OpenEndRange
    public T e() {
        return this.b;
    }

    public boolean equals(Object other) {
        if (other instanceof ComparableOpenEndRange) {
            if (!a() || !((ComparableOpenEndRange) other).a()) {
                ComparableOpenEndRange comparableOpenEndRange = (ComparableOpenEndRange) other;
                if (!Intrinsics.areEqual(getStart(), comparableOpenEndRange.getStart()) || !Intrinsics.areEqual(e(), comparableOpenEndRange.e())) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // kotlin.ranges.OpenEndRange
    public T getStart() {
        return this.a;
    }

    public int hashCode() {
        if (a()) {
            return -1;
        }
        return (getStart().hashCode() * 31) + e().hashCode();
    }

    public String toString() {
        return getStart() + "..<" + e();
    }
}
