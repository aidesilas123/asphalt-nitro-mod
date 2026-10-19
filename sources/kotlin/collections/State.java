package kotlin.collections;

import com.facebook.internal.AnalyticsEvents;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: AbstractIterator.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lkotlin/collections/State;", "", "(Ljava/lang/String;I)V", "Ready", "NotReady", "Done", AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_FAILED, "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
final class State {
    public static final State a = new State("Ready", 0);
    public static final State b = new State("NotReady", 1);
    public static final State c = new State("Done", 2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final State f8851d = new State(AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_FAILED, 3);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ State[] f8852e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final /* synthetic */ EnumEntries f8853f;

    static {
        State[] stateArrE = e();
        f8852e = stateArrE;
        f8853f = EnumEntriesKt.enumEntries(stateArrE);
    }

    private State(String str, int i) {
    }

    private static final /* synthetic */ State[] e() {
        return new State[]{a, b, c, f8851d};
    }

    public static EnumEntries<State> getEntries() {
        return f8853f;
    }

    public static State valueOf(String str) {
        return (State) Enum.valueOf(State.class, str);
    }

    public static State[] values() {
        return (State[]) f8852e.clone();
    }
}
