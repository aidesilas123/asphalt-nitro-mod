package io.didomi.drawable;

import android.view.View;
import android.widget.TextView;
import io.didomi.drawable.AbstractC1775g8;
import io.didomi.drawable.view.ctv.DidomiTVSwitch;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.v;

/* JADX INFO: renamed from: io.didomi.sdk.h8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J8\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00062!\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00110\t¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\r0\b¢\u0006\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0011¨\u0006\u0012"}, d2 = {"Lio/didomi/sdk/h8;", "Lio/didomi/sdk/m8;", "Lio/didomi/sdk/i2;", "binding", "<init>", "(Lio/didomi/sdk/i2;)V", "Lio/didomi/sdk/g8$g;", "vendor", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "isChecked", "", "callback", "a", "(Lio/didomi/sdk/g8$g;Lkotlin/jvm/functions/Function1;)V", "Lio/didomi/sdk/i2;", "android_release"}, mv = {1, 8, 0})
public final class C1785h8 extends AbstractC1835m8 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final C1789i2 binding;

    /* JADX INFO: renamed from: io.didomi.sdk.h8$a */
    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"io/didomi/sdk/h8$a", "Lio/didomi/sdk/view/ctv/DidomiTVSwitch$a;", "Lio/didomi/sdk/view/ctv/DidomiTVSwitch;", "switch", "", "isChecked", "", "a", "(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;Z)V", "android_release"}, mv = {1, 8, 0})
    public static final class a implements DidomiTVSwitch.a {
        final /* synthetic */ Function1<Boolean, v> a;

        /* JADX WARN: Multi-variable type inference failed */
        a(Function1<? super Boolean, v> function1) {
            this.a = function1;
        }

        @Override // io.didomi.sdk.view.ctv.DidomiTVSwitch.a
        public void a(DidomiTVSwitch didomiTVSwitch, boolean isChecked) {
            Intrinsics.checkNotNullParameter(didomiTVSwitch, "switch");
            this.a.invoke(Boolean.valueOf(isChecked));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1785h8(C1789i2 binding) {
        super(binding);
        Intrinsics.checkNotNullParameter(binding, "binding");
        this.binding = binding;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(DidomiTVSwitch this_apply) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.setAnimate(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(DidomiTVSwitch this_apply, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.callOnClick();
    }

    public final void a(AbstractC1775g8.Vendor vendor, Function1<? super Boolean, v> callback) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.binding.f8583g.setText(vendor.getTitle());
        TextView textView = this.binding.f8581e;
        Intrinsics.checkNotNullExpressionValue(textView, "binding.textCtvVendorItemIabtcfTag");
        textView.setVisibility(vendor.getIsIAB() ? 0 : 8);
        if (!vendor.getHasState()) {
            TextView textView2 = this.binding.f8582f;
            Intrinsics.checkNotNullExpressionValue(textView2, "binding.textCtvVendorItemStatus");
            textView2.setVisibility(8);
            DidomiTVSwitch bind$lambda$4 = this.binding.f8580d;
            bind$lambda$4.setEnabled(false);
            Intrinsics.checkNotNullExpressionValue(bind$lambda$4, "bind$lambda$4");
            bind$lambda$4.setVisibility(4);
            bind$lambda$4.setCallback(null);
            return;
        }
        C1789i2 c1789i2 = this.binding;
        c1789i2.f8582f.setText(vendor.getStatus());
        TextView textCtvVendorItemStatus = c1789i2.f8582f;
        Intrinsics.checkNotNullExpressionValue(textCtvVendorItemStatus, "textCtvVendorItemStatus");
        textCtvVendorItemStatus.setVisibility(0);
        final DidomiTVSwitch bind$lambda$3 = this.binding.f8580d;
        bind$lambda$3.setAnimate(false);
        bind$lambda$3.setEnabled(true);
        Intrinsics.checkNotNullExpressionValue(bind$lambda$3, "bind$lambda$3");
        bind$lambda$3.setVisibility(0);
        bind$lambda$3.setCallback(null);
        bind$lambda$3.setChecked(vendor.getIsChecked());
        bind$lambda$3.setCallback(new a(callback));
        this.binding.getRoot().setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.ge
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C1785h8.a(bind$lambda$3, view);
            }
        });
        bind$lambda$3.post(new Runnable() { // from class: io.didomi.sdk.he
            @Override // java.lang.Runnable
            public final void run() {
                C1785h8.a(bind$lambda$3);
            }
        });
    }
}
