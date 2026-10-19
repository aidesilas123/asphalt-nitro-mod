package kotlin.io.path;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: OnErrorResult.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/io/path/OnErrorResult;", "", "(Ljava/lang/String;I)V", "SKIP_SUBTREE", "TERMINATE", "kotlin-stdlib-jdk7"}, mv = {1, 9, 0}, xi = 48)
public final class OnErrorResult {
    public static final OnErrorResult a = new OnErrorResult("SKIP_SUBTREE", 0);
    public static final OnErrorResult b = new OnErrorResult("TERMINATE", 1);
    private static final /* synthetic */ OnErrorResult[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final /* synthetic */ EnumEntries f8908d;

    static {
        OnErrorResult[] onErrorResultArrE = e();
        c = onErrorResultArrE;
        f8908d = EnumEntriesKt.enumEntries(onErrorResultArrE);
    }

    private OnErrorResult(String str, int i) {
    }

    private static final /* synthetic */ OnErrorResult[] e() {
        return new OnErrorResult[]{a, b};
    }

    public static EnumEntries<OnErrorResult> getEntries() {
        return f8908d;
    }

    public static OnErrorResult valueOf(String str) {
        return (OnErrorResult) Enum.valueOf(OnErrorResult.class, str);
    }

    public static OnErrorResult[] values() {
        return (OnErrorResult[]) c.clone();
    }
}
