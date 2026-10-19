package com.hyprmx.android.sdk.utility;

import android.text.Layout;
import android.text.Selection;
import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.view.MotionEvent;
import android.widget.TextView;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class d extends LinkMovementMethod {
    public final t0 a;

    public d(t0 urlHandler) {
        Intrinsics.checkNotNullParameter(urlHandler, "urlHandler");
        this.a = urlHandler;
    }

    @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
    public final boolean onTouchEvent(TextView widget, Spannable buffer, MotionEvent event) {
        Intrinsics.checkNotNullParameter(widget, "widget");
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        Intrinsics.checkNotNullParameter(event, "event");
        int action = event.getAction();
        if (action == 0 || action == 1) {
            int x = (int) event.getX();
            int y = (int) event.getY();
            int totalPaddingLeft = x - widget.getTotalPaddingLeft();
            int totalPaddingTop = y - widget.getTotalPaddingTop();
            int scrollX = widget.getScrollX() + totalPaddingLeft;
            int scrollY = widget.getScrollY() + totalPaddingTop;
            Layout layout = widget.getLayout();
            int offsetForHorizontal = layout.getOffsetForHorizontal(layout.getLineForVertical(scrollY), scrollX);
            ClickableSpan[] links = (ClickableSpan[]) buffer.getSpans(offsetForHorizontal, offsetForHorizontal, ClickableSpan.class);
            Intrinsics.checkNotNullExpressionValue(links, "links");
            if (!(links.length == 0)) {
                if (action == 0) {
                    Selection.setSelection(buffer, buffer.getSpanStart(links[0]), buffer.getSpanEnd(links[0]));
                } else if (action == 1) {
                    ClickableSpan clickableSpan = links[0];
                    if (clickableSpan instanceof URLSpan) {
                        t0 t0Var = this.a;
                        Intrinsics.checkNotNull(clickableSpan, "null cannot be cast to non-null type android.text.style.URLSpan");
                        String url = ((URLSpan) clickableSpan).getURL();
                        Intrinsics.checkNotNullExpressionValue(url, "links[0] as URLSpan).url");
                        t0Var.onLinkedClicked(url);
                    }
                }
                return true;
            }
            Selection.removeSelection(buffer);
        }
        return super.onTouchEvent(widget, buffer, event);
    }
}
