package kotlin.reflect;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: KVisibility.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lkotlin/reflect/KVisibility;", "", "(Ljava/lang/String;I)V", "PUBLIC", "PROTECTED", "INTERNAL", "PRIVATE", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
public final class KVisibility {
    public static final KVisibility a = new KVisibility("PUBLIC", 0);
    public static final KVisibility b = new KVisibility("PROTECTED", 1);
    public static final KVisibility c = new KVisibility("INTERNAL", 2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final KVisibility f8974d = new KVisibility("PRIVATE", 3);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ KVisibility[] f8975e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final /* synthetic */ EnumEntries f8976f;

    static {
        KVisibility[] kVisibilityArrE = e();
        f8975e = kVisibilityArrE;
        f8976f = EnumEntriesKt.enumEntries(kVisibilityArrE);
    }

    private KVisibility(String str, int i) {
    }

    private static final /* synthetic */ KVisibility[] e() {
        return new KVisibility[]{a, b, c, f8974d};
    }

    public static EnumEntries<KVisibility> getEntries() {
        return f8976f;
    }

    public static KVisibility valueOf(String str) {
        return (KVisibility) Enum.valueOf(KVisibility.class, str);
    }

    public static KVisibility[] values() {
        return (KVisibility[]) f8975e.clone();
    }
}
