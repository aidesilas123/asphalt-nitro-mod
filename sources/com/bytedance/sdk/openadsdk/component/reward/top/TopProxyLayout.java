package com.bytedance.sdk.openadsdk.component.reward.top;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.utils.i;

/* JADX INFO: loaded from: classes2.dex */
public class TopProxyLayout extends View implements a<TopProxyLayout> {
    private a<TopProxyLayout> a;

    public TopProxyLayout(Context context) {
        this(context, null);
    }

    public TopProxyLayout(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TopProxyLayout(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setVisibility(8);
        setWillNotDraw(true);
    }

    private void a(View view, ViewGroup viewGroup) {
        int iIndexOfChild = viewGroup.indexOfChild(this);
        viewGroup.removeViewInLayout(this);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            viewGroup.addView(view, iIndexOfChild, layoutParams);
        } else {
            viewGroup.addView(view, iIndexOfChild);
        }
        if (view != null) {
            view.setId(i.bs);
        }
    }

    public TopProxyLayout a(boolean z, @NonNull q qVar) {
        TopLayoutDislike2 topLayoutDislike2A = new TopLayoutDislike2(getContext()).a(z, qVar);
        this.a = topLayoutDislike2A;
        ViewParent parent = getParent();
        if (parent != null && (parent instanceof ViewGroup)) {
            a(topLayoutDislike2A, (ViewGroup) parent);
        }
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void a() {
        a<TopProxyLayout> aVar = this.a;
        if (aVar != null) {
            aVar.a();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void a(CharSequence charSequence, CharSequence charSequence2) {
        a<TopProxyLayout> aVar = this.a;
        if (aVar != null) {
            aVar.a(charSequence, charSequence2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void b() {
        a<TopProxyLayout> aVar = this.a;
        if (aVar != null) {
            aVar.b();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void c() {
        a<TopProxyLayout> aVar = this.a;
        if (aVar != null) {
            aVar.c();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void d() {
        a<TopProxyLayout> aVar = this.a;
        if (aVar != null) {
            aVar.d();
        }
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void e() {
        a<TopProxyLayout> aVar = this.a;
        if (aVar != null) {
            aVar.e();
        }
    }

    public View getITopLayout() {
        Object obj = this.a;
        if (obj instanceof View) {
            return (View) obj;
        }
        return null;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void setListener(b bVar) {
        a<TopProxyLayout> aVar = this.a;
        if (aVar != null) {
            aVar.setListener(bVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void setShowDislike(boolean z) {
        a<TopProxyLayout> aVar = this.a;
        if (aVar != null) {
            aVar.setShowDislike(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void setShowSkip(boolean z) {
        a<TopProxyLayout> aVar = this.a;
        if (aVar != null) {
            aVar.setShowSkip(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void setShowSound(boolean z) {
        a<TopProxyLayout> aVar = this.a;
        if (aVar != null) {
            aVar.setShowSound(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void setSkipEnable(boolean z) {
        a<TopProxyLayout> aVar = this.a;
        if (aVar != null) {
            aVar.setSkipEnable(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void setSkipText(CharSequence charSequence) {
        a<TopProxyLayout> aVar = this.a;
        if (aVar != null) {
            aVar.setSkipText(charSequence);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.a
    public void setSoundMute(boolean z) {
        a<TopProxyLayout> aVar = this.a;
        if (aVar != null) {
            aVar.setSoundMute(z);
        }
    }
}
