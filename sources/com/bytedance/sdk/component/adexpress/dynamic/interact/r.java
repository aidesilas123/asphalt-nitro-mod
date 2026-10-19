package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.layout.TTHandWriggleGuide;
import com.bytedance.sdk.component.adexpress.widget.WriggleGuideAnimationView;
import com.bytedance.sdk.component.adexpress.widget.WriggleGuideView;
import com.bytedance.sdk.component.utils.s;

/* JADX INFO: compiled from: WriggleGuideInteract.java */
/* JADX INFO: loaded from: classes.dex */
public class r implements g<WriggleGuideAnimationView> {
    private WriggleGuideAnimationView a;
    private Context b;
    private DynamicBaseWidget c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.component.adexpress.dynamic.b.g f789d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f790e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f791f;

    public r(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.b.g gVar, String str, int i) {
        this.b = context;
        this.c = dynamicBaseWidget;
        this.f789d = gVar;
        this.f790e = str;
        this.f791f = i;
        e();
    }

    private void e() {
        int iN = this.f789d.N();
        if ("18".equals(this.f790e)) {
            WriggleGuideAnimationView wriggleGuideAnimationView = new WriggleGuideAnimationView(this.b, new TTHandWriggleGuide(this.b), this.f791f);
            this.a = wriggleGuideAnimationView;
            if (wriggleGuideAnimationView.getWriggleLayout() != null) {
                this.a.getWriggleLayout().setOnClickListener((View.OnClickListener) this.c.getDynamicClickListener());
            }
            if (this.a.getTopTextView() != null) {
                this.a.getTopTextView().setText(s.b(this.b, "tt_splash_wriggle_top_text_style_17"));
            }
        } else {
            this.a = new WriggleGuideAnimationView(this.b, new TTHandWriggleGuide(this.b), this.f791f);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 81;
        this.a.setTranslationY(-((int) com.bytedance.sdk.component.adexpress.c.e.a(this.b, iN)));
        this.a.setLayoutParams(layoutParams);
        this.a.setShakeText(this.f789d.R());
        this.a.setClipChildren(false);
        final WriggleGuideView wriggleProgressIv = this.a.getWriggleProgressIv();
        this.a.setOnShakeViewListener(new WriggleGuideAnimationView.a() { // from class: com.bytedance.sdk.component.adexpress.dynamic.interact.r.1
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
    public WriggleGuideAnimationView c() {
        return this.a;
    }
}
