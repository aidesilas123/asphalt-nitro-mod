package kotlin.coroutines.intrinsics;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Intrinsics.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0081\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/coroutines/intrinsics/CoroutineSingletons;", "", "(Ljava/lang/String;I)V", "COROUTINE_SUSPENDED", "UNDECIDED", "RESUMED", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
public final class CoroutineSingletons {
    public static final CoroutineSingletons a = new CoroutineSingletons("COROUTINE_SUSPENDED", 0);
    public static final CoroutineSingletons b = new CoroutineSingletons("UNDECIDED", 1);
    public static final CoroutineSingletons c = new CoroutineSingletons("RESUMED", 2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final /* synthetic */ CoroutineSingletons[] f8871d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ EnumEntries f8872e;

    static {
        CoroutineSingletons[] coroutineSingletonsArrE = e();
        f8871d = coroutineSingletonsArrE;
        f8872e = EnumEntriesKt.enumEntries(coroutineSingletonsArrE);
    }

    private CoroutineSingletons(String str, int i) {
    }

    private static final /* synthetic */ CoroutineSingletons[] e() {
        return new CoroutineSingletons[]{a, b, c};
    }

    public static EnumEntries<CoroutineSingletons> getEntries() {
        return f8872e;
    }

    public static CoroutineSingletons valueOf(String str) {
        return (CoroutineSingletons) Enum.valueOf(CoroutineSingletons.class, str);
    }

    public static CoroutineSingletons[] values() {
        return (CoroutineSingletons[]) f8871d.clone();
    }
}
