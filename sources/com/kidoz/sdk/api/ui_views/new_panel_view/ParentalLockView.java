package com.kidoz.sdk.api.ui_views.new_panel_view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public class ParentalLockView extends LinearLayout {
    public ParentalLockView(Context context) {
        super(context);
        init();
    }

    public ParentalLockView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public ParentalLockView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    public ParentalLockView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        init();
    }

    private void init() {
        layout();
    }

    private void layout() {
        setBackgroundColor(-16776961);
    }
}
