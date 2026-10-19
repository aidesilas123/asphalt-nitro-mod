package kotlin.io.path;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: CopyActionResult.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/io/path/CopyActionResult;", "", "(Ljava/lang/String;I)V", "CONTINUE", "SKIP_SUBTREE", "TERMINATE", "kotlin-stdlib-jdk7"}, mv = {1, 9, 0}, xi = 48)
public final class CopyActionResult {
    public static final CopyActionResult a = new CopyActionResult("CONTINUE", 0);
    public static final CopyActionResult b = new CopyActionResult("SKIP_SUBTREE", 1);
    public static final CopyActionResult c = new CopyActionResult("TERMINATE", 2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final /* synthetic */ CopyActionResult[] f8906d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ EnumEntries f8907e;

    static {
        CopyActionResult[] copyActionResultArrE = e();
        f8906d = copyActionResultArrE;
        f8907e = EnumEntriesKt.enumEntries(copyActionResultArrE);
    }

    private CopyActionResult(String str, int i) {
    }

    private static final /* synthetic */ CopyActionResult[] e() {
        return new CopyActionResult[]{a, b, c};
    }

    public static EnumEntries<CopyActionResult> getEntries() {
        return f8907e;
    }

    public static CopyActionResult valueOf(String str) {
        return (CopyActionResult) Enum.valueOf(CopyActionResult.class, str);
    }

    public static CopyActionResult[] values() {
        return (CopyActionResult[]) f8906d.clone();
    }
}
