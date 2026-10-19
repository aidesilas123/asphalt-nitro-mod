package io.didomi.drawable;

import android.view.View;
import io.didomi.drawable.J6;
import io.didomi.drawable.view.ctv.DidomiTVSwitch;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J8\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00062!\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00110\t¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\r0\b¢\u0006\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0011¨\u0006\u0012"}, d2 = {"Lio/didomi/sdk/A6;", "Lio/didomi/sdk/M6;", "Lio/didomi/sdk/I1;", "binding", "<init>", "(Lio/didomi/sdk/I1;)V", "Lio/didomi/sdk/J6$c;", "bulk", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "isChecked", "", "callback", "a", "(Lio/didomi/sdk/J6$c;Lkotlin/jvm/functions/Function1;)V", "Lio/didomi/sdk/I1;", "android_release"}, mv = {1, 8, 0})
public final class A6 extends M6 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final I1 binding;

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"io/didomi/sdk/A6$a", "Lio/didomi/sdk/view/ctv/DidomiTVSwitch$a;", "Lio/didomi/sdk/view/ctv/DidomiTVSwitch;", "switch", "", "isChecked", "", "a", "(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;Z)V", "android_release"}, mv = {1, 8, 0})
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
    public A6(I1 binding) {
        super(binding);
        Intrinsics.checkNotNullParameter(binding, "binding");
        this.binding = binding;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(I1 this_apply, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.b.callOnClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(DidomiTVSwitch this_apply) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.setAnimate(true);
    }

    public final void a(J6.Bulk bulk, Function1<? super Boolean, v> callback) {
        Intrinsics.checkNotNullParameter(bulk, "bulk");
        Intrinsics.checkNotNullParameter(callback, "callback");
        final I1 i1 = this.binding;
        i1.f8243d.setText(bulk.getTitle());
        i1.c.setText(bulk.getStatus());
        final DidomiTVSwitch didomiTVSwitch = i1.b;
        didomiTVSwitch.setCallback(null);
        didomiTVSwitch.setAnimate(false);
        didomiTVSwitch.setChecked(bulk.getIsChecked());
        didomiTVSwitch.setCallback(new a(callback));
        didomiTVSwitch.post(new Runnable() { // from class: io.didomi.sdk.p9
            @Override // java.lang.Runnable
            public final void run() {
                A6.a(didomiTVSwitch);
            }
        });
        i1.getRoot().setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.o9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                A6.a(i1, view);
            }
        });
    }
}
