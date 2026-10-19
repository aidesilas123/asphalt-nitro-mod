package kotlin.reflect;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: KVariance.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/reflect/KVariance;", "", "(Ljava/lang/String;I)V", "INVARIANT", "IN", "OUT", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
public final class KVariance {
    public static final KVariance a = new KVariance("INVARIANT", 0);
    public static final KVariance b = new KVariance("IN", 1);
    public static final KVariance c = new KVariance("OUT", 2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final /* synthetic */ KVariance[] f8972d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ EnumEntries f8973e;

    static {
        KVariance[] kVarianceArrE = e();
        f8972d = kVarianceArrE;
        f8973e = EnumEntriesKt.enumEntries(kVarianceArrE);
    }

    private KVariance(String str, int i) {
    }

    private static final /* synthetic */ KVariance[] e() {
        return new KVariance[]{a, b, c};
    }

    public static EnumEntries<KVariance> getEntries() {
        return f8973e;
    }

    public static KVariance valueOf(String str) {
        return (KVariance) Enum.valueOf(KVariance.class, str);
    }

    public static KVariance[] values() {
        return (KVariance[]) f8972d.clone();
    }
}
