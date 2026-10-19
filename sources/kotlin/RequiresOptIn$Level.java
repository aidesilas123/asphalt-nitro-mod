package kotlin;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: OptIn.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/RequiresOptIn$Level;", "", "(Ljava/lang/String;I)V", "WARNING", "ERROR", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
public final class RequiresOptIn$Level {
    public static final RequiresOptIn$Level a = new RequiresOptIn$Level("WARNING", 0);
    public static final RequiresOptIn$Level b = new RequiresOptIn$Level("ERROR", 1);
    private static final /* synthetic */ RequiresOptIn$Level[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final /* synthetic */ EnumEntries f8834d;

    static {
        RequiresOptIn$Level[] requiresOptIn$LevelArrE = e();
        c = requiresOptIn$LevelArrE;
        f8834d = EnumEntriesKt.enumEntries(requiresOptIn$LevelArrE);
    }

    private RequiresOptIn$Level(String str, int i) {
    }

    private static final /* synthetic */ RequiresOptIn$Level[] e() {
        return new RequiresOptIn$Level[]{a, b};
    }

    public static EnumEntries<RequiresOptIn$Level> getEntries() {
        return f8834d;
    }

    public static RequiresOptIn$Level valueOf(String str) {
        return (RequiresOptIn$Level) Enum.valueOf(RequiresOptIn$Level.class, str);
    }

    public static RequiresOptIn$Level[] values() {
        return (RequiresOptIn$Level[]) c.clone();
    }
}
