package io.didomi.drawable;

import android.view.View;
import android.widget.TextView;
import io.didomi.drawable.U8;
import io.didomi.drawable.view.mobile.DidomiToggle;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ\u001d\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\r\u0010\u0011R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0015\u001a\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0014¨\u0006\u0016"}, d2 = {"Lio/didomi/sdk/Z8;", "Lio/didomi/sdk/g9;", "Lio/didomi/sdk/z8;", "themeProvider", "Lio/didomi/sdk/l2;", "binding", "<init>", "(Lio/didomi/sdk/z8;Lio/didomi/sdk/l2;)V", "Lio/didomi/sdk/U8$a;", "data", "Lio/didomi/sdk/view/mobile/DidomiToggle$a;", "toggleCallback", "", "a", "(Lio/didomi/sdk/U8$a;Lio/didomi/sdk/view/mobile/DidomiToggle$a;)V", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "state", "(Lio/didomi/sdk/U8$a;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "c", "Lio/didomi/sdk/l2;", "()Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "nextState", "android_release"}, mv = {1, 8, 0})
public final class Z8 extends g9 {

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final C1819l2 binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Z8(C1965z8 themeProvider, C1819l2 binding) {
        super(themeProvider, binding);
        Intrinsics.checkNotNullParameter(themeProvider, "themeProvider");
        Intrinsics.checkNotNullParameter(binding, "binding");
        this.binding = binding;
        this.itemView.setBackgroundColor(themeProvider.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(DidomiToggle this_apply) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.setAnimate(true);
    }

    public final void a(U8.Bulk data, DidomiToggle.a toggleCallback) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(toggleCallback, "toggleCallback");
        super.a(data);
        TextView bind$lambda$0 = this.binding.b;
        Intrinsics.checkNotNullExpressionValue(bind$lambda$0, "bind$lambda$0");
        C1955y8.a(bind$lambda$0, getThemeProvider().i().n());
        bind$lambda$0.setText(data.getTitle());
        final DidomiToggle didomiToggle = this.binding.c;
        didomiToggle.setCallback(null);
        didomiToggle.setAnimate(false);
        didomiToggle.setState(data.getState());
        didomiToggle.setHasMiddleState(data.getHasMiddleState());
        didomiToggle.setCallback(toggleCallback);
        didomiToggle.post(new Runnable() { // from class: io.didomi.sdk.qd
            @Override // java.lang.Runnable
            public final void run() {
                Z8.a(didomiToggle);
            }
        });
        View itemView = this.itemView;
        Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
        j9.a(itemView, data.getAccessibilityLabel(), data.d().get(data.getState().ordinal()), data.g().get(data.getState().ordinal()), false, null, 0, null, EnumC1716b.c, 112, null);
    }

    public final void a(U8.Bulk data, DidomiToggle.b state) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(state, "state");
        String accessibilityAnnounceStateLabel = data.getAccessibilityAnnounceStateLabel();
        if (accessibilityAnnounceStateLabel == null && (accessibilityAnnounceStateLabel = data.getAccessibilityLabel()) == null) {
            return;
        }
        View itemView = this.itemView;
        Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
        j9.a(itemView, accessibilityAnnounceStateLabel, data.g().get(state.ordinal()));
    }

    public final DidomiToggle.b c() {
        return this.binding.c.getState().a(true);
    }
}
