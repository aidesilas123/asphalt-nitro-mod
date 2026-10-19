package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: TickerChannels.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lkotlinx/coroutines/channels/TickerMode;", "", "(Ljava/lang/String;I)V", "FIXED_PERIOD", "FIXED_DELAY", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
public final class TickerMode {
    public static final TickerMode a = new TickerMode("FIXED_PERIOD", 0);
    public static final TickerMode b = new TickerMode("FIXED_DELAY", 1);
    private static final /* synthetic */ TickerMode[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final /* synthetic */ EnumEntries f10131d;

    static {
        TickerMode[] tickerModeArrE = e();
        c = tickerModeArrE;
        f10131d = EnumEntriesKt.enumEntries(tickerModeArrE);
    }

    private TickerMode(String str, int i) {
    }

    private static final /* synthetic */ TickerMode[] e() {
        return new TickerMode[]{a, b};
    }

    public static EnumEntries<TickerMode> getEntries() {
        return f10131d;
    }

    public static TickerMode valueOf(String str) {
        return (TickerMode) Enum.valueOf(TickerMode.class, str);
    }

    public static TickerMode[] values() {
        return (TickerMode[]) c.clone();
    }
}
