package kotlin;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Annotations.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/DeprecationLevel;", "", "(Ljava/lang/String;I)V", "WARNING", "ERROR", "HIDDEN", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
public final class DeprecationLevel {
    public static final DeprecationLevel a = new DeprecationLevel("WARNING", 0);
    public static final DeprecationLevel b = new DeprecationLevel("ERROR", 1);
    public static final DeprecationLevel c = new DeprecationLevel("HIDDEN", 2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final /* synthetic */ DeprecationLevel[] f8830d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ EnumEntries f8831e;

    static {
        DeprecationLevel[] deprecationLevelArrE = e();
        f8830d = deprecationLevelArrE;
        f8831e = EnumEntriesKt.enumEntries(deprecationLevelArrE);
    }

    private DeprecationLevel(String str, int i) {
    }

    private static final /* synthetic */ DeprecationLevel[] e() {
        return new DeprecationLevel[]{a, b, c};
    }

    public static EnumEntries<DeprecationLevel> getEntries() {
        return f8831e;
    }

    public static DeprecationLevel valueOf(String str) {
        return (DeprecationLevel) Enum.valueOf(DeprecationLevel.class, str);
    }

    public static DeprecationLevel[] values() {
        return (DeprecationLevel[]) f8830d.clone();
    }
}
