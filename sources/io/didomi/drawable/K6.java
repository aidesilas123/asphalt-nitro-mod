package io.didomi.drawable;

import android.view.View;
import io.didomi.drawable.J6;
import io.didomi.drawable.view.ctv.DidomiTVSwitch;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J8\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00062!\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00110\t¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\r0\b¢\u0006\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0011¨\u0006\u0012"}, d2 = {"Lio/didomi/sdk/K6;", "Lio/didomi/sdk/M6;", "Lio/didomi/sdk/O1;", "binding", "<init>", "(Lio/didomi/sdk/O1;)V", "Lio/didomi/sdk/J6$i;", "purpose", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "isChecked", "", "callback", "a", "(Lio/didomi/sdk/J6$i;Lkotlin/jvm/functions/Function1;)V", "Lio/didomi/sdk/O1;", "android_release"}, mv = {1, 8, 0})
public final class K6 extends M6 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final O1 binding;

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"io/didomi/sdk/K6$a", "Lio/didomi/sdk/view/ctv/DidomiTVSwitch$a;", "Lio/didomi/sdk/view/ctv/DidomiTVSwitch;", "switch", "", "isChecked", "", "a", "(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;Z)V", "android_release"}, mv = {1, 8, 0})
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
    public K6(O1 binding) {
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

    public final void a(J6.Purpose purpose, Function1<? super Boolean, v> callback) {
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        Intrinsics.checkNotNullParameter(callback, "callback");
        O1 o1 = this.binding;
        o1.f8314e.setText(purpose.getTitle());
        o1.f8313d.setText(purpose.getSubtitle());
        final DidomiTVSwitch bind$lambda$3 = this.binding.c;
        bind$lambda$3.setCallback(null);
        bind$lambda$3.setAnimate(false);
        bind$lambda$3.setChecked(purpose.getIsChecked());
        if (purpose.getPurpose().isEssential()) {
            bind$lambda$3.setEnabled(false);
            Intrinsics.checkNotNullExpressionValue(bind$lambda$3, "bind$lambda$3");
            bind$lambda$3.setVisibility(4);
        } else {
            bind$lambda$3.setEnabled(true);
            Intrinsics.checkNotNullExpressionValue(bind$lambda$3, "bind$lambda$3");
            bind$lambda$3.setVisibility(0);
            bind$lambda$3.setCallback(new a(callback));
            this.binding.getRoot().setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.wa
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    K6.a(bind$lambda$3, view);
                }
            });
            bind$lambda$3.post(new Runnable() { // from class: io.didomi.sdk.va
                @Override // java.lang.Runnable
                public final void run() {
                    K6.a(bind$lambda$3);
                }
            });
        }
    }
}
