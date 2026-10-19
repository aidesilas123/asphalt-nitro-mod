package kotlin.ranges;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;

/* JADX INFO: renamed from: kotlin.ranges.l, reason: from Kotlin metadata */
/* JADX INFO: compiled from: Ranges.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0002\u0010\u0005J\u0011\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0002H\u0096\u0002J\u0013\u0010\u000e\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\fH\u0016J\u0018\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0002H\u0002J\b\u0010\u0017\u001a\u00020\u0018H\u0016R\u000e\u0010\u0006\u001a\u00020\u0002X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0002X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0014\u0010\u0003\u001a\u00020\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\t¨\u0006\u0019"}, d2 = {"Lkotlin/ranges/OpenEndFloatRange;", "Lkotlin/ranges/OpenEndRange;", "", "start", "endExclusive", "(FF)V", "_endExclusive", "_start", "getEndExclusive", "()Ljava/lang/Float;", "getStart", "contains", "", "value", "equals", "other", "", "hashCode", "", "isEmpty", "lessThanOrEquals", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "toString", "", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
final class OpenEndFloatRange implements OpenEndRange<Float> {
    private final float a;
    private final float b;

    public OpenEndFloatRange(float f2, float f3) {
        this.a = f2;
        this.b = f3;
    }

    public boolean a(float f2) {
        return f2 >= this.a && f2 < this.b;
    }

    @Override // kotlin.ranges.OpenEndRange
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Float e() {
        return Float.valueOf(this.b);
    }

    @Override // kotlin.ranges.OpenEndRange
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public Float getStart() {
        return Float.valueOf(this.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.ranges.OpenEndRange
    public /* bridge */ /* synthetic */ boolean contains(Comparable comparable) {
        return a(((Number) comparable).floatValue());
    }

    public boolean d() {
        return this.a >= this.b;
    }

    public boolean equals(Object other) {
        if (other instanceof OpenEndFloatRange) {
            if (d() && ((OpenEndFloatRange) other).d()) {
                return true;
            }
            OpenEndFloatRange openEndFloatRange = (OpenEndFloatRange) other;
            if (this.a == openEndFloatRange.a) {
                if (this.b == openEndFloatRange.b) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        if (d()) {
            return -1;
        }
        return (Float.floatToIntBits(this.a) * 31) + Float.floatToIntBits(this.b);
    }

    public String toString() {
        return this.a + "..<" + this.b;
    }
}
