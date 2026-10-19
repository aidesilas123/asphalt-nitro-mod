package kotlin.internal;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Annotations.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0081\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/internal/RequireKotlinVersionKind;", "", "(Ljava/lang/String;I)V", "LANGUAGE_VERSION", "COMPILER_VERSION", "API_VERSION", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
public final class RequireKotlinVersionKind {
    public static final RequireKotlinVersionKind a = new RequireKotlinVersionKind("LANGUAGE_VERSION", 0);
    public static final RequireKotlinVersionKind b = new RequireKotlinVersionKind("COMPILER_VERSION", 1);
    public static final RequireKotlinVersionKind c = new RequireKotlinVersionKind("API_VERSION", 2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final /* synthetic */ RequireKotlinVersionKind[] f8876d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ EnumEntries f8877e;

    static {
        RequireKotlinVersionKind[] requireKotlinVersionKindArrE = e();
        f8876d = requireKotlinVersionKindArrE;
        f8877e = EnumEntriesKt.enumEntries(requireKotlinVersionKindArrE);
    }

    private RequireKotlinVersionKind(String str, int i) {
    }

    private static final /* synthetic */ RequireKotlinVersionKind[] e() {
        return new RequireKotlinVersionKind[]{a, b, c};
    }

    public static EnumEntries<RequireKotlinVersionKind> getEntries() {
        return f8877e;
    }

    public static RequireKotlinVersionKind valueOf(String str) {
        return (RequireKotlinVersionKind) Enum.valueOf(RequireKotlinVersionKind.class, str);
    }

    public static RequireKotlinVersionKind[] values() {
        return (RequireKotlinVersionKind[]) f8876d.clone();
    }
}
