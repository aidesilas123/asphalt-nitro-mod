package io.didomi.drawable;

import android.view.KeyEvent;
import android.view.View;
import io.didomi.drawable.K7;
import io.didomi.drawable.V7;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001d\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\r¨\u0006\u000e"}, d2 = {"Lio/didomi/sdk/O7;", "Lio/didomi/sdk/Y7;", "Lio/didomi/sdk/b2;", "binding", "<init>", "(Lio/didomi/sdk/b2;)V", "Lio/didomi/sdk/V7$d;", "dataCategory", "Lio/didomi/sdk/K7$a;", "callback", "", "a", "(Lio/didomi/sdk/V7$d;Lio/didomi/sdk/K7$a;)V", "Lio/didomi/sdk/b2;", "android_release"}, mv = {1, 8, 0})
public final class O7 extends Y7 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final C1719b2 binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public O7(C1719b2 binding) {
        super(binding);
        Intrinsics.checkNotNullParameter(binding, "binding");
        this.binding = binding;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(K7.a callback, V7.DataCategory dataCategory, View view) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(dataCategory, "$dataCategory");
        callback.a(dataCategory.getElementId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean a(View this_apply, View view, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        if (i != 22 || keyEvent.getAction() != 1) {
            return false;
        }
        this_apply.callOnClick();
        return true;
    }

    public final void a(final V7.DataCategory dataCategory, final K7.a callback) {
        Intrinsics.checkNotNullParameter(dataCategory, "dataCategory");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.binding.b.setText(dataCategory.getText());
        final View view = this.itemView;
        view.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.dc
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                O7.a(callback, dataCategory, view2);
            }
        });
        view.setOnKeyListener(new View.OnKeyListener() { // from class: io.didomi.sdk.ec
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view2, int i, KeyEvent keyEvent) {
                return O7.a(view, view2, i, keyEvent);
            }
        });
    }
}
