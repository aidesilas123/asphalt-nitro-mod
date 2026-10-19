package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.layout.TTHandShake;
import com.bytedance.sdk.component.adexpress.layout.TTHandShake16;
import com.bytedance.sdk.component.adexpress.widget.ShakeAnimationView;

/* JADX INFO: compiled from: ShakeInteract.java */
/* JADX INFO: loaded from: classes.dex */
public class m implements g<ShakeAnimationView> {
    private ShakeAnimationView a;
    private Context b;
    private DynamicBaseWidget c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.component.adexpress.dynamic.b.g f781d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f782e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f783f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f784g;
    private int h;

    public m(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.b.g gVar, String str, int i, int i2, int i3) {
        this.b = context;
        this.c = dynamicBaseWidget;
        this.f781d = gVar;
        this.f782e = str;
        this.f783f = i;
        this.f784g = i2;
        this.h = i3;
        e();
    }

    private void e() {
        if ("16".equals(this.f782e)) {
            ShakeAnimationView shakeAnimationView = new ShakeAnimationView(this.b, new TTHandShake16(this.b), this.f783f, this.f784g, this.h);
            this.a = shakeAnimationView;
            if (shakeAnimationView.getShakeLayout() != null) {
                this.a.getShakeLayout().setOnClickListener((View.OnClickListener) this.c.getDynamicClickListener());
            }
        } else {
            this.a = new ShakeAnimationView(this.b, new TTHandShake(this.b), this.f783f, this.f784g, this.h);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 81;
        layoutParams.bottomMargin = (int) com.bytedance.sdk.component.adexpress.c.e.a(this.b, 80.0f);
        this.a.setLayoutParams(layoutParams);
        this.a.setShakeText(this.f781d.R());
        this.a.setClipChildren(false);
        this.a.setOnShakeViewListener(new ShakeAnimationView.a() { // from class: com.bytedance.sdk.component.adexpress.dynamic.interact.m.1
        });
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.g
    public void a() {
        this.a.a();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.g
    public void b() {
        this.a.clearAnimation();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.g
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public ShakeAnimationView c() {
        return this.a;
    }
}
