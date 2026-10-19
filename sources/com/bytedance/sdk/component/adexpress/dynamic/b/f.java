package com.bytedance.sdk.component.adexpress.dynamic.b;

import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.json.o2;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: DynamicLayoutBrickValue.java */
/* JADX INFO: loaded from: classes.dex */
public class f {
    private int A;
    private double B;
    private double C;
    private String D;
    private String E;
    private String F;
    private String G;
    private String H;
    private boolean I;
    private int J;
    private int K;
    private int L;
    private int M;
    private int N;
    private double O;
    private int P;
    private boolean Q;
    private int R;
    private boolean S;
    private int T;
    private String U;
    private boolean V;
    private boolean W;
    private boolean X;
    private boolean Y;
    private String Z;
    private float a;
    private JSONObject aA;
    private int aB;
    private String aC;
    private boolean aD;
    private JSONObject aE;
    private int aF;
    private int aG;
    private int aH;
    private int aI;
    private int aJ;
    private String aK;
    private String aL;
    private int aa;
    private boolean ab;
    private int ac;
    private int ad;
    private int ae;
    private int af;
    private int ag;
    private int ah;
    private String ai;
    private String aj;
    private boolean ak;
    private int al;
    private int am;
    private int an;
    private List<a> ao;
    private int ap;
    private int aq;
    private int ar;
    private int as;
    private boolean at;
    private boolean au;
    private boolean av;
    private int aw;
    private boolean ax;
    private double ay;
    private JSONObject az;
    private float b;
    private float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f729d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f730e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f731f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f732g;
    private float h;
    private float i;
    private float j;
    private double k;
    private double l;
    private String m;
    private String n;
    private String o;
    private String p;
    private String q;
    private String r;
    private String s;
    private String t;
    private String u;
    private String v;
    private String w;
    private String x;
    private boolean y;
    private int z;

