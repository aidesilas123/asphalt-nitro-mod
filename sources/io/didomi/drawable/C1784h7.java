package io.didomi.drawable;

import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import com.json.o2;
import io.didomi.drawable.AbstractC1943x6;
import io.didomi.drawable.C1724b7;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.h7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J%\u0010\r\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000f¨\u0006\u0010"}, d2 = {"Lio/didomi/sdk/h7;", "Lio/didomi/sdk/i7;", "Lio/didomi/sdk/H1;", "binding", "<init>", "(Lio/didomi/sdk/H1;)V", "Lio/didomi/sdk/b7$a;", "callback", "", o2.h.L, "Lio/didomi/sdk/x6$f;", "vendorsCount", "", "a", "(Lio/didomi/sdk/b7$a;ILio/didomi/sdk/x6$f;)V", "Lio/didomi/sdk/H1;", "android_release"}, mv = {1, 8, 0})
public final class C1784h7 extends AbstractC1794i7 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final H1 binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1784h7(H1 binding) {
        super(binding);
        Intrinsics.checkNotNullParameter(binding, "binding");
        this.binding = binding;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C1724b7.a callback, int i, View view, boolean z) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        if (z) {
            callback.a(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C1724b7.a callback, AbstractC1943x6.VendorsCount vendorsCount, View view) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(vendorsCount, "$vendorsCount");
        callback.a(vendorsCount.getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean a(C1724b7.a callback, AbstractC1943x6.VendorsCount vendorsCount, View view, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(vendorsCount, "$vendorsCount");
        if (i != 22 || keyEvent.getAction() != 1) {
            return false;
        }
        callback.a(vendorsCount.getType());
        return true;
    }

    public final void a(final C1724b7.a callback, final int position, final AbstractC1943x6.VendorsCount vendorsCount) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(vendorsCount, "vendorsCount");
        this.binding.c.setText(vendorsCount.getTitle());
        Button button = this.binding.b;
        button.setText(vendorsCount.getText());
        button.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: io.didomi.sdk.fe
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                C1784h7.a(callback, position, view, z);
            }
        });
        button.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.ee
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C1784h7.a(callback, vendorsCount, view);
            }
        });
        button.setOnKeyListener(new View.OnKeyListener() { // from class: io.didomi.sdk.de
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i, KeyEvent keyEvent) {
                return C1784h7.a(callback, vendorsCount, view, i, keyEvent);
            }
        });
    }
}
