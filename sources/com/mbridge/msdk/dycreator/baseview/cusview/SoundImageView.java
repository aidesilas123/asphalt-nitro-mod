package com.mbridge.msdk.dycreator.baseview.cusview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.mbridge.msdk.foundation.tools.t;

/* JADX INFO: loaded from: classes4.dex */
public class SoundImageView extends ImageView {
    private boolean a;

    public SoundImageView(Context context) {
        super(context);
        this.a = true;
    }

    public SoundImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = true;
    }

    public SoundImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = true;
    }

    public boolean getStatus() {
        return this.a;
    }

    public void setSoundStatus(boolean z) {
        this.a = z;
        if (z) {
            setImageResource(t.a(getContext(), "mbridge_reward_sound_open", "drawable"));
        } else {
            setImageResource(t.a(getContext(), "mbridge_reward_sound_close", "drawable"));
        }
    }
}
