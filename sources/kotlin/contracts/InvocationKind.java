package kotlin.contracts;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ContractBuilder.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lkotlin/contracts/InvocationKind;", "", "(Ljava/lang/String;I)V", "AT_MOST_ONCE", "AT_LEAST_ONCE", "EXACTLY_ONCE", "UNKNOWN", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
public final class InvocationKind {
    public static final InvocationKind a = new InvocationKind("AT_MOST_ONCE", 0);
    public static final InvocationKind b = new InvocationKind("AT_LEAST_ONCE", 1);
    public static final InvocationKind c = new InvocationKind("EXACTLY_ONCE", 2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final InvocationKind f8868d = new InvocationKind("UNKNOWN", 3);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ InvocationKind[] f8869e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final /* synthetic */ EnumEntries f8870f;

    static {
        InvocationKind[] invocationKindArrE = e();
        f8869e = invocationKindArrE;
        f8870f = EnumEntriesKt.enumEntries(invocationKindArrE);
    }

    private InvocationKind(String str, int i) {
    }

    private static final /* synthetic */ InvocationKind[] e() {
        return new InvocationKind[]{a, b, c, f8868d};
    }

    public static EnumEntries<InvocationKind> getEntries() {
        return f8870f;
    }

    public static InvocationKind valueOf(String str) {
        return (InvocationKind) Enum.valueOf(InvocationKind.class, str);
    }

    public static InvocationKind[] values() {
        return (InvocationKind[]) f8869e.clone();
    }
}
