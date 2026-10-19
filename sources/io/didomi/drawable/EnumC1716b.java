package io.didomi.drawable;

import android.widget.Button;
import android.widget.Switch;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'b' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:372)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:337)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:293)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:266)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: renamed from: io.didomi.sdk.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\r\n\u0002\b\t\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tj\u0002\b\bj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lio/didomi/sdk/b;", "", "", "value", "<init>", "(Ljava/lang/String;ILjava/lang/CharSequence;)V", "a", "Ljava/lang/CharSequence;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()Ljava/lang/CharSequence;", "c", "android_release"}, mv = {1, 8, 0})
public final class EnumC1716b {
    public static final EnumC1716b b;
    public static final EnumC1716b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final /* synthetic */ EnumC1716b[] f8504d;

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final CharSequence value;

    static {
        String name = Button.class.getName();
        Intrinsics.checkNotNullExpressionValue(name, "Button::class.java.name");
        b = new EnumC1716b("BUTTON", 0, name);
        String name2 = Switch.class.getName();
        Intrinsics.checkNotNullExpressionValue(name2, "Switch::class.java.name");
        c = new EnumC1716b("SWITCH", 1, name2);
        f8504d = a();
    }

    private EnumC1716b(String str, int i, CharSequence charSequence) {
        this.value = charSequence;
    }

    private static final /* synthetic */ EnumC1716b[] a() {
        return new EnumC1716b[]{b, c};
    }

    public static EnumC1716b valueOf(String str) {
        return (EnumC1716b) Enum.valueOf(EnumC1716b.class, str);
    }

    public static EnumC1716b[] values() {
        return (EnumC1716b[]) f8504d.clone();
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final CharSequence getValue() {
        return this.value;
    }
}
