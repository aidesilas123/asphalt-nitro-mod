package kotlin;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Lazy.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/LazyThreadSafetyMode;", "", "(Ljava/lang/String;I)V", "SYNCHRONIZED", "PUBLICATION", "NONE", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
public final class LazyThreadSafetyMode {
    public static final LazyThreadSafetyMode a = new LazyThreadSafetyMode("SYNCHRONIZED", 0);
    public static final LazyThreadSafetyMode b = new LazyThreadSafetyMode("PUBLICATION", 1);
    public static final LazyThreadSafetyMode c = new LazyThreadSafetyMode("NONE", 2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final /* synthetic */ LazyThreadSafetyMode[] f8832d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ EnumEntries f8833e;

    static {
        LazyThreadSafetyMode[] lazyThreadSafetyModeArrE = e();
        f8832d = lazyThreadSafetyModeArrE;
        f8833e = EnumEntriesKt.enumEntries(lazyThreadSafetyModeArrE);
    }

    private LazyThreadSafetyMode(String str, int i) {
    }

    private static final /* synthetic */ LazyThreadSafetyMode[] e() {
        return new LazyThreadSafetyMode[]{a, b, c};
    }

    public static EnumEntries<LazyThreadSafetyMode> getEntries() {
        return f8833e;
    }

    public static LazyThreadSafetyMode valueOf(String str) {
        return (LazyThreadSafetyMode) Enum.valueOf(LazyThreadSafetyMode.class, str);
    }

    public static LazyThreadSafetyMode[] values() {
        return (LazyThreadSafetyMode[]) f8832d.clone();
    }
}
