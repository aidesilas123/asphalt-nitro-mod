package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: BufferOverflow.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/channels/BufferOverflow;", "", "(Ljava/lang/String;I)V", "SUSPEND", "DROP_OLDEST", "DROP_LATEST", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
public final class BufferOverflow {
    public static final BufferOverflow a = new BufferOverflow("SUSPEND", 0);
    public static final BufferOverflow b = new BufferOverflow("DROP_OLDEST", 1);
    public static final BufferOverflow c = new BufferOverflow("DROP_LATEST", 2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final /* synthetic */ BufferOverflow[] f10024d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ EnumEntries f10025e;

    static {
        BufferOverflow[] bufferOverflowArrE = e();
        f10024d = bufferOverflowArrE;
        f10025e = EnumEntriesKt.enumEntries(bufferOverflowArrE);
    }

    private BufferOverflow(String str, int i) {
    }

    private static final /* synthetic */ BufferOverflow[] e() {
        return new BufferOverflow[]{a, b, c};
    }

    public static EnumEntries<BufferOverflow> getEntries() {
        return f10025e;
    }

    public static BufferOverflow valueOf(String str) {
        return (BufferOverflow) Enum.valueOf(BufferOverflow.class, str);
    }

    public static BufferOverflow[] values() {
        return (BufferOverflow[]) f10024d.clone();
    }
}
