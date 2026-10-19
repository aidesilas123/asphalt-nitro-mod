package io.didomi.drawable;

import android.view.View;
import android.widget.TextView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.C1831m4;
import io.didomi.drawable.view.mobile.DidomiToggle;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.o4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\u0018\u0000 \u00142\u00020\u0001:\u0001\rB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u000f\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000f\u0010\u000eR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lio/didomi/sdk/o4;", "Lio/didomi/sdk/U4;", "Lio/didomi/sdk/r1;", "binding", "Lio/didomi/sdk/m4$a;", "callbacks", "Lio/didomi/sdk/z8;", "themeProvider", "<init>", "(Lio/didomi/sdk/r1;Lio/didomi/sdk/m4$a;Lio/didomi/sdk/z8;)V", "Lio/didomi/sdk/y4;", "data", "", "a", "(Lio/didomi/sdk/y4;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", "Lio/didomi/sdk/r1;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lio/didomi/sdk/m4$a;", "e", "android_release"}, mv = {1, 8, 0})
public final class C1851o4 extends U4 {

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final C1878r1 binding;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final C1831m4.a callbacks;

    /* JADX INFO: renamed from: io.didomi.sdk.o4$b */
    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"io/didomi/sdk/o4$b", "Lio/didomi/sdk/view/mobile/DidomiToggle$a;", "Lio/didomi/sdk/view/mobile/DidomiToggle;", "toggle", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "state", "", "a", "(Lio/didomi/sdk/view/mobile/DidomiToggle;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "android_release"}, mv = {1, 8, 0})
    public static final class b implements DidomiToggle.a {
        b() {
        }

        @Override // io.didomi.sdk.view.mobile.DidomiToggle.a
        public void a(DidomiToggle toggle, DidomiToggle.b state) {
            Intrinsics.checkNotNullParameter(toggle, "toggle");
            Intrinsics.checkNotNullParameter(state, "state");
            C1851o4.this.callbacks.a(state);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1851o4(C1878r1 binding, C1831m4.a callbacks, C1965z8 themeProvider) {
        super(binding, themeProvider);
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(callbacks, "callbacks");
        Intrinsics.checkNotNullParameter(themeProvider, "themeProvider");
        this.binding = binding;
        this.callbacks = callbacks;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C1878r1 this_apply, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.b.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(DidomiToggle this_apply) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.setAnimate(true);
    }

    public final void a(PurposeDisplayBulkAction data) {
        Intrinsics.checkNotNullParameter(data, "data");
        super.a((InterfaceC1931w4) data);
        final C1878r1 c1878r1 = this.binding;
        TextView bind$lambda$2$lambda$0 = c1878r1.c;
        Intrinsics.checkNotNullExpressionValue(bind$lambda$2$lambda$0, "bind$lambda$2$lambda$0");
        C1955y8.a(bind$lambda$2$lambda$0, getThemeProvider().i().o());
        bind$lambda$2$lambda$0.setText(data.getLabel());
        if (!data.getShouldHideToggle()) {
            c1878r1.b.setImportantForAccessibility(2);
            this.itemView.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.ff
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    C1851o4.a(c1878r1, view);
                }
            });
            b(data);
            return;
        }
        DidomiToggle switchHolderPurposeBulk = c1878r1.b;
        Intrinsics.checkNotNullExpressionValue(switchHolderPurposeBulk, "switchHolderPurposeBulk");
        switchHolderPurposeBulk.setVisibility(8);
        this.itemView.setOnClickListener(null);
        View itemView = this.itemView;
        Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
        j9.c(itemView);
    }

    public final void b(PurposeDisplayBulkAction data) {
        Intrinsics.checkNotNullParameter(data, "data");
        if (data.getShouldHideToggle()) {
            return;
        }
        final DidomiToggle didomiToggle = this.binding.b;
        didomiToggle.setCallback(null);
        if (didomiToggle.getState() != data.getState()) {
            didomiToggle.setAnimate(false);
            didomiToggle.setState(data.getState());
            didomiToggle.post(new Runnable() { // from class: io.didomi.sdk.ef
                @Override // java.lang.Runnable
                public final void run() {
                    C1851o4.a(didomiToggle);
                }
            });
        }
        didomiToggle.setVisibility(0);
        didomiToggle.setCallback(new b());
        int iOrdinal = data.getState().ordinal();
        View itemView = this.itemView;
        Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
        j9.a(itemView, data.getAccessibilityLabel(), data.g().get(iOrdinal), data.h().get(iOrdinal), data.getAccessibilityAnnounceState(), data.getAccessibilityAnnounceStateLabel(), 0, null, EnumC1716b.c, 96, null);
        if (data.getAccessibilityAnnounceState()) {
            data.a(false);
        }
    }
}