    public static f a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        f fVar = new f();
        fVar.b(jSONObject.optString("adType", "embeded"));
        fVar.o(jSONObject.optString("clickArea", "creative"));
        fVar.p(jSONObject.optString("clickTigger", CampaignEx.JSON_NATIVE_VIDEO_CLICK));
        fVar.c(jSONObject.optString(TtmlNode.ATTR_TTS_FONT_FAMILY, "PingFangSC"));
        fVar.d(jSONObject.optString(TtmlNode.ATTR_TTS_TEXT_ALIGN, "left"));
        fVar.e(jSONObject.optString("color", "#999999"));
        fVar.f(jSONObject.optString("bgColor", o2.h.T));
        fVar.g(jSONObject.optString("bgImgUrl", ""));
        fVar.h(jSONObject.optString("borderColor", "#000000"));
        fVar.i(jSONObject.optString("borderStyle", "solid"));
        fVar.j(jSONObject.optString("heightMode", "auto"));
        fVar.k(jSONObject.optString("widthMode", "fixed"));
        fVar.l(jSONObject.optString("interactText", ""));
        fVar.c(jSONObject.optBoolean("isShowBgControl", false));
        fVar.m(jSONObject.optString("interactBgColor", ""));
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("interactPosition");
        if (jSONObjectOptJSONObject != null) {
            fVar.g(jSONObjectOptJSONObject.optInt("translateY", 0));
            fVar.h(jSONObjectOptJSONObject.optInt("translateX", 0));
            fVar.d(jSONObjectOptJSONObject.optDouble("scaleX", 0.0d));
            fVar.e(jSONObjectOptJSONObject.optDouble("scaleY", 0.0d));
        }
        fVar.n(jSONObject.optString("interactType", ""));
        fVar.e(jSONObject.optInt("interactSlideDirection", -1));
        fVar.q(jSONObject.optString("justifyHorizontal", "space-around"));
        fVar.r(jSONObject.optString("justifyVertical", "flex-start"));
        fVar.b(jSONObject.optDouble("timingStart"));
        fVar.c(jSONObject.optDouble("timingEnd"));
        fVar.d((float) jSONObject.optDouble("width", 0.0d));
        fVar.c((float) jSONObject.optDouble("height", 0.0d));
        fVar.a((float) jSONObject.optDouble("borderRadius", 0.0d));
        fVar.b((float) jSONObject.optDouble("borderSize", 0.0d));
        fVar.b(jSONObject.optBoolean("interactValidate", false));
        fVar.i((float) jSONObject.optDouble(TtmlNode.ATTR_TTS_FONT_SIZE, 0.0d));
        fVar.e((float) jSONObject.optDouble("paddingBottom", 0.0d));
        fVar.f((float) jSONObject.optDouble("paddingLeft", 0.0d));
        fVar.g((float) jSONObject.optDouble("paddingRight", 0.0d));
        fVar.h((float) jSONObject.optDouble("paddingTop", 0.0d));
        fVar.d(jSONObject.optBoolean("lineFeed", false));
        fVar.i(jSONObject.optInt("lineCount", 0));
        fVar.f(jSONObject.optDouble("lineHeight", 1.2d));
        fVar.n(jSONObject.optInt("letterSpacing", 0));
        fVar.e(jSONObject.optBoolean("isDataFixed", false));
        fVar.o(jSONObject.optInt(TtmlNode.ATTR_TTS_FONT_WEIGHT));
        fVar.f(jSONObject.optBoolean("lineLimit"));
        fVar.p(jSONObject.optInt(o2.h.L));
        fVar.s(jSONObject.optString("align"));
        fVar.g(jSONObject.optBoolean("useLeft"));
        fVar.h(jSONObject.optBoolean("useRight"));
        fVar.i(jSONObject.optBoolean("useTop"));
        fVar.j(jSONObject.optBoolean("useBottom"));
        fVar.t(jSONObject.optString("data"));
        fVar.l(jSONObject.optInt("marginLeft"));
        fVar.m(jSONObject.optInt("marginRight"));
        fVar.j(jSONObject.optInt("marginTop"));
        fVar.k(jSONObject.optInt("marginBottom"));
        fVar.q(jSONObject.optInt("tagMaxCount"));
        fVar.k(jSONObject.optBoolean("allowTextFlow"));
        fVar.r(jSONObject.optInt("textFlowType"));
        fVar.s(jSONObject.optInt("textFlowDuration"));
        fVar.t(jSONObject.optInt("left"));
        fVar.u(jSONObject.optInt(TtmlNode.RIGHT));
        fVar.v(jSONObject.optInt(ViewHierarchyConstants.DIMENSION_TOP_KEY));
        fVar.w(jSONObject.optInt("bottom"));
        fVar.u(jSONObject.optString("alignItems", "flex-start"));
        fVar.v(jSONObject.optString("direction", ""));
        fVar.a(jSONObject.optBoolean("loop", false));
        fVar.x(jSONObject.optInt("zIndex"));
        fVar.z(jSONObject.optInt("interactVisibleTime"));
        fVar.y(jSONObject.optInt("interactHiddenTime"));
        fVar.a(jSONObject.optString("bgGradient"));
        fVar.A(jSONObject.optInt("areaType"));
        fVar.B(jSONObject.optInt("interactSlideThreshold", 0));
        fVar.E(jSONObject.optInt("interactBottomDistance", 0));
        fVar.o(jSONObject.optBoolean("openPlayableLandingPage", false));
        fVar.b(jSONObject.optJSONObject("video"));
        fVar.c(jSONObject.optJSONObject("image"));
        fVar.C(jSONObject.optInt("borderShadowExtent"));
        fVar.l(jSONObject.optBoolean("bgGauseBlur"));
        fVar.D(jSONObject.optInt("bgGauseBlurRadius"));
        fVar.m(jSONObject.optBoolean("showTimeProgress", false));
        fVar.n(jSONObject.optBoolean("showPlayButton", false));
        fVar.a(jSONObject.optDouble("bgColorCg", 0.0d));
        fVar.f(jSONObject.optInt("bgMaterialCenterCalcColor", 0));
        fVar.b(jSONObject.optInt("borderTopLeftRadius", 0));
        fVar.a(jSONObject.optInt("borderTopRightRadius", 0));
        fVar.d(jSONObject.optInt("borderBottomLeftRadius", 0));
        fVar.c(jSONObject.optInt("borderBottomRightRadius", 0));
        fVar.d(jSONObject.optJSONObject("interactI18n"));
        fVar.w(jSONObject.optString("imageObjectFit"));
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("animations");
            if (jSONArrayOptJSONArray != null) {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i);
                    a aVar = new a();
                    aVar.d(jSONObject2.optString("animationType"));
                    aVar.a(jSONObject2.optDouble("animationDuration"));
                    aVar.b(jSONObject2.optDouble("animationScaleX"));
                    aVar.c(jSONObject2.optDouble("animationScaleY"));
                    aVar.e(jSONObject2.optString("animationTimeFunction"));
                    aVar.d(jSONObject2.optDouble("animationDelay"));
                    aVar.f(jSONObject2.optInt("animationIterationCount"));
                    aVar.f(jSONObject2.optString("animationDirection"));
                    aVar.e(jSONObject2.optDouble("animationInterval"));
                    aVar.a(jSONObject2.optInt("animationBorderWidth"));
                    aVar.a(jSONObject2.optLong("key"));
                    aVar.b(jSONObject2.optInt("animationEffectWidth"));
                    aVar.c(jSONObject2.optInt("animationSwing", 1));
                    aVar.d(jSONObject2.optInt("animationTranslateX"));
                    aVar.e(jSONObject2.optInt("animationTranslateY"));
                    aVar.c(jSONObject2.optString("animationRippleBackgroundColor"));
                    aVar.b(jSONObject2.optString("animationScaleDirection"));
                    aVar.g(jSONObject2.optInt("animationFadeStart"));
                    aVar.h(jSONObject2.optInt("animationFadeEnd"));
                    aVar.a(jSONObject2.optString("animationRubInDirection"));
                    if (fVar.s() > 0.0d) {
                        aVar.d(aVar.n() + fVar.s());
                    }
                    arrayList.add(aVar);
                }
                fVar.a(arrayList);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return fVar;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private void a(f fVar, JSONObject jSONObject) {
        if (fVar == null || jSONObject == null) {
            return;
        }
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            next.hashCode();
            byte b = -1;
            switch (next.hashCode()) {
                case -2067713583:
                    if (next.equals("isShowBgControl")) {
                        b = 0;
                    }
                    break;
                case -1965619659:
                    if (next.equals("clickArea")) {
                        b = 1;
                    }
                    break;
                case -1885934767:
                    if (next.equals("bgImgUrl")) {
                        b = 2;
                    }
                    break;
                case -1822062213:
                    if (next.equals("lineCount")) {
                        b = 3;
                    }
                    break;
                case -1821293778:
                    if (next.equals("openPlayableLandingPage")) {
                        b = 4;
                    }
                    break;
                case -1813937113:
                    if (next.equals("lineLimit")) {
                        b = 5;
                    }
                    break;
                case -1578250488:
                    if (next.equals("interactBgColor")) {
                        b = 6;
                    }
                    break;
                case -1501175880:
                    if (next.equals("paddingLeft")) {
                        b = 7;
                    }
                    break;
                case -1422965251:
                    if (next.equals("adType")) {
                        b = 8;
                    }
                    break;
                case -1383228885:
                    if (next.equals("bottom")) {
                        b = 9;
                    }
                    break;
                case -1224696685:
                    if (next.equals(TtmlNode.ATTR_TTS_FONT_FAMILY)) {
                        b = 10;
                    }
                    break;
                case -1221029593:
                    if (next.equals("height")) {
                        b = Ascii.VT;
                    }
                    break;
                case -1065511464:
                    if (next.equals(TtmlNode.ATTR_TTS_TEXT_ALIGN)) {
                        b = Ascii.FF;
                    }
                    break;
                case -1063257157:
                    if (next.equals("alignItems")) {
                        b = Ascii.CR;
                    }
                    break;
                case -1046708884:
                    if (next.equals("interactValidate")) {
                        b = Ascii.SO;
                    }
                    break;
                case -1044792121:
                    if (next.equals("marginTop")) {
                        b = Ascii.SI;
                    }
                    break;
                case -1019884910:
                    if (next.equals("useBottom")) {
                        b = Ascii.DLE;
                    }
                    break;
                case -962590849:
                    if (next.equals("direction")) {
                        b = 17;
                    }
                    break;
                case -912366651:
                    if (next.equals("tagMaxCount")) {
                        b = Ascii.DC2;
                    }
                    break;
                case -848877971:
                    if (next.equals("interactHiddenTime")) {
                        b = 19;
                    }
                    break;
                case -836058546:
                    if (next.equals("useTop")) {
                        b = Ascii.DC4;
                    }
                    break;
                case -734428249:
                    if (next.equals(TtmlNode.ATTR_TTS_FONT_WEIGHT)) {
                        b = Ascii.NAK;
                    }
                    break;
                case -731417480:
                    if (next.equals("zIndex")) {
                        b = Ascii.SYN;
                    }
                    break;
                case -709393864:
                    if (next.equals("timingStart")) {
                        b = Ascii.ETB;
                    }
                    break;
                case -515807685:
                    if (next.equals("lineHeight")) {
                        b = Ascii.CAN;
                    }
                    break;
                case -321658193:
                    if (next.equals("textFlowDuration")) {
                        b = Ascii.EM;
                    }
                    break;
                case -295409451:
                    if (next.equals("useRight")) {
                        b = Ascii.SUB;
                    }
                    break;
                case -289173127:
                    if (next.equals("marginBottom")) {
                        b = Ascii.ESC;
                    }
                    break;
                case -204859874:
                    if (next.equals("bgColor")) {
                        b = Ascii.FS;
                    }
                    break;
                case -148259282:
                    if (next.equals("useLeft")) {
                        b = Ascii.GS;
                    }
                    break;
                case -51738487:
                    if (next.equals("widthMode")) {
                        b = Ascii.RS;
                    }
                    break;
                case 115029:
                    if (next.equals(ViewHierarchyConstants.DIMENSION_TOP_KEY)) {
                        b = Ascii.US;
                    }
                    break;
                case 3076010:
                    if (next.equals("data")) {
                        b = 32;
                    }
                    break;
                case 3317767:
                    if (next.equals("left")) {
                        b = 33;
                    }
                    break;
                case 3327652:
                    if (next.equals("loop")) {
                        b = 34;
                    }
                    break;
                case 90130308:
                    if (next.equals("paddingTop")) {
                        b = 35;
                    }
                    break;
                case 92903173:
                    if (next.equals("align")) {
                        b = 36;
                    }
                    break;
                case 94842723:
                    if (next.equals("color")) {
                        b = 37;
                    }
                    break;
                case 108511772:
                    if (next.equals(TtmlNode.RIGHT)) {
                        b = 38;
                    }
                    break;
                case 113126854:
                    if (next.equals("width")) {
                        b = 39;
                    }
                    break;
                case 164611121:
                    if (next.equals("timingEnd")) {
                        b = 40;
                    }
                    break;
                case 202355100:
                    if (next.equals("paddingBottom")) {
                        b = 41;
                    }
                    break;
                case 247204452:
                    if (next.equals("allowTextFlow")) {
                        b = 42;
                    }
                    break;
                case 365601008:
                    if (next.equals(TtmlNode.ATTR_TTS_FONT_SIZE)) {
                        b = 43;
                    }
                    break;
                case 428975654:
                    if (next.equals("justifyVertical")) {
                        b = 44;
                    }
                    break;
                case 439444041:
                    if (next.equals("interactVisibleTime")) {
                        b = 45;
                    }
                    break;
                case 713848971:
                    if (next.equals("paddingRight")) {
                        b = 46;
                    }
                    break;
                case 722830999:
                    if (next.equals("borderColor")) {
                        b = 47;
                    }
                    break;
                case 737768677:
                    if (next.equals("borderStyle")) {
                        b = 48;
                    }
                    break;
                case 747804969:
                    if (next.equals(o2.h.L)) {
                        b = 49;
                    }
                    break;
                case 791643104:
                    if (next.equals("isDataFixed")) {
                        b = 50;
                    }
                    break;
                case 975087886:
                    if (next.equals("marginRight")) {
                        b = 51;
                    }
                    break;
                case 1110826708:
                    if (next.equals("justifyHorizontal")) {
                        b = 52;
                    }
                    break;
                case 1122368895:
                    if (next.equals("interactPosition")) {
                        b = 53;
                    }
                    break;
                case 1188229042:
                    if (next.equals("lineFeed")) {
                        b = 54;
                    }
                    break;
                case 1332036739:
                    if (next.equals("interactText")) {
                        b = 55;
                    }
                    break;
                case 1332055696:
                    if (next.equals("interactType")) {
                        b = 56;
                    }
                    break;
                case 1349188574:
                    if (next.equals("borderRadius")) {
                        b = 57;
                    }
                    break;
                case 1360828714:
                    if (next.equals("clickTigger")) {
                        b = 58;
                    }
                    break;
                case 1490178922:
                    if (next.equals("heightMode")) {
                        b = 59;
                    }
                    break;
                case 1761274325:
                    if (next.equals("textFlowType")) {
                        b = 60;
                    }
                    break;
                case 1824903757:
                    if (next.equals("borderSize")) {
                        b = 61;
                    }
                    break;
                case 1970934485:
                    if (next.equals("marginLeft")) {
                        b = 62;
                    }
                    break;
                case 2111078717:
                    if (next.equals("letterSpacing")) {
                        b = 63;
                    }
                    break;
            }
            switch (b) {
                case 0:
                    fVar.c(jSONObject.optBoolean(next, false));
                    break;
                case 1:
                    fVar.o(jSONObject.optString(next));
                    break;
                case 2:
                    fVar.g(jSONObject.optString(next));
                    break;
                case 3:
                    fVar.i(jSONObject.optInt(next));
                    break;
                case 4:
                    fVar.o(jSONObject.optBoolean(next));
                    break;
                case 5:
                    fVar.f(jSONObject.optBoolean(next));
                    break;
                case 6:
                    fVar.m(jSONObject.optString(next));
                    break;
                case 7:
                    fVar.f((float) jSONObject.optDouble(next));
                    break;
                case 8:
                    fVar.b(jSONObject.optString(next));
                    break;
                case 9:
                    fVar.w(jSONObject.optInt(next));
                    break;
                case 10:
                    fVar.c(jSONObject.optString(next));
                    break;
                case 11:
                    fVar.c((float) jSONObject.optDouble(next));
                    break;
                case 12:
                    fVar.d(jSONObject.optString(next));
                    break;
                case 13:
                    fVar.u(jSONObject.optString(next));
                    break;
                case 14:
                    fVar.b(jSONObject.optBoolean(next));
                    break;
                case 15:
                    fVar.j(jSONObject.optInt(next));
                    break;
                case 16:
                    fVar.j(jSONObject.optBoolean(next));
                    break;
                case 17:
                    fVar.v(jSONObject.optString(next));
                    break;
                case 18:
                    fVar.q(jSONObject.optInt(next));
                    break;
                case 19:
                    fVar.y(jSONObject.optInt(next));
                    break;
                case 20:
                    fVar.i(jSONObject.optBoolean(next));
                    break;
                case 21:
                    fVar.o(jSONObject.optInt(next));
                    break;
                case 22:
                    fVar.x(jSONObject.optInt(next));
                    break;
                case 23:
                    fVar.b(jSONObject.optDouble(next));
                    break;
                case 24:
                    fVar.f(jSONObject.optDouble(next));
                    break;
                case 25:
                    fVar.s(jSONObject.optInt(next));
                    break;
                case 26:
                    fVar.h(jSONObject.optBoolean(next));
                    break;
                case 27:
                    fVar.k(jSONObject.optInt(next));
                    break;
                case 28:
                    fVar.f(jSONObject.optString(next));
                    break;
                case 29:
                    fVar.g(jSONObject.optBoolean(next));
                    break;
                case 30:
                    fVar.k(jSONObject.optString(next));
                    break;
                case 31:
                    fVar.v(jSONObject.optInt(next));
                    break;
                case 32:
                    fVar.t(jSONObject.optString(next));
                    break;
                case 33:
                    fVar.t(jSONObject.optInt(next));
                    break;
                case 34:
                    fVar.a(jSONObject.optBoolean(next));
                    break;
                case 35:
                    fVar.h((float) jSONObject.optDouble(next));
                    break;
                case 36:
                    fVar.s(jSONObject.optString(next));
                    break;
                case 37:
                    fVar.e(jSONObject.optString(next));
                    break;
                case 38:
                    fVar.u(jSONObject.optInt(next));
                    break;
                case 39:
                    fVar.d((float) jSONObject.optDouble(next));
                    break;
                case 40:
                    fVar.c(jSONObject.optDouble(next));
                    break;
                case 41:
                    fVar.e((float) jSONObject.optDouble(next));
                    break;
                case 42:
                    fVar.k(jSONObject.optBoolean(next));
                    break;
                case 43:
                    fVar.i((float) jSONObject.optDouble(next));
                    break;
                case 44:
                    fVar.r(jSONObject.optString(next));
                    break;
                case 45:
                    fVar.z(jSONObject.optInt(next));
                    break;
                case 46:
                    fVar.g((float) jSONObject.optDouble(next));
                    break;
                case 47:
                    fVar.h(jSONObject.optString(next));
                    break;
                case 48:
                    fVar.i(jSONObject.optString(next));
                    break;
                case 49:
                    fVar.p(jSONObject.optInt(next));
                    break;
                case 50:
                    fVar.e(jSONObject.optBoolean(next));
                    break;
                case 51:
                    fVar.m(jSONObject.optInt(next));
                    break;
                case 52:
                    fVar.q(jSONObject.optString(next));
                    break;
                case 53:
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(next);
                    if (jSONObjectOptJSONObject != null) {
                        fVar.g(jSONObjectOptJSONObject.optInt("translateY", 0));
                        fVar.h(jSONObjectOptJSONObject.optInt("translateX", 0));
                        fVar.d(jSONObjectOptJSONObject.optDouble("scaleX", 0.0d));
                        fVar.e(jSONObjectOptJSONObject.optDouble("scaleY", 0.0d));
                    }
                    break;
                case 54:
                    fVar.d(jSONObject.optBoolean(next));
                    break;
                case 55:
                    fVar.l(jSONObject.optString(next));
                    break;
                case 56:
                    fVar.n(jSONObject.optString(next));
                    break;
                case 57:
                    fVar.a((float) jSONObject.optDouble(next));
                    break;
                case 58:
                    fVar.p(jSONObject.optString(next));
                    break;
                case 59:
                    fVar.j(jSONObject.optString(next));
                    break;
                case 60:
                    fVar.r(jSONObject.optInt(next));
                    break;
                case 61:
                    fVar.b((float) jSONObject.optDouble(next));
                    break;
                case 62:
                    fVar.l(jSONObject.optInt(next));
                    break;
                case 63:
                    fVar.n(jSONObject.optInt(next));
                    break;
            }
        }
    }

    public String A() {
        return this.v;
    }

    public void A(int i) {
        this.ap = i;
    }

    public String B() {
        return this.w;
    }

    public void B(int i) {
        this.aq = i;
    }

    public String C() {
        return this.x;
    }

    public void C(int i) {
        this.ar = i;
    }

    public void D(int i) {
        this.as = i;
    }

    public boolean D() {
        return this.y;
    }

    public int E() {
        return this.z;
    }

    public void E(int i) {
        this.aw = i;
    }

    public int F() {
        return this.A;
    }

    public double G() {
        return this.B;
    }

    public double H() {
        return this.C;
    }

    public String I() {
        return this.D;
    }

    public String J() {
        return this.E;
    }

    public String K() {
        return this.F;
    }

    public String L() {
        return this.G;
    }

    public String M() {
        return this.H;
    }

    public boolean N() {
        return this.I;
    }

    public int O() {
        return this.J;
    }

    public int P() {
        return this.K;
    }

    public int Q() {
        return this.L;
    }

    public int R() {
        return this.M;
    }

    public int S() {
        return this.N;
    }

    public double T() {
        return this.O;
    }

    public int U() {
        return this.P;
    }

    public boolean V() {
        return this.Q;
    }

    public int W() {
        return this.R;
    }

    public boolean X() {
        return this.S;
    }

    public int Y() {
        return this.T;
    }

    public String Z() {
        return this.U;
    }

    public void a(double d2) {
        this.ay = d2;
    }

    public void a(float f2) {
        this.a = f2;
    }

    public void a(int i) {
        this.aG = i;
    }

    public void a(String str) {
        this.aL = str;
    }

    public void a(List<a> list) {
        this.ao = list;
    }

    public void a(boolean z) {
        this.ak = z;
    }

    public boolean a() {
        return this.ak;
    }

    public int aA() {
        return this.as;
    }

    public boolean aB() {
        return this.au;
    }

    public boolean aC() {
        return this.av;
    }

    public int aD() {
        return this.aw;
    }

    public String aE() {
        return this.aC;
    }

    public boolean aF() {
        return this.ax;
    }

    public void aG() {
        a(this, this.az);
    }

    public void aH() {
        a(this, this.aA);
    }

    public boolean aa() {
        return this.V;
    }

    public boolean ab() {
        return this.W;
    }

    public boolean ac() {
        return this.X;
    }

    public boolean ad() {
        return this.Y;
    }

    public String ae() {
        return this.Z;
    }

    public int af() {
        return this.aa;
    }

    public boolean ag() {
        return this.ab;
    }

    public int ah() {
        return this.ac;
    }

    public int ai() {
        return this.ad;
    }

    public int aj() {
        return this.ae;
    }

    public int ak() {
        return this.af;
    }

    public int al() {
        return this.ag;
    }

    public int am() {
        return this.ah;
    }

    public String an() {
        return this.ai;
    }

    public String ao() {
        return this.aj;
    }

    public int ap() {
        return this.al;
    }

    public int aq() {
        return this.am;
    }

    public int ar() {
        return this.an;
    }

    public boolean as() {
        return this.aD;
    }

    public String at() {
        return this.aK;
    }

    public List<a> au() {
        return this.ao;
    }

    public int av() {
        List<a> list = this.ao;
        if (list == null) {
            return 0;
        }
        for (a aVar : list) {
            if ("translate".equals(aVar.i()) && aVar.g() < 0) {
                return -aVar.g();
            }
        }
        return 0;
    }

    public int aw() {
        return this.ap;
    }

    public int ax() {
        return this.aq;
    }

    public int ay() {
        return this.ar;
    }

    public boolean az() {
        return this.at;
    }

    public int b() {
        return this.aG;
    }

    public void b(double d2) {
        this.k = d2;
    }

    public void b(float f2) {
        this.b = f2;
    }

    public void b(int i) {
        this.aH = i;
    }

    public void b(String str) {
        this.m = str;
    }

    public void b(JSONObject jSONObject) {
        this.az = jSONObject;
    }

    public void b(boolean z) {
        this.f730e = z;
    }

    public int c() {
        return this.aH;
    }

    public void c(double d2) {
        this.l = d2;
    }

    public void c(float f2) {
        this.c = f2;
    }

    public void c(int i) {
        this.aI = i;
    }

    public void c(String str) {
        this.n = str;
    }

    public void c(JSONObject jSONObject) {
        this.aA = jSONObject;
    }

    public void c(boolean z) {
        this.y = z;
    }

    public int d() {
        return this.aI;
    }

    public void d(double d2) {
        this.B = d2;
    }

    public void d(float f2) {
        this.f729d = f2;
    }

    public void d(int i) {
        this.aJ = i;
    }

    public void d(String str) {
        this.o = str;
    }

    public void d(JSONObject jSONObject) {
        this.aE = jSONObject;
    }

    public void d(boolean z) {
        this.I = z;
    }

    public int e() {
        return this.aJ;
    }

    public void e(double d2) {
        this.C = d2;
    }

    public void e(float f2) {
        this.f731f = f2;
    }

    public void e(int i) {
        this.aB = i;
    }

    public void e(String str) {
        this.p = str;
    }

    public void e(boolean z) {
        this.Q = z;
    }

    public JSONObject f() {
        return this.aE;
    }

    public void f(double d2) {
        this.O = d2;
    }

    public void f(float f2) {
        this.f732g = f2;
    }

    public void f(int i) {
        this.aF = i;
    }

    public void f(String str) {
        this.q = str;
    }

    public void f(boolean z) {
        this.S = z;
    }

    public int g() {
        return this.aB;
    }

    public void g(float f2) {
        this.h = f2;
    }

    public void g(int i) {
        this.z = i;
    }

    public void g(String str) {
        this.r = str;
    }

    public void g(boolean z) {
        this.V = z;
    }

    public double h() {
        return this.ay;
    }

    public void h(float f2) {
        this.i = f2;
    }

    public void h(int i) {
        this.A = i;
    }

    public void h(String str) {
        this.s = str;
    }

    public void h(boolean z) {
        this.W = z;
    }

    public int i() {
        return this.aF;
    }

    public void i(float f2) {
        this.j = f2;
    }

    public void i(int i) {
        this.J = i;
    }

    public void i(String str) {
        this.t = str;
    }

    public void i(boolean z) {
        this.X = z;
    }

    public String j() {
        return this.aL;
    }

    public void j(int i) {
        this.K = i;
    }

    public void j(String str) {
        this.u = str;
    }

    public void j(boolean z) {
        this.Y = z;
    }

    public float k() {
        return this.a;
    }

    public void k(int i) {
        this.L = i;
    }

    public void k(String str) {
        this.v = str;
    }

    public void k(boolean z) {
        this.ab = z;
    }

    public float l() {
        return this.b;
    }

    public void l(int i) {
        this.M = i;
    }

    public void l(String str) {
        this.w = str;
    }

    public void l(boolean z) {
        this.at = z;
    }

    public void m(int i) {
        this.N = i;
    }

    public void m(String str) {
        this.x = str;
    }

    public void m(boolean z) {
        this.au = z;
    }

    public boolean m() {
        return this.f730e;
    }

    public float n() {
        return this.f731f;
    }

    public void n(int i) {
        this.P = i;
    }

    public void n(String str) {
        this.D = str;
    }

    public void n(boolean z) {
        this.av = z;
    }

    public float o() {
        return this.f732g;
    }

    public void o(int i) {
        this.R = i;
    }

    public void o(String str) {
        this.E = str;
    }

    public void o(boolean z) {
        this.ax = z;
    }

    public float p() {
        return this.h;
    }

    public void p(int i) {
        this.T = i;
    }

    public void p(String str) {
        this.F = str;
    }

    public float q() {
        return this.i;
    }

    public void q(int i) {
        this.aa = i;
    }

    public void q(String str) {
        this.G = str;
    }

    public float r() {
        return this.j;
    }

    public void r(int i) {
        this.ac = i;
    }

    public void r(String str) {
        this.H = str;
    }

    public double s() {
        return this.k;
    }

    public void s(int i) {
        this.ad = i;
    }

    public void s(String str) {
        this.U = str;
    }

    public double t() {
        return this.l;
    }

    public void t(int i) {
        this.ae = i;
    }

    public void t(String str) {
        this.Z = str;
    }

    public String u() {
        return this.o;
    }

    public void u(int i) {
        this.af = i;
    }

    public void u(String str) {
        this.ai = str;
    }

    public String v() {
        return this.p;
    }

    public void v(int i) {
        this.ag = i;
    }

    public void v(String str) {
        this.aj = str;
    }

    public String w() {
        return this.q;
    }

    public void w(int i) {
        this.ah = i;
    }

    public void w(String str) {
        this.aK = str;
    }

    public String x() {
        return this.r;
    }

    public void x(int i) {
        this.al = i;
    }

    public String y() {
        return this.s;
    }

    public void y(int i) {
        this.am = i;
    }

    public String z() {
        return this.u;
    }

    public void z(int i) {
        this.an = i;
    }
}
