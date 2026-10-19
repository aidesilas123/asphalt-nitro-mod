package io.didomi.drawable;

import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.v, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\r\u001a\u00020\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u000e¨\u0006\u000f"}, d2 = {"Lio/didomi/sdk/v;", "Landroid/text/style/MetricAffectingSpan;", "", TypedValues.CycleType.S_WAVE_OFFSET, "<init>", "(I)V", "Landroid/text/TextPaint;", "textPaint", "a", "(Landroid/text/TextPaint;)I", "", "updateMeasureState", "(Landroid/text/TextPaint;)V", "updateDrawState", "I", "android_release"}, mv = {1, 8, 0})
public class C1916v extends MetricAffectingSpan {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final int offset;

    public C1916v(int i) {
        this.offset = i;
    }

    private final int a(TextPaint textPaint) {
        return ((int) ((textPaint.ascent() + textPaint.descent()) / 2)) + this.offset;
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        if (textPaint != null) {
            textPaint.baselineShift += a(textPaint);
        }
    }

    @Override // android.text.style.MetricAffectingSpan
    public void updateMeasureState(TextPaint textPaint) {
        Intrinsics.checkNotNullParameter(textPaint, "textPaint");
        textPaint.baselineShift += a(textPaint);
    }
}
