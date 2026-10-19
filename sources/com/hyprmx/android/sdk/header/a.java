package com.hyprmx.android.sdk.header;

import com.hyprmx.android.sdk.utility.i0;
import java.io.Serializable;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements Serializable {
    public final String a;
    public final String b;
    public final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f4550d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f4551e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f4552f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f4553g;
    public final int h;
    public final int i;
    public final String j;
    public final String k;
    public final String l;
    public final String m;
    public final int n;
    public final String o;
    public final String p;
    public final String q;

    /* JADX INFO: renamed from: com.hyprmx.android.sdk.header.a$a, reason: collision with other inner class name */
    public static final class C0287a {
        public static a a(JSONObject jSONObject) throws JSONException {
            a aVar;
            if (jSONObject != null) {
                String string = jSONObject.getString("header_background_color");
                Intrinsics.checkNotNullExpressionValue(string, "headerJSON.getString(FIELD_BACKGROUND_COLOR)");
                String string2 = jSONObject.getString("title_text");
                Intrinsics.checkNotNullExpressionValue(string2, "headerJSON.getString(FIELD_TITLE_TEXT)");
                String string3 = jSONObject.getString("next_button_text");
                Intrinsics.checkNotNullExpressionValue(string3, "headerJSON.getString(FIELD_NEXT_BUTTON_TEXT)");
                String string4 = jSONObject.getString("finish_button_text");
                Intrinsics.checkNotNullExpressionValue(string4, "headerJSON.getString(FIELD_FINISH_BUTTON_TEXT)");
                String string5 = jSONObject.getString("countdown_text");
                Intrinsics.checkNotNullExpressionValue(string5, "headerJSON.getString(FIELD_COUNTDOWN_TEXT)");
                int i = jSONObject.getJSONObject("finish_button_minimum_size").getInt("width");
                int i2 = jSONObject.getJSONObject("finish_button_minimum_size").getInt("height");
                int i3 = jSONObject.getJSONObject("next_button_minimum_size").getInt("width");
                int i4 = jSONObject.getJSONObject("next_button_minimum_size").getInt("height");
                String string6 = jSONObject.getString("next_button_color");
                Intrinsics.checkNotNullExpressionValue(string6, "headerJSON.getString(FIELD_NEXT_BUTTON_COLOR)");
                String string7 = jSONObject.getString("finish_button_color");
                Intrinsics.checkNotNullExpressionValue(string7, "headerJSON.getString(FIELD_FINISH_BUTTON_COLOR)");
                String string8 = jSONObject.getString("page_indicator_color");
                Intrinsics.checkNotNullExpressionValue(string8, "headerJSON.getString(FIELD_PAGE_INDICATOR_COLOR)");
                String string9 = jSONObject.getString("page_indicator_color_selected");
                Intrinsics.checkNotNullExpressionValue(string9, "headerJSON.getString(FIE…INDICATOR_SELECTED_COLOR)");
                int i5 = jSONObject.getInt("minimum_header_height");
                String string10 = jSONObject.getString("close_button_color");
                Intrinsics.checkNotNullExpressionValue(string10, "headerJSON.getString(FIELD_CLOSE_BUTTON_COLOR)");
                String string11 = jSONObject.getString("chevron_color");
                Intrinsics.checkNotNullExpressionValue(string11, "headerJSON.getString(FIELD_CHEVRON_COLOR)");
                aVar = new a(string, string2, string3, string4, string5, i, i2, i3, i4, string6, string7, string8, string9, i5, string10, string11, i0.a("spinner_tint_color", jSONObject));
            } else {
                aVar = new a("D9D9D9", "<font color='#3a3a3a'>Some websites</font>", "<font color='#ffffff'>Next</font>", "<font color='#ffffff'>Finish</font>", "<font color='#5D5D5D'><b>%s</b></font>", 60, 20, 60, 20, "527FBD", "527FBD", "AAAAAA", "527FBD", 55, "5D5D5D", "ffffff", "737373");
            }
            return aVar;
        }
    }

    public a(String bgColor, String titleText, String nextButtonText, String finishButtonText, String countDownText, int i, int i2, int i3, int i4, String nextButtonColor, String finishButtonColor, String pageIndicatorColor, String pageIndicatorSelectedColor, int i5, String closeButtonColor, String chevronColor, String str) {
        Intrinsics.checkNotNullParameter(bgColor, "bgColor");
        Intrinsics.checkNotNullParameter(titleText, "titleText");
        Intrinsics.checkNotNullParameter(nextButtonText, "nextButtonText");
        Intrinsics.checkNotNullParameter(finishButtonText, "finishButtonText");
        Intrinsics.checkNotNullParameter(countDownText, "countDownText");
        Intrinsics.checkNotNullParameter(nextButtonColor, "nextButtonColor");
        Intrinsics.checkNotNullParameter(finishButtonColor, "finishButtonColor");
        Intrinsics.checkNotNullParameter(pageIndicatorColor, "pageIndicatorColor");
        Intrinsics.checkNotNullParameter(pageIndicatorSelectedColor, "pageIndicatorSelectedColor");
        Intrinsics.checkNotNullParameter(closeButtonColor, "closeButtonColor");
        Intrinsics.checkNotNullParameter(chevronColor, "chevronColor");
        this.a = bgColor;
        this.b = titleText;
        this.c = nextButtonText;
        this.f4550d = finishButtonText;
        this.f4551e = countDownText;
        this.f4552f = i;
        this.f4553g = i2;
        this.h = i3;
        this.i = i4;
        this.j = nextButtonColor;
        this.k = finishButtonColor;
        this.l = pageIndicatorColor;
        this.m = pageIndicatorSelectedColor;
        this.n = i5;
        this.o = closeButtonColor;
        this.p = chevronColor;
        this.q = str;
    }

    public final String c() {
        return this.a;
    }

    public final String d() {
        return this.o;
    }

    public final int e() {
        return this.n;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.areEqual(this.a, aVar.a) && Intrinsics.areEqual(this.b, aVar.b) && Intrinsics.areEqual(this.c, aVar.c) && Intrinsics.areEqual(this.f4550d, aVar.f4550d) && Intrinsics.areEqual(this.f4551e, aVar.f4551e) && this.f4552f == aVar.f4552f && this.f4553g == aVar.f4553g && this.h == aVar.h && this.i == aVar.i && Intrinsics.areEqual(this.j, aVar.j) && Intrinsics.areEqual(this.k, aVar.k) && Intrinsics.areEqual(this.l, aVar.l) && Intrinsics.areEqual(this.m, aVar.m) && this.n == aVar.n && Intrinsics.areEqual(this.o, aVar.o) && Intrinsics.areEqual(this.p, aVar.p) && Intrinsics.areEqual(this.q, aVar.q);
    }

    public final int hashCode() {
        int iHashCode = (this.p.hashCode() + ((this.o.hashCode() + ((this.n + ((this.m.hashCode() + ((this.l.hashCode() + ((this.k.hashCode() + ((this.j.hashCode() + ((this.i + ((this.h + ((this.f4553g + ((this.f4552f + ((this.f4551e.hashCode() + ((this.f4550d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        String str = this.q;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "WebTrafficHeader(bgColor=" + this.a + ", titleText=" + this.b + ", nextButtonText=" + this.c + ", finishButtonText=" + this.f4550d + ", countDownText=" + this.f4551e + ", finishButtonMinWidth=" + this.f4552f + ", finishButtonMinHeight=" + this.f4553g + ", nextButtonMinWidth=" + this.h + ", nextButtonMinHeight=" + this.i + ", nextButtonColor=" + this.j + ", finishButtonColor=" + this.k + ", pageIndicatorColor=" + this.l + ", pageIndicatorSelectedColor=" + this.m + ", minimumHeaderHeight=" + this.n + ", closeButtonColor=" + this.o + ", chevronColor=" + this.p + ", spinnerColor=" + this.q + ')';
    }
}
