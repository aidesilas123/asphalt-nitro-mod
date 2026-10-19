package io.didomi.drawable;

import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.U8;
import io.didomi.drawable.Y8;
import io.didomi.drawable.view.mobile.DidomiToggle;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J+\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0010\u0010\u0014J\u001d\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0010\u0010\u0018J\u001d\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0019\u0010\u0018J\r\u0010\u001a\u001a\u00020\u000f¢\u0006\u0004\b\u001a\u0010\u001bR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010 \u001a\u00020\u001e8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001f¨\u0006!"}, d2 = {"Lio/didomi/sdk/f9;", "Lio/didomi/sdk/g9;", "Lio/didomi/sdk/z8;", "themeProvider", "Lio/didomi/sdk/n2;", "binding", "<init>", "(Lio/didomi/sdk/z8;Lio/didomi/sdk/n2;)V", "Lio/didomi/sdk/U8$c;", "vendor", "Lio/didomi/sdk/view/mobile/DidomiToggle$a;", "toggleCallback", "Lkotlin/Function0;", "Lio/didomi/sdk/U8$c$b;", "detailedInfoCallback", "", "a", "(Lio/didomi/sdk/U8$c;Lio/didomi/sdk/view/mobile/DidomiToggle$a;Lkotlin/jvm/functions/Function0;)V", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "state", "(Lio/didomi/sdk/U8$c;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "data", "Lio/didomi/sdk/Y8$a;", "callback", "(Lio/didomi/sdk/U8$c;Lio/didomi/sdk/Y8$a;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()V", "c", "Lio/didomi/sdk/n2;", "", "()Z", "isBelowBulkAction", "android_release"}, mv = {1, 8, 0})
public final class f9 extends g9 {

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final C1839n2 binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f9(C1965z8 themeProvider, C1839n2 binding) {
        super(themeProvider, binding);
        Intrinsics.checkNotNullParameter(themeProvider, "themeProvider");
        Intrinsics.checkNotNullParameter(binding, "binding");
        this.binding = binding;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Y8.a callback, U8.Vendor data, View view) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(data, "$data");
        callback.b(data.getVendor());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(f9 this$0, Y8.a callback, U8.Vendor data, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(data, "$data");
        if (this$0.c()) {
            Y8.a.C0477a.a(callback, null, 1, null);
        } else if (data.getCanShowDetails()) {
            callback.b(data.getVendor());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(DidomiToggle this_apply) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.setAnimate(true);
    }

    private final boolean c() {
        return ((double) this.itemView.getY()) < ((double) this.itemView.getHeight()) * 0.7d;
    }

    public final void a(final U8.Vendor data, final Y8.a callback) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (data.getCanShowDetails()) {
            this.itemView.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.xd
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    f9.a(callback, data, view);
                }
            });
            this.itemView.setClickable(true);
        } else {
            this.itemView.setOnClickListener(null);
            this.itemView.setClickable(false);
        }
    }

    public final void a(U8.Vendor vendor, DidomiToggle.a toggleCallback, Function0<U8.Vendor.DetailedInfo> detailedInfoCallback) {
        EnumC1716b enumC1716b;
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        Intrinsics.checkNotNullParameter(toggleCallback, "toggleCallback");
        Intrinsics.checkNotNullParameter(detailedInfoCallback, "detailedInfoCallback");
        super.a(vendor);
        U8.Vendor.DetailedInfo detailedInfo = vendor.getDetailedInfo();
        if (detailedInfo == null) {
            detailedInfo = detailedInfoCallback.invoke();
            vendor.a(detailedInfo);
        }
        if (vendor.getCanShowDetails()) {
            this.binding.b.setColorFilter(getThemeProvider().j());
        } else {
            AppCompatImageView appCompatImageView = this.binding.b;
            Intrinsics.checkNotNullExpressionValue(appCompatImageView, "binding.imageVendorItem");
            appCompatImageView.setVisibility(8);
        }
        TextView bind$lambda$1 = this.binding.c;
        Intrinsics.checkNotNullExpressionValue(bind$lambda$1, "bind$lambda$1");
        C1955y8.a(bind$lambda$1, getThemeProvider().i().c());
        bind$lambda$1.setText(detailedInfo.getTitle());
        final DidomiToggle bind$lambda$3 = this.binding.f8710d;
        bind$lambda$3.setAnimate(false);
        bind$lambda$3.setCallback(null);
        if (detailedInfo.getState() == null) {
            Intrinsics.checkNotNullExpressionValue(bind$lambda$3, "bind$lambda$3");
            bind$lambda$3.setVisibility(8);
            enumC1716b = null;
        } else {
            bind$lambda$3.setHasMiddleState(detailedInfo.getHasMiddleState());
            DidomiToggle.b state = detailedInfo.getState();
            Intrinsics.checkNotNull(state, "null cannot be cast to non-null type io.didomi.sdk.view.mobile.DidomiToggle.State");
            bind$lambda$3.setState(state);
            Intrinsics.checkNotNullExpressionValue(bind$lambda$3, "bind$lambda$3");
            enumC1716b = null;
            j9.a(bind$lambda$3, detailedInfo.getAccessibilityTitle(), vendor.e().get(bind$lambda$3.getState().ordinal()), vendor.f().get(bind$lambda$3.getState().ordinal()), false, null, 0, Integer.valueOf(vendor.getPosition()), null, 184, null);
            bind$lambda$3.setImportantForAccessibility(1);
            bind$lambda$3.setVisibility(0);
            bind$lambda$3.setCallback(toggleCallback);
            bind$lambda$3.post(new Runnable() { // from class: io.didomi.sdk.yd
                @Override // java.lang.Runnable
                public final void run() {
                    f9.a(bind$lambda$3);
                }
            });
        }
        View itemView = this.itemView;
        String accessibilityTitle = detailedInfo.getAccessibilityTitle();
        String accessibilityActionDescription = vendor.getAccessibilityActionDescription();
        int position = vendor.getPosition();
        EnumC1716b enumC1716b2 = vendor.getCanShowDetails() ? EnumC1716b.b : enumC1716b;
        Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
        j9.a(itemView, accessibilityTitle, accessibilityActionDescription, null, false, null, 0, Integer.valueOf(position), enumC1716b2, 52, null);
    }

    public final void a(U8.Vendor vendor, DidomiToggle.b state) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        Intrinsics.checkNotNullParameter(state, "state");
        View itemView = this.itemView;
        Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
        U8.Vendor.DetailedInfo detailedInfo = vendor.getDetailedInfo();
        j9.a(itemView, detailedInfo != null ? detailedInfo.getAccessibilityTitle() : null, vendor.f().get(state.ordinal()));
    }

    public final void b(final U8.Vendor data, final Y8.a callback) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.itemView.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.zd
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                f9.a(this.a, callback, data, view);
            }
        });
    }

    public final void d() {
        this.binding.f8710d.setClickable(!c());
    }
}
