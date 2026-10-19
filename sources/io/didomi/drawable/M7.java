package io.didomi.drawable;

import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;
import io.didomi.drawable.K7;
import io.didomi.drawable.V7;
import io.didomi.drawable.view.ctv.DidomiTVSwitch;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001d\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\r¨\u0006\u000e"}, d2 = {"Lio/didomi/sdk/M7;", "Lio/didomi/sdk/Y7;", "Lio/didomi/sdk/c2;", "binding", "<init>", "(Lio/didomi/sdk/c2;)V", "Lio/didomi/sdk/V7$b;", "consent", "Lio/didomi/sdk/K7$a;", "callback", "", "a", "(Lio/didomi/sdk/V7$b;Lio/didomi/sdk/K7$a;)V", "Lio/didomi/sdk/c2;", "android_release"}, mv = {1, 8, 0})
public final class M7 extends Y7 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final C1729c2 binding;

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"io/didomi/sdk/M7$a", "Lio/didomi/sdk/view/ctv/DidomiTVSwitch$a;", "Lio/didomi/sdk/view/ctv/DidomiTVSwitch;", "switch", "", "isChecked", "", "a", "(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;Z)V", "android_release"}, mv = {1, 8, 0})
    public static final class a implements DidomiTVSwitch.a {
        final /* synthetic */ V7.Consent b;
        final /* synthetic */ K7.a c;

        a(V7.Consent consent, K7.a aVar) {
            this.b = consent;
            this.c = aVar;
        }

        @Override // io.didomi.sdk.view.ctv.DidomiTVSwitch.a
        public void a(DidomiTVSwitch didomiTVSwitch, boolean isChecked) {
            Intrinsics.checkNotNullParameter(didomiTVSwitch, "switch");
            TextView textView = M7.this.binding.f8522d;
            V7.Consent consent = this.b;
            textView.setText(isChecked ? consent.getStatusOn() : consent.getStatusOff());
            this.c.a(isChecked);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public M7(C1729c2 binding) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean a(K7.a callback, View view, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        if (i != 22 || keyEvent.getAction() != 1) {
            return false;
        }
        callback.a();
        return true;
    }

    public final void a(V7.Consent consent, final K7.a callback) {
        Intrinsics.checkNotNullParameter(consent, "consent");
        Intrinsics.checkNotNullParameter(callback, "callback");
        C1729c2 c1729c2 = this.binding;
        c1729c2.f8523e.setText(consent.getText());
        c1729c2.f8522d.setText(consent.getIsChecked() ? consent.getStatusOn() : consent.getStatusOff());
        final DidomiTVSwitch didomiTVSwitch = this.binding.c;
        didomiTVSwitch.setCallback(null);
        didomiTVSwitch.setAnimate(false);
        didomiTVSwitch.setChecked(consent.getIsChecked());
        didomiTVSwitch.setCallback(new a(consent, callback));
        this.itemView.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.ac
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                M7.a(didomiTVSwitch, view);
            }
        });
        didomiTVSwitch.post(new Runnable() { // from class: io.didomi.sdk.zb
            @Override // java.lang.Runnable
            public final void run() {
                M7.a(didomiTVSwitch);
            }
        });
        this.itemView.setOnKeyListener(new View.OnKeyListener() { // from class: io.didomi.sdk.yb
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i, KeyEvent keyEvent) {
                return M7.a(callback, view, i, keyEvent);
            }
        });
    }
}
