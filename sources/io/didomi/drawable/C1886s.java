package io.didomi.drawable;

import android.text.Layout;
import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.text.style.URLSpan;
import android.view.MotionEvent;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.s, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002¢\u0006\u0004\b\u0006\u0010\u0007J'\u0010\u000e\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fR \u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lio/didomi/sdk/s;", "Landroid/text/method/LinkMovementMethod;", "Lkotlin/Function1;", "", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "<init>", "(Lkotlin/jvm/functions/Function1;)V", "Landroid/widget/TextView;", "widget", "Landroid/text/Spannable;", "buffer", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "onTouchEvent", "(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z", "a", "Lkotlin/jvm/functions/Function1;", "android_release"}, mv = {1, 8, 0})
public final class C1886s extends LinkMovementMethod {
    private final Function1<String, Boolean> a;

    /* JADX WARN: Multi-variable type inference failed */
    public C1886s(Function1<? super String, Boolean> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.a = listener;
    }

    @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
    public boolean onTouchEvent(TextView widget, Spannable buffer, MotionEvent event) {
        Intrinsics.checkNotNullParameter(widget, "widget");
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getAction() != 1) {
            return super.onTouchEvent(widget, buffer, event);
        }
        int x = (((int) event.getX()) - widget.getTotalPaddingStart()) + widget.getScrollX();
        int y = (((int) event.getY()) - widget.getTotalPaddingTop()) + widget.getScrollY();
        Layout layout = widget.getLayout();
        int offsetForHorizontal = layout.getOffsetForHorizontal(layout.getLineForVertical(y), x);
        URLSpan[] link = (URLSpan[]) buffer.getSpans(offsetForHorizontal, offsetForHorizontal, URLSpan.class);
        Intrinsics.checkNotNullExpressionValue(link, "link");
        if (link.length == 0) {
            return super.onTouchEvent(widget, buffer, event);
        }
        String url = link[0].getURL();
        Function1<String, Boolean> function1 = this.a;
        Intrinsics.checkNotNullExpressionValue(url, "url");
        if (function1.invoke(url).booleanValue()) {
            return true;
        }
        return super.onTouchEvent(widget, buffer, event);
    }
}
