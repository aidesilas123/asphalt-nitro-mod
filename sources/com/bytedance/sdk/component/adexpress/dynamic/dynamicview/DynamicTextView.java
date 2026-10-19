package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.dynamic.b.h;
import com.bytedance.sdk.component.adexpress.dynamic.c.j;
import com.bytedance.sdk.component.adexpress.widget.AnimationText;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.component.utils.s;
import com.facebook.share.internal.ShareConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.text.DecimalFormat;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public class DynamicTextView extends DynamicBaseWidgetImp {
    public DynamicTextView(Context context, DynamicRootView dynamicRootView, h hVar) {
        super(context, dynamicRootView, hVar);
        this.h += 6;
        if (this.l.H()) {
            AnimationText animationText = new AnimationText(context, this.l.g(), this.l.e(), 1, this.l.h());
            this.o = animationText;
            animationText.setMaxLines(1);
        } else {
            TextView textView = new TextView(context);
            this.o = textView;
            textView.setIncludeFontPadding(false);
        }
        this.o.setTag(Integer.valueOf(getClickArea()));
        addView(this.o, getWidgetLayoutParams());
    }

    private boolean a() {
        DynamicRootView dynamicRootView = this.n;
        return (dynamicRootView == null || dynamicRootView.getRenderRequest() == null || this.n.getRenderRequest().j() == 4) ? false : true;
    }

    private void j() {
        int iA;
        if (TextUtils.equals(this.m.j().b(), ShareConstants.FEED_SOURCE_PARAM) || TextUtils.equals(this.m.j().b(), "title") || TextUtils.equals(this.m.j().b(), "text_star")) {
            int[] iArrB = j.b(this.l.f(), this.l.e(), true);
            int iA2 = (int) com.bytedance.sdk.component.adexpress.c.e.a(getContext(), this.l.b());
            int iA3 = (int) com.bytedance.sdk.component.adexpress.c.e.a(getContext(), this.l.c());
            int iA4 = (int) com.bytedance.sdk.component.adexpress.c.e.a(getContext(), this.l.d());
            int iA5 = (int) com.bytedance.sdk.component.adexpress.c.e.a(getContext(), this.l.a());
            int iMin = Math.min(iA2, iA5);
            if (TextUtils.equals(this.m.j().b(), ShareConstants.FEED_SOURCE_PARAM) && (iA = ((this.h - ((int) com.bytedance.sdk.component.adexpress.c.e.a(getContext(), this.l.e()))) - iA2) - iA5) > 1 && iA <= iMin * 2) {
                int i = iA / 2;
                this.o.setPadding(iA3, iA2 - i, iA4, iA5 - (iA - i));
                return;
            }
            int i2 = (((iArrB[1] + iA2) + iA5) - this.h) - 2;
            if (i2 <= 1) {
                return;
            }
            if (i2 <= iMin * 2) {
                int i3 = i2 / 2;
                this.o.setPadding(iA3, iA2 - i3, iA4, iA5 - (i2 - i3));
            } else if (i2 > iA2 + iA5) {
                final int i4 = (i2 - iA2) - iA5;
                this.o.setPadding(iA3, 0, iA4, 0);
                if (i4 <= ((int) com.bytedance.sdk.component.adexpress.c.e.a(getContext(), 1.0f)) + 1) {
                    ((TextView) this.o).setTextSize(this.l.e() - 1.0f);
                } else if (i4 <= (((int) com.bytedance.sdk.component.adexpress.c.e.a(getContext(), 1.0f)) + 1) * 2) {
                    ((TextView) this.o).setTextSize(this.l.e() - 2.0f);
                } else {
                    post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicTextView.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                ViewGroup.LayoutParams layoutParams = DynamicTextView.this.o.getLayoutParams();
                                DynamicTextView dynamicTextView = DynamicTextView.this;
                                layoutParams.height = dynamicTextView.h + i4;
                                dynamicTextView.o.setLayoutParams(layoutParams);
                                DynamicTextView.this.o.setTranslationY(-i4);
                                ((ViewGroup) DynamicTextView.this.o.getParent()).setClipChildren(false);
                                ((ViewGroup) DynamicTextView.this.o.getParent().getParent()).setClipChildren(false);
                            } catch (Throwable unused) {
                            }
                        }
                    });
                }
            } else if (iA2 > iA5) {
                this.o.setPadding(iA3, iA2 - (i2 - iMin), iA4, iA5 - iMin);
            } else {
                this.o.setPadding(iA3, iA2 - iMin, iA4, iA5 - (i2 - iMin));
            }
        }
        if (!TextUtils.equals(this.m.j().b(), "fillButton") || Build.VERSION.SDK_INT < 17) {
            return;
        }
        this.o.setTextAlignment(2);
        ((TextView) this.o).setGravity(17);
    }

    private void k() {
        if (this.o instanceof AnimationText) {
            String text = getText();
            ArrayList arrayList = new ArrayList();
            try {
                JSONArray jSONArray = new JSONArray(text);
                for (int i = 0; i < jSONArray.length(); i++) {
                    arrayList.add(jSONArray.optString(i));
                }
            } catch (JSONException e2) {
                e2.printStackTrace();
                arrayList.add(text);
            }
            ((AnimationText) this.o).setMaxLines(1);
            ((AnimationText) this.o).setTextColor(this.l.g());
            ((AnimationText) this.o).setTextSize(this.l.e());
            ((AnimationText) this.o).setAnimationText(arrayList);
            ((AnimationText) this.o).setAnimationType(this.l.J());
            ((AnimationText) this.o).setAnimationDuration(this.l.I() * 1000);
            ((AnimationText) this.o).a();
        }
    }

    public void a(TextView textView, int i, Context context, String str) {
        textView.setText("(" + String.format(s.a(context, str), Integer.valueOf(i)) + ")");
        if (i == -1) {
            textView.setVisibility(8);
        }
    }

    public String getText() {
        String strF = this.l.f();
        if (TextUtils.isEmpty(strF)) {
            if (!com.bytedance.sdk.component.adexpress.d.b() && TextUtils.equals(this.m.j().b(), "text_star")) {
                strF = CampaignEx.CLICKMODE_ON;
            }
            if (!com.bytedance.sdk.component.adexpress.d.b() && TextUtils.equals(this.m.j().b(), "score-count")) {
                strF = "6870";
            }
        }
        return (TextUtils.equals(this.m.j().b(), "title") || TextUtils.equals(this.m.j().b(), "subtitle")) ? strF.replace("\n", "") : strF;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.d
    public boolean i() {
        int i;
        super.i();
        if (TextUtils.isEmpty(getText())) {
            this.o.setVisibility(4);
            return true;
        }
        if (this.l.H()) {
            k();
            return true;
        }
        ((TextView) this.o).setText(this.l.f());
        if (Build.VERSION.SDK_INT >= 17) {
            ((TextView) this.o).setTextDirection(5);
            this.o.setTextAlignment(this.l.h());
        }
        ((TextView) this.o).setTextColor(this.l.g());
        ((TextView) this.o).setTextSize(this.l.e());
        if (this.l.v()) {
            int iW = this.l.w();
            if (iW > 0) {
                ((TextView) this.o).setLines(iW);
                ((TextView) this.o).setEllipsize(TextUtils.TruncateAt.END);
            }
        } else {
            ((TextView) this.o).setMaxLines(1);
            ((TextView) this.o).setGravity(17);
            ((TextView) this.o).setEllipsize(TextUtils.TruncateAt.END);
        }
        h hVar = this.m;
        if (hVar != null && hVar.j() != null) {
            if (com.bytedance.sdk.component.adexpress.d.b() && a() && (TextUtils.equals(this.m.j().b(), "text_star") || TextUtils.equals(this.m.j().b(), "score-count") || TextUtils.equals(this.m.j().b(), "score-count-type-1") || TextUtils.equals(this.m.j().b(), "score-count-type-2"))) {
                setVisibility(8);
                return true;
            }
            if (TextUtils.equals(this.m.j().b(), "score-count") || TextUtils.equals(this.m.j().b(), "score-count-type-2")) {
                try {
                    try {
                        i = Integer.parseInt(getText());
                    } catch (NumberFormatException unused) {
                        i = -1;
                    }
                    if (i < 0) {
                        if (com.bytedance.sdk.component.adexpress.d.b()) {
                            setVisibility(8);
                            return true;
                        }
                        this.o.setVisibility(0);
                    }
                    if (TextUtils.equals(this.m.j().b(), "score-count-type-2")) {
                        ((TextView) this.o).setText(String.format(new DecimalFormat("(###,###,###)").format(i), Integer.valueOf(i)));
                        ((TextView) this.o).setGravity(17);
                        return true;
                    }
                    a((TextView) this.o, i, getContext(), "tt_comment_num");
                } catch (Exception unused2) {
                }
            } else if (TextUtils.equals(this.m.j().b(), "text_star")) {
                double d2 = -1.0d;
                try {
                    d2 = Double.parseDouble(getText());
                } catch (Exception e2) {
                    l.e("DynamicStarView applyNativeStyle", e2.toString());
                }
                if (d2 < 0.0d || d2 > 5.0d) {
                    if (com.bytedance.sdk.component.adexpress.d.b()) {
                        setVisibility(8);
                        return true;
                    }
                    this.o.setVisibility(0);
                }
                ((TextView) this.o).setIncludeFontPadding(false);
                ((TextView) this.o).setText(String.format("%.1f", Double.valueOf(d2)));
            } else if (TextUtils.equals("privacy-detail", this.m.j().b())) {
                ((TextView) this.o).setText("Permission list | Privacy policy");
            } else if (TextUtils.equals(this.m.j().b(), "development-name")) {
                ((TextView) this.o).setText(s.a(com.bytedance.sdk.component.adexpress.d.a(), "tt_text_privacy_development") + getText());
            } else if (TextUtils.equals(this.m.j().b(), "app-version")) {
                ((TextView) this.o).setText(s.a(com.bytedance.sdk.component.adexpress.d.a(), "tt_text_privacy_app_version") + getText());
            } else {
                ((TextView) this.o).setText(getText());
            }
            if (Build.VERSION.SDK_INT >= 17) {
                this.o.setTextAlignment(this.l.h());
                ((TextView) this.o).setGravity(this.l.i());
            }
            if (com.bytedance.sdk.component.adexpress.d.b()) {
                j();
            }
        }
        return true;
    }
}
