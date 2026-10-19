package kotlin.time;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: DurationUnitJvm.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lkotlin/time/DurationUnit;", "", "timeUnit", "Ljava/util/concurrent/TimeUnit;", "(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V", "getTimeUnit$kotlin_stdlib", "()Ljava/util/concurrent/TimeUnit;", "NANOSECONDS", "MICROSECONDS", "MILLISECONDS", "SECONDS", "MINUTES", "HOURS", "DAYS", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
public final class DurationUnit {
    public static final DurationUnit a = new DurationUnit("NANOSECONDS", 0, TimeUnit.NANOSECONDS);
    public static final DurationUnit b = new DurationUnit("MICROSECONDS", 1, TimeUnit.MICROSECONDS);
    public static final DurationUnit c = new DurationUnit("MILLISECONDS", 2, TimeUnit.MILLISECONDS);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final DurationUnit f9975d = new DurationUnit("SECONDS", 3, TimeUnit.SECONDS);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final DurationUnit f9976e = new DurationUnit("MINUTES", 4, TimeUnit.MINUTES);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final DurationUnit f9977f = new DurationUnit("HOURS", 5, TimeUnit.HOURS);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final DurationUnit f9978g = new DurationUnit("DAYS", 6, TimeUnit.DAYS);
    private static final /* synthetic */ DurationUnit[] h;
    private static final /* synthetic */ EnumEntries i;
    private final TimeUnit j;

    static {
        DurationUnit[] durationUnitArrE = e();
        h = durationUnitArrE;
        i = EnumEntriesKt.enumEntries(durationUnitArrE);
    }

    private DurationUnit(String str, int i2, TimeUnit timeUnit) {
        this.j = timeUnit;
    }

    private static final /* synthetic */ DurationUnit[] e() {
        return new DurationUnit[]{a, b, c, f9975d, f9976e, f9977f, f9978g};
    }

    public static EnumEntries<DurationUnit> getEntries() {
        return i;
    }

    public static DurationUnit valueOf(String str) {
        return (DurationUnit) Enum.valueOf(DurationUnit.class, str);
    }

    public static DurationUnit[] values() {
        return (DurationUnit[]) h.clone();
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final TimeUnit getJ() {
        return this.j;
    }
}
