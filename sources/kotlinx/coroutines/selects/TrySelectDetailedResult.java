package kotlinx.coroutines.selects;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Select.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lkotlinx/coroutines/selects/TrySelectDetailedResult;", "", "(Ljava/lang/String;I)V", "SUCCESSFUL", "REREGISTER", "CANCELLED", "ALREADY_SELECTED", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
public final class TrySelectDetailedResult {
    public static final TrySelectDetailedResult a = new TrySelectDetailedResult("SUCCESSFUL", 0);
    public static final TrySelectDetailedResult b = new TrySelectDetailedResult("REREGISTER", 1);
    public static final TrySelectDetailedResult c = new TrySelectDetailedResult("CANCELLED", 2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final TrySelectDetailedResult f10424d = new TrySelectDetailedResult("ALREADY_SELECTED", 3);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ TrySelectDetailedResult[] f10425e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final /* synthetic */ EnumEntries f10426f;

    static {
        TrySelectDetailedResult[] trySelectDetailedResultArrE = e();
        f10425e = trySelectDetailedResultArrE;
        f10426f = EnumEntriesKt.enumEntries(trySelectDetailedResultArrE);
    }

    private TrySelectDetailedResult(String str, int i) {
    }

    private static final /* synthetic */ TrySelectDetailedResult[] e() {
        return new TrySelectDetailedResult[]{a, b, c, f10424d};
    }

    public static EnumEntries<TrySelectDetailedResult> getEntries() {
        return f10426f;
    }

    public static TrySelectDetailedResult valueOf(String str) {
        return (TrySelectDetailedResult) Enum.valueOf(TrySelectDetailedResult.class, str);
    }

    public static TrySelectDetailedResult[] values() {
        return (TrySelectDetailedResult[]) f10425e.clone();
    }
}
