package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: SharingStarted.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/flow/SharingCommand;", "", "(Ljava/lang/String;I)V", "START", "STOP", "STOP_AND_RESET_REPLAY_CACHE", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
public final class SharingCommand {
    public static final SharingCommand a = new SharingCommand("START", 0);
    public static final SharingCommand b = new SharingCommand("STOP", 1);
    public static final SharingCommand c = new SharingCommand("STOP_AND_RESET_REPLAY_CACHE", 2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final /* synthetic */ SharingCommand[] f10295d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ EnumEntries f10296e;

    static {
        SharingCommand[] sharingCommandArrE = e();
        f10295d = sharingCommandArrE;
        f10296e = EnumEntriesKt.enumEntries(sharingCommandArrE);
    }

    private SharingCommand(String str, int i) {
    }

    private static final /* synthetic */ SharingCommand[] e() {
        return new SharingCommand[]{a, b, c};
    }

    public static EnumEntries<SharingCommand> getEntries() {
        return f10296e;
    }

    public static SharingCommand valueOf(String str) {
        return (SharingCommand) Enum.valueOf(SharingCommand.class, str);
    }

    public static SharingCommand[] values() {
        return (SharingCommand[]) f10295d.clone();
    }
}
