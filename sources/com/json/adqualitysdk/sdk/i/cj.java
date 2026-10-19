package com.json.adqualitysdk.sdk.i;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.graphics.ImageFormat;
import android.graphics.drawable.Drawable;
import android.media.AudioTrack;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemClock;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.webkit.WebView;
import android.widget.ExpandableListView;
import androidx.core.view.ViewCompat;
import com.applovin.exoplayer2.common.base.Ascii;
import com.json.adqualitysdk.sdk.ISAdQualityAdType;
import com.json.adqualitysdk.sdk.i.jj;
import com.json.b4;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class cj {
    private static char b = 7;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f5406g = 0;
    private static int h = 1;
    private ho i;
    private dr j;
    private cz k;
    private az l;
    private ch m;
    private je n = null;
    private jg o;
    private ci p;
    private JSONObject q;
    private u r;
    private static char[] a = {'R', 'e', 'm', 'o', 't', 'A', 'd', 'L', 'i', 's', 'n', 'r', '.', 'a', 'l', 'z', 'E', ' ', 'c', 'g', 'v', 'j', ':', 'y', 'w', 'p', 'F', 'u', 'M', 'h', 'f', 'N', 'P', 'x', 'J', '-', 'b', 'S', '_', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '[', '\\', ']'};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static char f5404e = 30480;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static char f5403d = 7627;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static char f5405f = 45806;
    private static char c = 46288;

    final class a implements ch {

        /* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.cj$a$a, reason: collision with other inner class name */
        final class C0343a extends ig {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private /* synthetic */ String f5407d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private /* synthetic */ boolean f5408e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private /* synthetic */ List f5409f;

            C0343a(String str, boolean z, List list) {
                this.f5407d = str;
                this.f5408e = z;
                this.f5409f = list;
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                cj.K(cj.this, this.f5407d, false, this.f5408e, this.f5409f);
            }
        }

        a() {
        }

        @Override // com.json.adqualitysdk.sdk.i.ch
        /* JADX INFO: renamed from: ﾒ */
        public final void mo428(String str, List<Object> list) {
            cj.K(cj.this, str, true, false, list);
            cj.v(cj.this, new C0343a(str, false, list), false);
            cj.v(cj.this, new C0343a(str, true, list), true);
        }
    }

    final class b implements im {
        private /* synthetic */ dn a;

        b(dn dnVar) {
            this.a = dnVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.im
        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        public final boolean mo457(View view) {
            return this.a.m667(cj.r(cj.this), cj.this, Collections.singletonList(view)).m678();
        }
    }

    final class c extends x {
        private static int a = 179;
        private static int b = 0;
        private static int c = 1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ boolean f5411d;

        c(boolean z) {
            this.f5411d = z;
        }

        private void a(String str, JSONObject jSONObject, WebView webView, Object obj, View view) {
            cj cjVar = cj.this;
            StringBuilder sb = new StringBuilder();
            sb.append(b(Gravity.getAbsoluteGravity(0, 0) + 277, true, 5 - ((byte) KeyEvent.getModifierMetaStateMask()), 17 - Gravity.getAbsoluteGravity(0, 0), "\u0015\r\u0002\f\u0007\ufff5ￌ\u0010\u0003\f\u0003\u0012\u0011\u0007￪\u0002\uffdf").intern());
            sb.append(str);
            cj.K(cjVar, sb.toString(), this.f5411d, false, Arrays.asList(jSONObject, webView, obj, view));
            int i = c + 25;
            b = i % 128;
            if ((i % 2 != 0 ? 'W' : (char) 30) != 'W') {
                return;
            }
            int i2 = 78 / 0;
        }

        private static String b(int i, boolean z, int i2, int i3, String str) {
            String str2;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (com.json.adqualitysdk.sdk.i.c.f35) {
                char[] cArr2 = new char[i3];
                com.json.adqualitysdk.sdk.i.c.f36 = 0;
                while (true) {
                    int i4 = com.json.adqualitysdk.sdk.i.c.f36;
                    if (i4 >= i3) {
                        break;
                    }
                    com.json.adqualitysdk.sdk.i.c.f37 = cArr[i4];
                    cArr2[com.json.adqualitysdk.sdk.i.c.f36] = (char) (com.json.adqualitysdk.sdk.i.c.f37 + i);
                    int i5 = com.json.adqualitysdk.sdk.i.c.f36;
                    cArr2[i5] = (char) (cArr2[i5] - a);
                    com.json.adqualitysdk.sdk.i.c.f36 = i5 + 1;
                }
                if (i2 > 0) {
                    com.json.adqualitysdk.sdk.i.c.f38 = i2;
                    char[] cArr3 = new char[i3];
                    System.arraycopy(cArr2, 0, cArr3, 0, i3);
                    int i6 = com.json.adqualitysdk.sdk.i.c.f38;
                    System.arraycopy(cArr3, 0, cArr2, i3 - i6, i6);
                    int i7 = com.json.adqualitysdk.sdk.i.c.f38;
                    System.arraycopy(cArr3, i7, cArr2, 0, i3 - i7);
                }
                if (z) {
                    char[] cArr4 = new char[i3];
                    com.json.adqualitysdk.sdk.i.c.f36 = 0;
                    while (true) {
                        int i8 = com.json.adqualitysdk.sdk.i.c.f36;
                        if (i8 >= i3) {
                            break;
                        }
                        cArr4[i8] = cArr2[(i3 - i8) - 1];
                        com.json.adqualitysdk.sdk.i.c.f36 = i8 + 1;
                    }
                    cArr2 = cArr4;
                }
                str2 = new String(cArr2);
            }
            return str2;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.x
        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        public final void mo226(JSONObject jSONObject, WebView webView, View view) {
            int i = b + 111;
            c = i % 128;
            a((i % 2 != 0 ? b(281 - (ViewConfiguration.getWindowTouchSlop() >> 8), true, (ViewConfiguration.getDoubleTapTimeout() >> 16) + 12, 16 - View.resolveSizeAndState(0, 0, 0), "\uffdf\ufffe\uffff\u0013\ufffb\u0006\n\r\u0003\uffde\ufffe\ufffb\ufffb\f\u000e\u0012") : b(27072 >>> (ViewConfiguration.getWindowTouchSlop() / 30), false, 57 - (ViewConfiguration.getDoubleTapTimeout() % 1), 51 << View.resolveSizeAndState(1, 1, 1), "\uffdf\ufffe\uffff\u0013\ufffb\u0006\n\r\u0003\uffde\ufffe\ufffb\ufffb\f\u000e\u0012")).intern(), jSONObject, webView, null, view);
            int i2 = b + 121;
            c = i2 % 128;
            int i3 = i2 % 2;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.x
        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        public final void mo233(JSONObject jSONObject, WebView webView, Object obj, View view) {
            int i = b + 9;
            c = i % 128;
            a((i % 2 != 0 ? b(276 - ExpandableListView.getPackedPositionChild(0L), false, 1 - TextUtils.getOffsetBefore("", 0), TextUtils.indexOf("", "", 0) + 9, "\u0002\uffff\u0002￡\n\u0007\u0001\t\u0003") : b(ExpandableListView.getPackedPositionChild(0L) * 21496, true, 0 >>> TextUtils.getOffsetBefore("", 1), 114 << TextUtils.indexOf("", "", 1), "\u0002\uffff\u0002￡\n\u0007\u0001\t\u0003")).intern(), jSONObject, webView, obj, view);
            int i2 = b + 3;
            c = i2 % 128;
            int i3 = i2 % 2;
        }

        @Override // com.json.adqualitysdk.sdk.i.x, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﻐ */
        public final /* bridge */ /* synthetic */ void mo226(JSONObject jSONObject, WebView webView, View view) {
            int i = c + 125;
            b = i % 128;
            int i2 = i % 2;
            mo226(jSONObject, webView, view);
            int i3 = c + 87;
            b = i3 % 128;
            if ((i3 % 2 != 0 ? '(' : '5') == '5') {
            } else {
                throw null;
            }
        }

        @Override // com.json.adqualitysdk.sdk.i.x, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﻐ */
        public final /* synthetic */ void mo227(JSONObject jSONObject, WebView webView, Object obj, View view) {
            int i = c + 105;
            b = i % 128;
            char c2 = i % 2 != 0 ? '!' : 'P';
            mo227(jSONObject, webView, obj, view);
            if (c2 == 'P') {
            } else {
                throw null;
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.x
        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
        public final void mo229(JSONObject jSONObject, WebView webView, View view) {
            int i = b + 53;
            c = i % 128;
            int i2 = i % 2;
            a(b(281 - (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)), false, View.MeasureSpec.makeMeasureSpec(0, 0) + 9, 10 - Process.getGidForName(""), "\uffde\u0003\r\n\u0006\ufffb\u0013\uffff\ufffe\ufffb\ufffe").intern(), jSONObject, webView, null, view);
            int i3 = c + 47;
            b = i3 % 128;
            int i4 = i3 % 2;
        }

        @Override // com.json.adqualitysdk.sdk.i.x, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﻛ */
        public final /* synthetic */ void mo228(JSONObject jSONObject, WebView webView, View view) {
            int i = b + 21;
            c = i % 128;
            int i2 = i % 2;
            mo228(jSONObject, webView, view);
            int i3 = c + 117;
            b = i3 % 128;
            if (!(i3 % 2 != 0)) {
            } else {
                throw null;
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.x
        /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
        public final void mo232(JSONObject jSONObject, WebView webView, View view) {
            int i = b + 113;
            c = i % 128;
            int i2 = i % 2;
            a(b(ExpandableListView.getPackedPositionType(0L) + 278, false, 2 - (ViewConfiguration.getJumpTapTimeout() >> 16), (ViewConfiguration.getKeyRepeatDelay() >> 16) + 8, "\u0002\u0001\ufffe\u0001￠\t\f\u0010").intern(), jSONObject, webView, null, view);
            int i3 = c + 109;
            b = i3 % 128;
            int i4 = i3 % 2;
        }

        @Override // com.json.adqualitysdk.sdk.i.x
        /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
        public final void mo231(JSONObject jSONObject, WebView webView, Object obj, View view) {
            int i = b + 5;
            c = i % 128;
            int i2 = i % 2;
            a(b(Color.blue(0) + 277, true, TextUtils.getCapsMode("", 0, 0) + 6, (ViewConfiguration.getKeyRepeatTimeout() >> 16) + 15, "\u0001\u0007\n￡\u0002\uffff\u0011￨\u000b\r\u0010￤\u0002\u0003\t").intern(), jSONObject, webView, obj, view);
            int i3 = b + 89;
            c = i3 % 128;
            if ((i3 % 2 == 0 ? (char) 26 : ' ') != 26) {
                return;
            }
            int i4 = 7 / 0;
        }

        @Override // com.json.adqualitysdk.sdk.i.x, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ｋ */
        public final /* synthetic */ void mo229(JSONObject jSONObject, WebView webView, View view) {
            int i = c + 5;
            b = i % 128;
            int i2 = i % 2;
            mo229(jSONObject, webView, view);
            int i3 = c + 61;
            b = i3 % 128;
            if (i3 % 2 != 0) {
                throw null;
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.x
        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public final void mo230(JSONObject jSONObject, WebView webView, View view) {
            int maxKeyCode;
            int i;
            int i2;
            int i3 = b + 115;
            c = i3 % 128;
            if ((i3 % 2 == 0 ? 'V' : (char) 31) != 31) {
                maxKeyCode = 31697 << (KeyEvent.getMaxKeyCode() >> 4);
                i = 78 >>> (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1));
                i2 = 23 << (AudioTrack.getMinVolume() > 2.0f ? 1 : (AudioTrack.getMinVolume() == 2.0f ? 0 : -1));
            } else {
                maxKeyCode = 286 - (KeyEvent.getMaxKeyCode() >> 16);
                i = (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 6;
                i2 = 11 - (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1));
            }
            a(b(maxKeyCode, false, i, i2, "\u0002ￚ\u000b\ufffa\u0003\t\ufff8\n\b\t\u0004").intern(), jSONObject, webView, null, view);
            int i4 = c + 111;
            b = i4 % 128;
            int i5 = i4 % 2;
        }

        @Override // com.json.adqualitysdk.sdk.i.x, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾇ */
        public final /* bridge */ /* synthetic */ void mo230(JSONObject jSONObject, WebView webView, View view) {
            int i = b + 41;
            c = i % 128;
            int i2 = i % 2;
            mo230(jSONObject, webView, view);
            int i3 = c + 77;
            b = i3 % 128;
            int i4 = i3 % 2;
        }

        @Override // com.json.adqualitysdk.sdk.i.x, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾇ */
        public final /* synthetic */ void mo231(JSONObject jSONObject, WebView webView, Object obj, View view) {
            int i = c + 97;
            b = i % 128;
            boolean z = i % 2 == 0;
            mo231(jSONObject, webView, obj, view);
            if (z) {
            } else {
                throw null;
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.x
        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        public final void mo228(JSONObject jSONObject, WebView webView, View view) {
            int i = b + 101;
            c = i % 128;
            int i2 = i % 2;
            a(b(ExpandableListView.getPackedPositionChild(0L) + 283, false, (ViewConfiguration.getScrollDefaultDelay() >> 16) + 12, 12 - (Process.myPid() >> 22), "\u000f\u0002\ufffe\u0010ￚ\r\r\ufffa￼\u0001\ufffe�").intern(), jSONObject, webView, null, view);
            int i3 = b + 5;
            c = i3 % 128;
            int i4 = i3 % 2;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.x
        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        public final void mo227(JSONObject jSONObject, WebView webView, Object obj, View view) {
            int iIndexOf;
            int i;
            int size;
            int i2 = b + 45;
            c = i2 % 128;
            if (!(i2 % 2 != 0)) {
                iIndexOf = 24357 / TextUtils.indexOf("", "");
                i = (SystemClock.elapsedRealtime() > 1L ? 1 : (SystemClock.elapsedRealtime() == 1L ? 0 : -1)) + 97;
                size = View.MeasureSpec.getSize(0) + 123;
            } else {
                iIndexOf = 281 - TextUtils.indexOf("", "");
                i = (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)) + 18;
                size = View.MeasureSpec.getSize(0) + 20;
            }
            a(b(iIndexOf, false, i, size, "\uffff￼\uffdd\u0002\f\t\u0007\uffff\uffdd\u0006\u0003\uffff\b\u000e\uffdf\u0010\uffff\b\u000e\u0011").intern(), jSONObject, webView, obj, view);
            int i3 = b + 109;
            c = i3 % 128;
            if (i3 % 2 != 0) {
                return;
            }
            int i4 = 17 / 0;
        }

        @Override // com.json.adqualitysdk.sdk.i.x, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾒ */
        public final /* synthetic */ void mo232(JSONObject jSONObject, WebView webView, View view) {
            int i = c + 113;
            b = i % 128;
            int i2 = i % 2;
            mo232(jSONObject, webView, view);
            int i3 = b + 3;
            c = i3 % 128;
            if ((i3 % 2 == 0 ? '!' : 'Z') != 'Z') {
                int i4 = 12 / 0;
            }
        }

        @Override // com.json.adqualitysdk.sdk.i.x, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾒ */
        public final /* synthetic */ void mo233(JSONObject jSONObject, WebView webView, Object obj, View view) {
            int i = c + 7;
            b = i % 128;
            boolean z = i % 2 == 0;
            mo233(jSONObject, webView, obj, view);
            if (!z) {
                throw null;
            }
            int i2 = c + 101;
            b = i2 % 128;
            int i3 = i2 % 2;
        }
    }

    final class d extends com.json.adqualitysdk.sdk.i.l {
        private /* synthetic */ com.json.adqualitysdk.sdk.i.l a;
        private /* synthetic */ com.json.adqualitysdk.sdk.i.l b;

        d(com.json.adqualitysdk.sdk.i.l lVar, com.json.adqualitysdk.sdk.i.l lVar2) {
            this.a = lVar;
            this.b = lVar2;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.l
        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        public final void mo230(JSONObject jSONObject, WebView webView, Activity activity) {
            this.a.mo230(jSONObject, webView, activity);
            t.m1039(new h0(this.b, jSONObject, webView, activity));
        }

        @Override // com.json.adqualitysdk.sdk.i.l, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﻐ */
        public final /* synthetic */ void mo226(JSONObject jSONObject, WebView webView, Activity activity) {
            mo226(jSONObject, webView, activity);
        }

        @Override // com.json.adqualitysdk.sdk.i.l, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﻐ */
        public final /* synthetic */ void mo227(JSONObject jSONObject, WebView webView, Object obj, Activity activity) {
            mo227(jSONObject, webView, obj, activity);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.l
        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
        public final void mo226(JSONObject jSONObject, WebView webView, Activity activity) {
            this.a.mo226(jSONObject, webView, activity);
            t.m1039(new b0(this.b, jSONObject, webView, activity));
        }

        @Override // com.json.adqualitysdk.sdk.i.l
        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
        public final void mo231(JSONObject jSONObject, WebView webView, Object obj, Activity activity) {
            this.a.mo231(jSONObject, webView, obj, activity);
            t.m1039(new e0(this.b, jSONObject, webView, obj, activity));
        }

        @Override // com.json.adqualitysdk.sdk.i.l, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﻛ */
        public final /* synthetic */ void mo228(JSONObject jSONObject, WebView webView, Activity activity) {
            mo228(jSONObject, webView, activity);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.l
        /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
        public final void mo232(JSONObject jSONObject, WebView webView, Activity activity) {
            this.a.mo232(jSONObject, webView, activity);
            t.m1039(new f0(this.b, jSONObject, webView, activity));
        }

        @Override // com.json.adqualitysdk.sdk.i.l
        /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
        public final void mo227(JSONObject jSONObject, WebView webView, Object obj, Activity activity) {
            this.a.mo227(jSONObject, webView, obj, activity);
            t.m1039(new g0(this.b, jSONObject, webView, obj, activity));
        }

        @Override // com.json.adqualitysdk.sdk.i.l, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ｋ */
        public final /* synthetic */ void mo229(JSONObject jSONObject, WebView webView, Activity activity) {
            mo229(jSONObject, webView, activity);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.l
        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public final void mo229(JSONObject jSONObject, WebView webView, Activity activity) {
            this.a.mo229(jSONObject, webView, activity);
            t.m1039(new c0(this.b, jSONObject, webView, activity));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.l
        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public final void mo233(JSONObject jSONObject, WebView webView, Object obj, Activity activity) {
            this.a.mo233(jSONObject, webView, obj, activity);
            t.m1039(new d0(this.b, jSONObject, webView, obj, activity));
        }

        @Override // com.json.adqualitysdk.sdk.i.l, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾇ */
        public final /* synthetic */ void mo230(JSONObject jSONObject, WebView webView, Activity activity) {
            mo230(jSONObject, webView, activity);
        }

        @Override // com.json.adqualitysdk.sdk.i.l, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾇ */
        public final /* synthetic */ void mo231(JSONObject jSONObject, WebView webView, Object obj, Activity activity) {
            mo231(jSONObject, webView, obj, activity);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.l
        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        public final void mo228(JSONObject jSONObject, WebView webView, Activity activity) {
            this.a.mo228(jSONObject, webView, activity);
            t.m1039(new i0(this.b, jSONObject, webView, activity));
        }

        @Override // com.json.adqualitysdk.sdk.i.l, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾒ */
        public final /* synthetic */ void mo232(JSONObject jSONObject, WebView webView, Activity activity) {
            mo232(jSONObject, webView, activity);
        }

        @Override // com.json.adqualitysdk.sdk.i.l, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾒ */
        public final /* synthetic */ void mo233(JSONObject jSONObject, WebView webView, Object obj, Activity activity) {
            mo233(jSONObject, webView, obj, activity);
        }
    }

    final class e extends com.json.adqualitysdk.sdk.i.l {
        private static char[] a = {'b', 190, 197, 199, 188, 186, 186, 172, 174, 198, 201, '<', 'o', 'd', 'T', '^', 'v', 's', 'i', 'a', 'b', 'T', 'V', 'n', 'q', 'n', 'f', '2', 'd', 'h', 'g', 'f', 'j', 'W', 'S', 'b', '0', 'b', 'S', 'W', 'j', 'f', 'g', 'h', 'd', 'U', '\\', 'p', 'n', '[', '^', 145, 270, 266, 281, 281, 283, 291, 296, 'a', 195, 197, 196, 193, 201, 211, 185, 187, 205, 198, 206, 129, 257, 255, 250, 229, 232, 251, 248, 250, 258, 237, 238, 254, 250, 258, 262, 255, 244, 227, 230, ':', 'q', 'i', 'm', ']', 'Y', 'n', 'q', 's', 't', 'l', 's', 226, 228, 201, 176, 203, 228, 231, 232, 232, 231, 239, 214, 203, 209, 211, 231, 236, 229};
        private static int b = 0;
        private static int c = 1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ boolean f5413d;

        e(boolean z) {
            this.f5413d = z;
        }

        private static String a(boolean z, int[] iArr, String str) throws UnsupportedEncodingException {
            String str2;
            Object bytes = str;
            if (str != null) {
                bytes = str.getBytes("ISO-8859-1");
            }
            byte[] bArr = (byte[]) bytes;
            synchronized (com.json.adqualitysdk.sdk.i.i.f67) {
                int i = iArr[0];
                int i2 = iArr[1];
                int i3 = iArr[2];
                int i4 = iArr[3];
                char[] cArr = new char[i2];
                System.arraycopy(a, i, cArr, 0, i2);
                if (bArr != null) {
                    char[] cArr2 = new char[i2];
                    com.json.adqualitysdk.sdk.i.i.f68 = 0;
                    char c2 = 0;
                    while (true) {
                        int i5 = com.json.adqualitysdk.sdk.i.i.f68;
                        if (i5 >= i2) {
                            break;
                        }
                        if (bArr[i5] == 1) {
                            cArr2[i5] = (char) (((cArr[i5] << 1) + 1) - c2);
                        } else {
                            cArr2[i5] = (char) ((cArr[i5] << 1) - c2);
                        }
                        c2 = cArr2[i5];
                        com.json.adqualitysdk.sdk.i.i.f68 = i5 + 1;
                    }
                    cArr = cArr2;
                }
                if (i4 > 0) {
                    char[] cArr3 = new char[i2];
                    System.arraycopy(cArr, 0, cArr3, 0, i2);
                    int i6 = i2 - i4;
                    System.arraycopy(cArr3, 0, cArr, i6, i4);
                    System.arraycopy(cArr3, i4, cArr, 0, i6);
                }
                if (z) {
                    char[] cArr4 = new char[i2];
                    com.json.adqualitysdk.sdk.i.i.f68 = 0;
                    while (true) {
                        int i7 = com.json.adqualitysdk.sdk.i.i.f68;
                        if (i7 >= i2) {
                            break;
                        }
                        cArr4[i7] = cArr[(i2 - i7) - 1];
                        com.json.adqualitysdk.sdk.i.i.f68 = i7 + 1;
                    }
                    cArr = cArr4;
                }
                if (i3 > 0) {
                    com.json.adqualitysdk.sdk.i.i.f68 = 0;
                    while (true) {
                        int i8 = com.json.adqualitysdk.sdk.i.i.f68;
                        if (i8 >= i2) {
                            break;
                        }
                        cArr[i8] = (char) (cArr[i8] - iArr[2]);
                        com.json.adqualitysdk.sdk.i.i.f68 = i8 + 1;
                    }
                }
                str2 = new String(cArr);
            }
            return str2;
        }

        private void b(String str, JSONObject jSONObject, WebView webView, Object obj, Activity activity) {
            cj cjVar = cj.this;
            StringBuilder sb = new StringBuilder();
            sb.append(a(false, new int[]{102, 19, 121, 4}, "\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001").intern());
            sb.append(str);
            cj.K(cjVar, sb.toString(), this.f5413d, false, Arrays.asList(jSONObject, webView, obj, activity));
            int i = c + 5;
            b = i % 128;
            if ((i % 2 != 0 ? '\\' : b4.R) != '\\') {
                return;
            }
            int i2 = 24 / 0;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.l
        /* JADX INFO: renamed from: ﻐ */
        public final void mo230(JSONObject jSONObject, WebView webView, Activity activity) {
            int i = b + 117;
            c = i % 128;
            int i2 = i % 2;
            b(a(true, new int[]{91, 11, 0, 0}, "\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0000").intern(), jSONObject, webView, null, activity);
            int i3 = c + 37;
            b = i3 % 128;
            int i4 = i3 % 2;
        }

        @Override // com.json.adqualitysdk.sdk.i.l, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﻐ */
        public final /* synthetic */ void mo226(JSONObject jSONObject, WebView webView, Activity activity) {
            int i = c + 17;
            b = i % 128;
            int i2 = i % 2;
            mo226(jSONObject, webView, activity);
            int i3 = c + 77;
            b = i3 % 128;
            int i4 = i3 % 2;
        }

        @Override // com.json.adqualitysdk.sdk.i.l, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﻐ */
        public final /* synthetic */ void mo227(JSONObject jSONObject, WebView webView, Object obj, Activity activity) {
            int i = b + 79;
            c = i % 128;
            char c2 = i % 2 == 0 ? '\"' : (char) 19;
            mo227(jSONObject, webView, obj, activity);
            if (c2 != 19) {
                int i2 = 54 / 0;
            }
            int i3 = c + 15;
            b = i3 % 128;
            if (!(i3 % 2 == 0)) {
                int i4 = 43 / 0;
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.l
        /* JADX INFO: renamed from: ﻛ */
        public final void mo226(JSONObject jSONObject, WebView webView, Activity activity) {
            int i = c + 95;
            b = i % 128;
            int i2 = i % 2;
            b(a(false, new int[]{11, 16, 0, 8}, "\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001").intern(), jSONObject, webView, null, activity);
            int i3 = c + 5;
            b = i3 % 128;
            int i4 = i3 % 2;
        }

        @Override // com.json.adqualitysdk.sdk.i.l
        /* JADX INFO: renamed from: ﻛ */
        public final void mo231(JSONObject jSONObject, WebView webView, Object obj, Activity activity) {
            int i = b + 93;
            c = i % 128;
            int i2 = i % 2;
            b(a(false, new int[]{36, 15, 0, 0}, "\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0000\u0000\u0001\u0000\u0001\u0001").intern(), jSONObject, webView, obj, activity);
            int i3 = c + 21;
            b = i3 % 128;
            if ((i3 % 2 != 0 ? (char) 19 : 'V') != 19) {
                return;
            }
            int i4 = 61 / 0;
        }

        @Override // com.json.adqualitysdk.sdk.i.l, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﻛ */
        public final /* synthetic */ void mo228(JSONObject jSONObject, WebView webView, Activity activity) {
            int i = b + 73;
            c = i % 128;
            int i2 = i % 2;
            mo228(jSONObject, webView, activity);
            int i3 = b + 1;
            c = i3 % 128;
            if ((i3 % 2 == 0 ? 'A' : '.') != 'A') {
                return;
            }
            int i4 = 12 / 0;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.l
        /* JADX INFO: renamed from: ｋ */
        public final void mo232(JSONObject jSONObject, WebView webView, Activity activity) {
            int i = c + 123;
            b = i % 128;
            int i2 = i % 2;
            b(a(true, new int[]{51, 8, 183, 4}, "\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0000").intern(), jSONObject, webView, null, activity);
            int i3 = b + 31;
            c = i3 % 128;
            if ((i3 % 2 == 0 ? (char) 24 : (char) 27) == 27) {
            } else {
                throw null;
            }
        }

        @Override // com.json.adqualitysdk.sdk.i.l
        /* JADX INFO: renamed from: ｋ */
        public final void mo227(JSONObject jSONObject, WebView webView, Object obj, Activity activity) {
            int i = c + 49;
            b = i % 128;
            int i2 = i % 2;
            b(a(false, new int[]{71, 20, 145, 15}, "\u0001\u0001\u0000\u0000\u0000\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0001").intern(), jSONObject, webView, obj, activity);
            int i3 = c + 95;
            b = i3 % 128;
            if (!(i3 % 2 != 0)) {
                return;
            }
            int i4 = 97 / 0;
        }

        @Override // com.json.adqualitysdk.sdk.i.l, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ｋ */
        public final /* synthetic */ void mo229(JSONObject jSONObject, WebView webView, Activity activity) {
            int i = b + 83;
            c = i % 128;
            int i2 = i % 2;
            mo229(jSONObject, webView, activity);
            int i3 = b + 101;
            c = i3 % 128;
            int i4 = i3 % 2;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.l
        /* JADX INFO: renamed from: ﾇ */
        public final void mo229(JSONObject jSONObject, WebView webView, Activity activity) {
            int i = b + 89;
            c = i % 128;
            int i2 = i % 2;
            b(a(false, new int[]{0, 11, 88, 5}, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001").intern(), jSONObject, webView, null, activity);
            int i3 = b + 119;
            c = i3 % 128;
            if (!(i3 % 2 == 0)) {
                return;
            }
            int i4 = 0 / 0;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.l
        /* JADX INFO: renamed from: ﾇ */
        public final void mo233(JSONObject jSONObject, WebView webView, Object obj, Activity activity) {
            int i = b + 7;
            c = i % 128;
            b(((i % 2 == 0 ? '-' : 'b') != '-' ? a(true, new int[]{27, 9, 0, 0}, "\u0000\u0001\u0000\u0000\u0000\u0001\u0001\u0001\u0001") : a(true, new int[]{27, 9, 0, 0}, "\u0000\u0001\u0000\u0000\u0000\u0001\u0001\u0001\u0001")).intern(), jSONObject, webView, obj, activity);
            int i2 = b + 13;
            c = i2 % 128;
            if ((i2 % 2 == 0 ? 'B' : '.') != 'B') {
            } else {
                throw null;
            }
        }

        @Override // com.json.adqualitysdk.sdk.i.l, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾇ */
        public final /* synthetic */ void mo230(JSONObject jSONObject, WebView webView, Activity activity) {
            int i = c + 37;
            b = i % 128;
            boolean z = i % 2 == 0;
            mo230(jSONObject, webView, activity);
            if (z) {
            } else {
                throw null;
            }
        }

        @Override // com.json.adqualitysdk.sdk.i.l, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾇ */
        public final /* synthetic */ void mo231(JSONObject jSONObject, WebView webView, Object obj, Activity activity) {
            int i = c + 75;
            b = i % 128;
            boolean z = i % 2 == 0;
            mo231(jSONObject, webView, obj, activity);
            if (!z) {
                int i2 = 57 / 0;
            }
            int i3 = c + 57;
            b = i3 % 128;
            int i4 = i3 % 2;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.l
        /* JADX INFO: renamed from: ﾒ */
        public final void mo228(JSONObject jSONObject, WebView webView, Activity activity) {
            int i = b + 109;
            c = i % 128;
            int i2 = i % 2;
            b(a(true, new int[]{59, 12, 95, 0}, "\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0000\u0000\u0001").intern(), jSONObject, webView, null, activity);
            int i3 = b + 29;
            c = i3 % 128;
            if (i3 % 2 == 0) {
                int i4 = 86 / 0;
            }
        }

        @Override // com.json.adqualitysdk.sdk.i.l, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾒ */
        public final /* synthetic */ void mo232(JSONObject jSONObject, WebView webView, Activity activity) {
            int i = c + 81;
            b = i % 128;
            int i2 = i % 2;
            mo232(jSONObject, webView, activity);
            int i3 = b + 107;
            c = i3 % 128;
            if (i3 % 2 == 0) {
                int i4 = 94 / 0;
            }
        }

        @Override // com.json.adqualitysdk.sdk.i.l, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾒ */
        public final /* synthetic */ void mo233(JSONObject jSONObject, WebView webView, Object obj, Activity activity) {
            int i = c + 117;
            b = i % 128;
            int i2 = i % 2;
            mo233(jSONObject, webView, obj, activity);
            int i3 = c + 91;
            b = i3 % 128;
            if ((i3 % 2 != 0 ? (char) 31 : (char) 22) != 31) {
                return;
            }
            int i4 = 38 / 0;
        }
    }

    final class f extends x {
        private /* synthetic */ x a;
        private /* synthetic */ x b;

        f(x xVar, x xVar2) {
            this.a = xVar;
            this.b = xVar2;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.x
        /* JADX INFO: renamed from: ﻐ */
        public final void mo226(JSONObject jSONObject, WebView webView, View view) {
            this.a.mo226(jSONObject, webView, view);
            t.m1039(new b0(this.b, jSONObject, webView, view));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.x
        /* JADX INFO: renamed from: ﻐ */
        public final void mo233(JSONObject jSONObject, WebView webView, Object obj, View view) {
            this.a.mo233(jSONObject, webView, obj, view);
            t.m1039(new d0(this.b, jSONObject, webView, obj, view));
        }

        @Override // com.json.adqualitysdk.sdk.i.x, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﻐ */
        public final /* bridge */ /* synthetic */ void mo226(JSONObject jSONObject, WebView webView, View view) {
            mo226(jSONObject, webView, view);
        }

        @Override // com.json.adqualitysdk.sdk.i.x, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﻐ */
        public final /* synthetic */ void mo227(JSONObject jSONObject, WebView webView, Object obj, View view) {
            mo227(jSONObject, webView, obj, view);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.x
        /* JADX INFO: renamed from: ﻛ */
        public final void mo229(JSONObject jSONObject, WebView webView, View view) {
            this.a.mo229(jSONObject, webView, view);
            t.m1039(new c0(this.b, jSONObject, webView, view));
        }

        @Override // com.json.adqualitysdk.sdk.i.x, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﻛ */
        public final /* synthetic */ void mo228(JSONObject jSONObject, WebView webView, View view) {
            mo228(jSONObject, webView, view);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.x
        /* JADX INFO: renamed from: ｋ */
        public final void mo232(JSONObject jSONObject, WebView webView, View view) {
            this.a.mo232(jSONObject, webView, view);
            t.m1039(new f0(this.b, jSONObject, webView, view));
        }

        @Override // com.json.adqualitysdk.sdk.i.x
        /* JADX INFO: renamed from: ｋ */
        public final void mo231(JSONObject jSONObject, WebView webView, Object obj, View view) {
            this.a.mo231(jSONObject, webView, obj, view);
            t.m1039(new e0(this.b, jSONObject, webView, obj, view));
        }

        @Override // com.json.adqualitysdk.sdk.i.x, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ｋ */
        public final /* synthetic */ void mo229(JSONObject jSONObject, WebView webView, View view) {
            mo229(jSONObject, webView, view);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.x
        /* JADX INFO: renamed from: ﾇ */
        public final void mo230(JSONObject jSONObject, WebView webView, View view) {
            this.a.mo230(jSONObject, webView, view);
            t.m1039(new h0(this.b, jSONObject, webView, view));
        }

        @Override // com.json.adqualitysdk.sdk.i.x, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾇ */
        public final /* bridge */ /* synthetic */ void mo230(JSONObject jSONObject, WebView webView, View view) {
            mo230(jSONObject, webView, view);
        }

        @Override // com.json.adqualitysdk.sdk.i.x, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾇ */
        public final /* synthetic */ void mo231(JSONObject jSONObject, WebView webView, Object obj, View view) {
            mo231(jSONObject, webView, obj, view);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.x
        /* JADX INFO: renamed from: ﾒ */
        public final void mo228(JSONObject jSONObject, WebView webView, View view) {
            this.a.mo228(jSONObject, webView, view);
            t.m1039(new i0(this.b, jSONObject, webView, view));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.x
        /* JADX INFO: renamed from: ﾒ */
        public final void mo227(JSONObject jSONObject, WebView webView, Object obj, View view) {
            this.a.mo227(jSONObject, webView, obj, view);
            t.m1039(new g0(this.b, jSONObject, webView, obj, view));
        }

        @Override // com.json.adqualitysdk.sdk.i.x, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾒ */
        public final /* synthetic */ void mo232(JSONObject jSONObject, WebView webView, View view) {
            mo232(jSONObject, webView, view);
        }

        @Override // com.json.adqualitysdk.sdk.i.x, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾒ */
        public final /* synthetic */ void mo233(JSONObject jSONObject, WebView webView, Object obj, View view) {
            mo233(jSONObject, webView, obj, view);
        }
    }

    final class g extends s {
        private static int a = -1853240772;
        private static int b = 124;
        private static int c = -1810075395;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static byte[] f5415d = {-113, -13, -32, Ascii.FF, -23, -16, -15, -2, Ascii.EM, -44, -9, -108, 119, -122, -124, -69, 105, -121, 116, -96, 125, -124, -123, -110, -83, 104, -117, -115, 73, 68, 82, 68, 71, 115, 41, 77, -109, -62, 118, -105, -106, -59, 123, -104, -109, -95, -109, -106, -62, 120, -100, -116, -60, -73, -55, -56, -18, -92, -56, -112, -10, -12, -4, -7, -28, -9, 42, -63, 9, -13, -22, -104, -48, -45, -71, -5, -101, -48, -45, -58, -57, -13, -88, -62, -56, -57, -44, -17, -85, -57, -72, -113, 74, 77, 51, 117, Ascii.FS, 66, 63, 69, 66, 86, -109, -79, 2, -20, -2, -26, -10, -1, Ascii.DC2, -35, Ascii.CAN, -65, 7, -15, 8};

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static short[] f5416e = null;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static int f5417f = 0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static int f5418g = 1;
        private /* synthetic */ boolean h;

        g(boolean z) {
            this.h = z;
        }

        private void a(String str, JSONObject jSONObject, View view, Object obj, Activity activity) {
            cj cjVar = cj.this;
            StringBuilder sb = new StringBuilder();
            sb.append(b((-124) - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)), Color.argb(0, 0, 0, 0) + 1810075481, (byte) (ViewConfiguration.getTouchSlop() >> 8), (short) (11 - ExpandableListView.getPackedPositionType(0L)), 1853240874 - (Process.myTid() >> 22)).intern());
            sb.append(str);
            cj.K(cjVar, sb.toString(), this.h, false, Arrays.asList(jSONObject, view, obj, activity));
            int i = f5418g + 31;
            f5417f = i % 128;
            if (!(i % 2 != 0)) {
            } else {
                throw null;
            }
        }

        private static String b(int i, int i2, byte b2, short s, int i3) {
            String string;
            synchronized (com.json.adqualitysdk.sdk.i.n.f132) {
                StringBuilder sb = new StringBuilder();
                int i4 = b;
                int i5 = i + i4;
                boolean z = i5 == -1;
                if (z) {
                    byte[] bArr = f5415d;
                    i5 = bArr != null ? (byte) (bArr[a + i3] + i4) : (short) (f5416e[a + i3] + i4);
                }
                if (i5 > 0) {
                    com.json.adqualitysdk.sdk.i.n.f136 = ((i3 + i5) - 2) + a + (z ? 1 : 0);
                    com.json.adqualitysdk.sdk.i.n.f135 = b2;
                    char c2 = (char) (i2 + c);
                    com.json.adqualitysdk.sdk.i.n.f133 = c2;
                    sb.append(c2);
                    com.json.adqualitysdk.sdk.i.n.f134 = com.json.adqualitysdk.sdk.i.n.f133;
                    com.json.adqualitysdk.sdk.i.n.f137 = 1;
                    while (com.json.adqualitysdk.sdk.i.n.f137 < i5) {
                        byte[] bArr2 = f5415d;
                        if (bArr2 != null) {
                            int i6 = com.json.adqualitysdk.sdk.i.n.f136;
                            com.json.adqualitysdk.sdk.i.n.f136 = i6 - 1;
                            com.json.adqualitysdk.sdk.i.n.f133 = (char) (com.json.adqualitysdk.sdk.i.n.f134 + (((byte) (bArr2[i6] + s)) ^ com.json.adqualitysdk.sdk.i.n.f135));
                        } else {
                            short[] sArr = f5416e;
                            int i7 = com.json.adqualitysdk.sdk.i.n.f136;
                            com.json.adqualitysdk.sdk.i.n.f136 = i7 - 1;
                            com.json.adqualitysdk.sdk.i.n.f133 = (char) (com.json.adqualitysdk.sdk.i.n.f134 + (((short) (sArr[i7] + s)) ^ com.json.adqualitysdk.sdk.i.n.f135));
                        }
                        sb.append(com.json.adqualitysdk.sdk.i.n.f133);
                        com.json.adqualitysdk.sdk.i.n.f134 = com.json.adqualitysdk.sdk.i.n.f133;
                        com.json.adqualitysdk.sdk.i.n.f137++;
                    }
                }
                string = sb.toString();
            }
            return string;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.s
        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        public final void mo230(JSONObject jSONObject, View view, Activity activity) {
            int i = f5417f + 7;
            f5418g = i % 128;
            int i2 = i % 2;
            a(b(Color.blue(0) - 125, 1810075494 - (ViewConfiguration.getKeyRepeatDelay() >> 16), (byte) (ViewConfiguration.getEdgeSlop() >> 16), (short) ((-68) - TextUtils.getTrimmedLength("")), (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)) + 1853240863).intern(), jSONObject, view, null, activity);
            int i3 = f5418g + 23;
            f5417f = i3 % 128;
            int i4 = i3 % 2;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.s
        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        public final void mo231(JSONObject jSONObject, View view, Object obj, Activity activity) {
            int i = f5418g + 65;
            f5417f = i % 128;
            int i2 = i % 2;
            a(b(Color.argb(0, 0, 0, 0) - 125, (ViewConfiguration.getLongPressTimeout() >> 16) + 1810075492, (byte) (Process.myTid() >> 22), (short) (103 - TextUtils.indexOf("", "", 0, 0)), KeyEvent.keyCodeFromString("") + 1853240808).intern(), jSONObject, view, obj, activity);
            int i3 = f5418g + 119;
            f5417f = i3 % 128;
            int i4 = i3 % 2;
        }

        @Override // com.json.adqualitysdk.sdk.i.s, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﻐ */
        public final /* synthetic */ void mo226(JSONObject jSONObject, View view, Activity activity) {
            int i = f5418g + 49;
            f5417f = i % 128;
            int i2 = i % 2;
            mo226(jSONObject, view, activity);
            int i3 = f5417f + 9;
            f5418g = i3 % 128;
            if (i3 % 2 != 0) {
                return;
            }
            int i4 = 11 / 0;
        }

        @Override // com.json.adqualitysdk.sdk.i.s, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﻐ */
        public final /* synthetic */ void mo227(JSONObject jSONObject, View view, Object obj, Activity activity) {
            int i = f5417f + 13;
            f5418g = i % 128;
            char c2 = i % 2 == 0 ? (char) 29 : '$';
            mo227(jSONObject, view, obj, activity);
            if (c2 == '$') {
            } else {
                throw null;
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.s
        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
        public final void mo226(JSONObject jSONObject, View view, Activity activity) {
            int i = f5417f + 21;
            f5418g = i % 128;
            int i2 = i % 2;
            a(b((-125) - KeyEvent.keyCodeFromString(""), KeyEvent.normalizeMetaState(0) + 1810075492, (byte) ExpandableListView.getPackedPositionType(0L), (short) (119 - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1))), 1853240783 - (Process.myPid() >> 22)).intern(), jSONObject, view, null, activity);
            int i3 = f5418g + 103;
            f5417f = i3 % 128;
            int i4 = i3 % 2;
        }

        @Override // com.json.adqualitysdk.sdk.i.s, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﻛ */
        public final /* synthetic */ void mo228(JSONObject jSONObject, View view, Activity activity) {
            int i = f5417f + 101;
            f5418g = i % 128;
            boolean z = i % 2 == 0;
            mo228(jSONObject, view, activity);
            if (z) {
                int i2 = 8 / 0;
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.s
        /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
        public final void mo232(JSONObject jSONObject, View view, Activity activity) {
            int i = f5417f + 49;
            f5418g = i % 128;
            int i2 = i % 2;
            a(b((ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) - 126, 1810075492 - TextUtils.getCapsMode("", 0, 0), (byte) (ViewConfiguration.getKeyRepeatDelay() >> 16), (short) ((ViewConfiguration.getMinimumFlingVelocity() >> 16) + 59), 1853240823 - (ViewConfiguration.getTouchSlop() >> 8)).intern(), jSONObject, view, null, activity);
            int i3 = f5418g + 59;
            f5417f = i3 % 128;
            int i4 = i3 % 2;
        }

        @Override // com.json.adqualitysdk.sdk.i.s, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ｋ */
        public final /* synthetic */ void mo229(JSONObject jSONObject, View view, Activity activity) {
            int i = f5417f + 97;
            f5418g = i % 128;
            char c2 = i % 2 == 0 ? 'T' : '/';
            mo229(jSONObject, view, activity);
            if (c2 == '/') {
            } else {
                throw null;
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.s
        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public final void mo229(JSONObject jSONObject, View view, Activity activity) {
            int i = f5418g + 37;
            f5417f = i % 128;
            int i2 = i % 2;
            a(b((-125) - (ViewConfiguration.getDoubleTapTimeout() >> 16), (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) + 1810075491, (byte) (ViewConfiguration.getMaximumDrawingCacheSize() >> 24), (short) ((Process.myTid() >> 22) + 12), Color.rgb(0, 0, 0) + 1870017988).intern(), jSONObject, view, null, activity);
            int i3 = f5417f + 111;
            f5418g = i3 % 128;
            int i4 = i3 % 2;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.s
        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public final void mo227(JSONObject jSONObject, View view, Object obj, Activity activity) {
            int i = f5417f + 41;
            f5418g = i % 128;
            int i2 = i % 2;
            a(b((-124) - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)), 1810075514 - (ViewConfiguration.getTouchSlop() >> 8), (byte) (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), (short) (54 - TextUtils.getOffsetBefore("", 0)), 1853240843 - Color.blue(0)).intern(), jSONObject, view, obj, activity);
            int i3 = f5418g + 59;
            f5417f = i3 % 128;
            int i4 = i3 % 2;
        }

        @Override // com.json.adqualitysdk.sdk.i.s, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾇ */
        public final /* synthetic */ void mo230(JSONObject jSONObject, View view, Activity activity) {
            int i = f5417f + 67;
            f5418g = i % 128;
            int i2 = i % 2;
            mo230(jSONObject, view, activity);
            int i3 = f5417f + 75;
            f5418g = i3 % 128;
            if (i3 % 2 == 0) {
                throw null;
            }
        }

        @Override // com.json.adqualitysdk.sdk.i.s, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾇ */
        public final /* synthetic */ void mo231(JSONObject jSONObject, View view, Object obj, Activity activity) {
            int i = f5417f + 65;
            f5418g = i % 128;
            int i2 = i % 2;
            mo231(jSONObject, view, obj, activity);
            int i3 = f5417f + 125;
            f5418g = i3 % 128;
            int i4 = i3 % 2;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.s
        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        public final void mo228(JSONObject jSONObject, View view, Activity activity) {
            int i = f5418g + 77;
            f5417f = i % 128;
            int i2 = i % 2;
            a(b((-125) - (ViewConfiguration.getScrollBarFadeDuration() >> 16), ExpandableListView.getPackedPositionChild(0L) + 1810075514, (byte) KeyEvent.getDeadChar(0, 0), (short) (KeyEvent.normalizeMetaState(0) + 9), 1853240831 - (ViewConfiguration.getTapTimeout() >> 16)).intern(), jSONObject, view, null, activity);
            int i3 = f5418g + 81;
            f5417f = i3 % 128;
            int i4 = i3 % 2;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.s
        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        public final void mo233(JSONObject jSONObject, View view, Object obj, Activity activity) {
            int i = f5418g + 39;
            f5417f = i % 128;
            int i2 = i % 2;
            a(b((-125) - (Process.myTid() >> 22), View.MeasureSpec.getSize(0) + 1810075492, (byte) (ViewCompat.MEASURED_STATE_MASK - Color.rgb(0, 0, 0)), (short) ((SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)) - 75), 13839 - AndroidCharacter.getMirror('0')).intern(), jSONObject, view, obj, activity);
            int i3 = f5418g + 49;
            f5417f = i3 % 128;
            int i4 = i3 % 2;
        }

        @Override // com.json.adqualitysdk.sdk.i.s, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾒ */
        public final /* synthetic */ void mo232(JSONObject jSONObject, View view, Activity activity) {
            int i = f5418g + 97;
            f5417f = i % 128;
            int i2 = i % 2;
            mo232(jSONObject, view, activity);
            int i3 = f5417f + 25;
            f5418g = i3 % 128;
            int i4 = i3 % 2;
        }

        @Override // com.json.adqualitysdk.sdk.i.s, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾒ */
        public final /* synthetic */ void mo233(JSONObject jSONObject, View view, Object obj, Activity activity) {
            int i = f5418g + 123;
            f5417f = i % 128;
            boolean z = i % 2 != 0;
            mo233(jSONObject, view, obj, activity);
            if (z) {
                int i2 = 47 / 0;
            }
            int i3 = f5417f + 19;
            f5418g = i3 % 128;
            if ((i3 % 2 != 0 ? '\r' : (char) 0) == '\r') {
            } else {
                throw null;
            }
        }
    }

    final class h extends s {
        private /* synthetic */ s a;
        private /* synthetic */ s b;

        h(s sVar, s sVar2) {
            this.a = sVar;
            this.b = sVar2;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.s
        /* JADX INFO: renamed from: ﻐ */
        public final void mo230(JSONObject jSONObject, View view, Activity activity) {
            this.a.mo230(jSONObject, view, activity);
            t.m1039(new h0(this.b, jSONObject, view, activity));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.s
        /* JADX INFO: renamed from: ﻐ */
        public final void mo231(JSONObject jSONObject, View view, Object obj, Activity activity) {
            this.a.mo231(jSONObject, view, obj, activity);
            t.m1039(new e0(this.b, jSONObject, view, obj, activity));
        }

        @Override // com.json.adqualitysdk.sdk.i.s, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﻐ */
        public final /* synthetic */ void mo226(JSONObject jSONObject, View view, Activity activity) {
            mo226(jSONObject, view, activity);
        }

        @Override // com.json.adqualitysdk.sdk.i.s, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﻐ */
        public final /* synthetic */ void mo227(JSONObject jSONObject, View view, Object obj, Activity activity) {
            mo227(jSONObject, view, obj, activity);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.s
        /* JADX INFO: renamed from: ﻛ */
        public final void mo226(JSONObject jSONObject, View view, Activity activity) {
            this.a.mo226(jSONObject, view, activity);
            t.m1039(new b0(this.b, jSONObject, view, activity));
        }

        @Override // com.json.adqualitysdk.sdk.i.s, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﻛ */
        public final /* synthetic */ void mo228(JSONObject jSONObject, View view, Activity activity) {
            mo228(jSONObject, view, activity);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.s
        /* JADX INFO: renamed from: ｋ */
        public final void mo232(JSONObject jSONObject, View view, Activity activity) {
            this.a.mo232(jSONObject, view, activity);
            t.m1039(new f0(this.b, jSONObject, view, activity));
        }

        @Override // com.json.adqualitysdk.sdk.i.s, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ｋ */
        public final /* synthetic */ void mo229(JSONObject jSONObject, View view, Activity activity) {
            mo229(jSONObject, view, activity);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.s
        /* JADX INFO: renamed from: ﾇ */
        public final void mo229(JSONObject jSONObject, View view, Activity activity) {
            this.a.mo229(jSONObject, view, activity);
            t.m1039(new c0(this.b, jSONObject, view, activity));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.s
        /* JADX INFO: renamed from: ﾇ */
        public final void mo227(JSONObject jSONObject, View view, Object obj, Activity activity) {
            this.a.mo227(jSONObject, view, obj, activity);
            t.m1039(new g0(this.b, jSONObject, view, obj, activity));
        }

        @Override // com.json.adqualitysdk.sdk.i.s, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾇ */
        public final /* synthetic */ void mo230(JSONObject jSONObject, View view, Activity activity) {
            mo230(jSONObject, view, activity);
        }

        @Override // com.json.adqualitysdk.sdk.i.s, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾇ */
        public final /* synthetic */ void mo231(JSONObject jSONObject, View view, Object obj, Activity activity) {
            mo231(jSONObject, view, obj, activity);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.s
        /* JADX INFO: renamed from: ﾒ */
        public final void mo228(JSONObject jSONObject, View view, Activity activity) {
            this.a.mo228(jSONObject, view, activity);
            t.m1039(new i0(this.b, jSONObject, view, activity));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.json.adqualitysdk.sdk.i.s
        /* JADX INFO: renamed from: ﾒ */
        public final void mo233(JSONObject jSONObject, View view, Object obj, Activity activity) {
            this.a.mo233(jSONObject, view, obj, activity);
            t.m1039(new d0(this.b, jSONObject, view, obj, activity));
        }

        @Override // com.json.adqualitysdk.sdk.i.s, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾒ */
        public final /* synthetic */ void mo232(JSONObject jSONObject, View view, Activity activity) {
            mo232(jSONObject, view, activity);
        }

        @Override // com.json.adqualitysdk.sdk.i.s, com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾒ */
        public final /* bridge */ /* synthetic */ void mo233(JSONObject jSONObject, View view, Object obj, Activity activity) {
            mo233(jSONObject, view, obj, activity);
        }
    }

    final class i extends je {
        i() {
        }

        @Override // com.json.adqualitysdk.sdk.i.je, android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            cj cjVar = cj.this;
            cjVar.m453(ib.f84, cj.u(cjVar, activity, null));
        }

        @Override // com.json.adqualitysdk.sdk.i.je, android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
            cj cjVar = cj.this;
            cjVar.m453(ib.f88, cj.u(cjVar, activity, null));
        }
    }

    final class j extends ig {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ String f5419d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private /* synthetic */ List f5420e;

        j(String str, List list) {
            this.f5419d = str;
            this.f5420e = list;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            cj.K(cj.this, this.f5419d, false, false, this.f5420e);
        }
    }

    final class k implements jf {
        private static char[] a = {342, 341, 301, 330, 348, 346, 307, 347, 313, 332, 345, 331, 296, 343, 336, 277};
        private static int b = 231;
        private static boolean c = true;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static boolean f5422d = true;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static int f5423e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static int f5424f = 1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private /* synthetic */ List f5425g;

        final class a extends il {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private /* synthetic */ String f5426d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private /* synthetic */ Activity f5427e;

            a(String str, Activity activity) {
                this.f5426d = str;
                this.f5427e = activity;
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                cj.K(cj.this, this.f5426d, false, false, Collections.singletonList(this.f5427e));
            }
        }

        k(List list) {
            this.f5425g = list;
        }

        private static String a(int[] iArr, String str, int i, String str2) throws UnsupportedEncodingException {
            Object bytes = str2;
            if (str2 != null) {
                bytes = str2.getBytes("ISO-8859-1");
            }
            byte[] bArr = (byte[]) bytes;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (com.json.adqualitysdk.sdk.i.k.f131) {
                char[] cArr2 = a;
                int i2 = b;
                if (f5422d) {
                    int length = bArr.length;
                    com.json.adqualitysdk.sdk.i.k.f129 = length;
                    char[] cArr3 = new char[length];
                    com.json.adqualitysdk.sdk.i.k.f130 = 0;
                    while (com.json.adqualitysdk.sdk.i.k.f130 < com.json.adqualitysdk.sdk.i.k.f129) {
                        int i3 = com.json.adqualitysdk.sdk.i.k.f130;
                        int i4 = com.json.adqualitysdk.sdk.i.k.f129 - 1;
                        int i5 = com.json.adqualitysdk.sdk.i.k.f130;
                        cArr3[i3] = (char) (cArr2[bArr[i4 - i5] + i] - i2);
                        com.json.adqualitysdk.sdk.i.k.f130 = i5 + 1;
                    }
                    return new String(cArr3);
                }
                if (c) {
                    int length2 = cArr.length;
                    com.json.adqualitysdk.sdk.i.k.f129 = length2;
                    char[] cArr4 = new char[length2];
                    com.json.adqualitysdk.sdk.i.k.f130 = 0;
                    while (com.json.adqualitysdk.sdk.i.k.f130 < com.json.adqualitysdk.sdk.i.k.f129) {
                        int i6 = com.json.adqualitysdk.sdk.i.k.f130;
                        int i7 = com.json.adqualitysdk.sdk.i.k.f129 - 1;
                        int i8 = com.json.adqualitysdk.sdk.i.k.f130;
                        cArr4[i6] = (char) (cArr2[cArr[i7 - i8] - i] - i2);
                        com.json.adqualitysdk.sdk.i.k.f130 = i8 + 1;
                    }
                    return new String(cArr4);
                }
                int length3 = iArr.length;
                com.json.adqualitysdk.sdk.i.k.f129 = length3;
                char[] cArr5 = new char[length3];
                com.json.adqualitysdk.sdk.i.k.f130 = 0;
                while (com.json.adqualitysdk.sdk.i.k.f130 < com.json.adqualitysdk.sdk.i.k.f129) {
                    int i9 = com.json.adqualitysdk.sdk.i.k.f130;
                    int i10 = com.json.adqualitysdk.sdk.i.k.f129 - 1;
                    int i11 = com.json.adqualitysdk.sdk.i.k.f130;
                    cArr5[i9] = (char) (cArr2[iArr[i10 - i11] - i] - i2);
                    com.json.adqualitysdk.sdk.i.k.f130 = i11 + 1;
                }
                return new String(cArr5);
            }
        }

        private void b(String str, Activity activity, List<String> list) {
            int i = f5423e + 115;
            f5424f = i % 128;
            int i2 = i % 2;
            if (cj.x(activity, list)) {
                StringBuilder sb = new StringBuilder();
                sb.append(a(null, null, 127 - (ViewConfiguration.getEdgeSlop() >> 16), "\u0090\u008b\u008a\u0082\u008a\u0088\u0086\u008f\u0087\u0086\u0085\u0084\u0081\u0083\u008e\u008e\u008d").intern());
                sb.append(str);
                String string = sb.toString();
                cj.K(cj.this, string, true, false, Collections.singletonList(activity));
                t.m1039(new a(string, activity));
            }
            int i3 = f5424f + 29;
            f5423e = i3 % 128;
            if ((i3 % 2 != 0 ? '@' : '/') == '/') {
            } else {
                throw null;
            }
        }

        @Override // com.json.adqualitysdk.sdk.i.jf
        /* JADX INFO: renamed from: ﻐ */
        public final void mo268(Activity activity) {
            int i = f5423e + 41;
            f5424f = i % 128;
            b(a(null, null, (i % 2 == 0 ? 'M' : 'K') != 'M' ? (Process.myTid() >> 22) + 127 : 115 >>> (Process.myTid() / 8), "\u008c\u008a\u008b\u0081\u0088\u0086\u008a\u0089\u0086\u0085\u0084\u0081\u0083\u0082\u0081").intern(), activity, this.f5425g);
            int i2 = f5423e + 105;
            f5424f = i2 % 128;
            int i3 = i2 % 2;
        }

        @Override // com.json.adqualitysdk.sdk.i.jf
        /* JADX INFO: renamed from: ｋ */
        public final void mo269(Activity activity) {
            int i = f5424f + 99;
            f5423e = i % 128;
            int i2 = i % 2;
            b(a(null, null, (ViewConfiguration.getFadingEdgeLength() >> 16) + 127, "\u0088\u0086\u0081\u0087\u0086\u0085\u0084\u0081\u0083\u0082\u0081").intern(), activity, this.f5425g);
            int i3 = f5424f + 109;
            f5423e = i3 % 128;
            if (i3 % 2 != 0) {
                throw null;
            }
        }
    }

    final class l implements io {
        private static char[] a = {'R', 'e', 'm', 'o', 't', 'A', 'd', 'L', 'i', 's', 'n', 'r', 'E', ' ', 'g', 'w', 'b', 'V', 'f', 'S', 'T', 'U', 'W', 'X', 'Y'};
        private static char b = 5;
        private static int c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static int f5429d = 1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private /* synthetic */ dn f5430e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private /* synthetic */ String f5431f;

        l(dn dnVar, String str) {
            this.f5430e = dnVar;
            this.f5431f = str;
        }

        private static String a(byte b2, String str, int i) {
            String str2;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (com.json.adqualitysdk.sdk.i.g.f56) {
                char[] cArr2 = a;
                char c2 = b;
                char[] cArr3 = new char[i];
                if (i % 2 != 0) {
                    i--;
                    cArr3[i] = (char) (cArr[i] - b2);
                }
                if (i > 1) {
                    com.json.adqualitysdk.sdk.i.g.f60 = 0;
                    while (true) {
                        int i2 = com.json.adqualitysdk.sdk.i.g.f60;
                        if (i2 >= i) {
                            break;
                        }
                        com.json.adqualitysdk.sdk.i.g.f58 = cArr[i2];
                        com.json.adqualitysdk.sdk.i.g.f62 = cArr[com.json.adqualitysdk.sdk.i.g.f60 + 1];
                        if (com.json.adqualitysdk.sdk.i.g.f58 == com.json.adqualitysdk.sdk.i.g.f62) {
                            cArr3[com.json.adqualitysdk.sdk.i.g.f60] = (char) (com.json.adqualitysdk.sdk.i.g.f58 - b2);
                            cArr3[com.json.adqualitysdk.sdk.i.g.f60 + 1] = (char) (com.json.adqualitysdk.sdk.i.g.f62 - b2);
                        } else {
                            com.json.adqualitysdk.sdk.i.g.f59 = com.json.adqualitysdk.sdk.i.g.f58 / c2;
                            com.json.adqualitysdk.sdk.i.g.f55 = com.json.adqualitysdk.sdk.i.g.f58 % c2;
                            com.json.adqualitysdk.sdk.i.g.f61 = com.json.adqualitysdk.sdk.i.g.f62 / c2;
                            com.json.adqualitysdk.sdk.i.g.f57 = com.json.adqualitysdk.sdk.i.g.f62 % c2;
                            if (com.json.adqualitysdk.sdk.i.g.f55 == com.json.adqualitysdk.sdk.i.g.f57) {
                                com.json.adqualitysdk.sdk.i.g.f59 = ((com.json.adqualitysdk.sdk.i.g.f59 + c2) - 1) % c2;
                                com.json.adqualitysdk.sdk.i.g.f61 = ((com.json.adqualitysdk.sdk.i.g.f61 + c2) - 1) % c2;
                                int i3 = (com.json.adqualitysdk.sdk.i.g.f59 * c2) + com.json.adqualitysdk.sdk.i.g.f55;
                                int i4 = (com.json.adqualitysdk.sdk.i.g.f61 * c2) + com.json.adqualitysdk.sdk.i.g.f57;
                                int i5 = com.json.adqualitysdk.sdk.i.g.f60;
                                cArr3[i5] = cArr2[i3];
                                cArr3[i5 + 1] = cArr2[i4];
                            } else if (com.json.adqualitysdk.sdk.i.g.f59 == com.json.adqualitysdk.sdk.i.g.f61) {
                                com.json.adqualitysdk.sdk.i.g.f55 = ((com.json.adqualitysdk.sdk.i.g.f55 + c2) - 1) % c2;
                                com.json.adqualitysdk.sdk.i.g.f57 = ((com.json.adqualitysdk.sdk.i.g.f57 + c2) - 1) % c2;
                                int i6 = (com.json.adqualitysdk.sdk.i.g.f59 * c2) + com.json.adqualitysdk.sdk.i.g.f55;
                                int i7 = (com.json.adqualitysdk.sdk.i.g.f61 * c2) + com.json.adqualitysdk.sdk.i.g.f57;
                                int i8 = com.json.adqualitysdk.sdk.i.g.f60;
                                cArr3[i8] = cArr2[i6];
                                cArr3[i8 + 1] = cArr2[i7];
                            } else {
                                int i9 = (com.json.adqualitysdk.sdk.i.g.f59 * c2) + com.json.adqualitysdk.sdk.i.g.f57;
                                int i10 = (com.json.adqualitysdk.sdk.i.g.f61 * c2) + com.json.adqualitysdk.sdk.i.g.f55;
                                int i11 = com.json.adqualitysdk.sdk.i.g.f60;
                                cArr3[i11] = cArr2[i9];
                                cArr3[i11 + 1] = cArr2[i10];
                            }
                        }
                        com.json.adqualitysdk.sdk.i.g.f60 += 2;
                    }
                }
                str2 = new String(cArr3);
            }
            return str2;
        }

        @Override // com.json.adqualitysdk.sdk.i.io
        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        public final List<WebView> mo482(Object obj) {
            List<WebView> list;
            int i = f5429d + 121;
            c = i % 128;
            try {
                if (!(i % 2 != 0)) {
                    list = (List) this.f5430e.m667(cj.r(cj.this), cj.this, Collections.singletonList(obj)).m674();
                } else {
                    list = (List) this.f5430e.m667(cj.r(cj.this), cj.this, Collections.singletonList(obj)).m674();
                    int i2 = 55 / 0;
                }
                return list;
            } catch (Exception unused) {
                String strIntern = a((byte) (8 - ((Process.getThreadPriority(0) + 20) >> 6)), "\u0001\u0002\u0003\u0004\u0000\u0002\u0006\u0007\b\t\u000e\t\u0000\u000b\u0006\u0010", ImageFormat.getBitsPerPixel(0) + 17).intern();
                StringBuilder sb = new StringBuilder();
                sb.append(a((byte) (37 - TextUtils.indexOf((CharSequence) "", '0', 0, 0)), "\r\f\r\u0001\f\u000e\u000b\u0004\u009a\u009a\u0005\r\n\u000e\u0010\u0000\u0011\u0012\u0006\u0003\u0013\u0005\u0012\u0017\r\u0001\u0003\f", 29 - (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1))).intern());
                sb.append(this.f5431f);
                com.json.adqualitysdk.sdk.i.m.m1031(strIntern, sb.toString());
                return null;
            }
        }
    }

    final class m extends ig {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ String f5433d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private /* synthetic */ List f5434e;

        m(String str, List list) {
            this.f5433d = str;
            this.f5434e = list;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            cj.K(cj.this, this.f5433d, true, false, this.f5434e);
        }
    }

    final class n extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ ig f5436d;

        n(ig igVar) {
            this.f5436d = igVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            t.m1044(this.f5436d);
        }
    }

    final class o extends je {
        private static int[] a = {-1480823241, -1911918975, 499235997, -1713689845, -126220798, -904945927, 228323161, 842683092, 2105891174, -1503267306, 1277712712, -1641239137, 1001718292, 1571650744, 451314041, -1386242919, 1574793988, -756681539};
        private static long b = 6253206462656707119L;
        private static int c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static int f5437d = 1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private /* synthetic */ List f5438e;

        final class a extends il {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private /* synthetic */ String f5440d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private /* synthetic */ List f5441e;

            a(String str, List list) {
                this.f5440d = str;
                this.f5441e = list;
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                o.c(o.this, this.f5440d, this.f5441e);
            }
        }

        o(List list) {
            this.f5438e = list;
        }

        private void a(String str, List<Object> list) {
            g(str, true, list);
            t.m1039(new a(str, list));
            int i = c + 107;
            f5437d = i % 128;
            if ((i % 2 == 0 ? '1' : b4.R) != '=') {
                int i2 = 4 / 0;
            }
        }

        private static String b(int[] iArr, int i) {
            String str;
            synchronized (com.json.adqualitysdk.sdk.i.b.f33) {
                char[] cArr = new char[4];
                char[] cArr2 = new char[iArr.length << 1];
                int[] iArr2 = (int[]) a.clone();
                com.json.adqualitysdk.sdk.i.b.f34 = 0;
                while (true) {
                    int i2 = com.json.adqualitysdk.sdk.i.b.f34;
                    if (i2 < iArr.length) {
                        cArr[0] = (char) (iArr[i2] >> 16);
                        cArr[1] = (char) iArr[i2];
                        cArr[2] = (char) (iArr[i2 + 1] >> 16);
                        cArr[3] = (char) iArr[i2 + 1];
                        com.json.adqualitysdk.sdk.i.b.f31 = (cArr[0] << 16) + cArr[1];
                        com.json.adqualitysdk.sdk.i.b.f32 = (cArr[2] << 16) + cArr[3];
                        com.json.adqualitysdk.sdk.i.b.m390(iArr2);
                        for (int i3 = 0; i3 < 16; i3++) {
                            int i4 = com.json.adqualitysdk.sdk.i.b.f31 ^ iArr2[i3];
                            com.json.adqualitysdk.sdk.i.b.f31 = i4;
                            com.json.adqualitysdk.sdk.i.b.f32 = com.json.adqualitysdk.sdk.i.b.m391(i4) ^ com.json.adqualitysdk.sdk.i.b.f32;
                            int i5 = com.json.adqualitysdk.sdk.i.b.f31;
                            com.json.adqualitysdk.sdk.i.b.f31 = com.json.adqualitysdk.sdk.i.b.f32;
                            com.json.adqualitysdk.sdk.i.b.f32 = i5;
                        }
                        int i6 = com.json.adqualitysdk.sdk.i.b.f31;
                        com.json.adqualitysdk.sdk.i.b.f31 = com.json.adqualitysdk.sdk.i.b.f32;
                        com.json.adqualitysdk.sdk.i.b.f32 = i6;
                        com.json.adqualitysdk.sdk.i.b.f32 = i6 ^ iArr2[16];
                        com.json.adqualitysdk.sdk.i.b.f31 ^= iArr2[17];
                        int i7 = com.json.adqualitysdk.sdk.i.b.f32;
                        int i8 = com.json.adqualitysdk.sdk.i.b.f31;
                        cArr[0] = (char) (i8 >>> 16);
                        cArr[1] = (char) i8;
                        int i9 = com.json.adqualitysdk.sdk.i.b.f32;
                        cArr[2] = (char) (i9 >>> 16);
                        cArr[3] = (char) i9;
                        com.json.adqualitysdk.sdk.i.b.m390(iArr2);
                        int i10 = com.json.adqualitysdk.sdk.i.b.f34;
                        cArr2[i10 << 1] = cArr[0];
                        cArr2[(i10 << 1) + 1] = cArr[1];
                        cArr2[(i10 << 1) + 2] = cArr[2];
                        cArr2[(i10 << 1) + 3] = cArr[3];
                        com.json.adqualitysdk.sdk.i.b.f34 = i10 + 2;
                    } else {
                        str = new String(cArr2, 0, i);
                    }
                }
            }
            return str;
        }

        static /* synthetic */ void c(o oVar, String str, List list) {
            int i = f5437d + 17;
            c = i % 128;
            int i2 = i % 2;
            oVar.g(str, false, list);
            int i3 = f5437d + 45;
            c = i3 % 128;
            if (i3 % 2 != 0) {
                int i4 = 31 / 0;
            }
        }

        private void d(String str, Activity activity) {
            int i = c + 103;
            f5437d = i % 128;
            int i2 = i % 2;
            a(str, Collections.singletonList(activity));
            int i3 = f5437d + 63;
            c = i3 % 128;
            int i4 = i3 % 2;
        }

        private static String e(String str, int i) {
            String str2;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (com.json.adqualitysdk.sdk.i.f.f54) {
                char[] cArrM713 = com.json.adqualitysdk.sdk.i.f.m713(b, cArr, i);
                com.json.adqualitysdk.sdk.i.f.f52 = 4;
                while (true) {
                    int i2 = com.json.adqualitysdk.sdk.i.f.f52;
                    if (i2 < cArrM713.length) {
                        com.json.adqualitysdk.sdk.i.f.f53 = i2 - 4;
                        cArrM713[com.json.adqualitysdk.sdk.i.f.f52] = (char) (((long) (cArrM713[r1] ^ cArrM713[r1 % 4])) ^ (((long) com.json.adqualitysdk.sdk.i.f.f53) * b));
                        com.json.adqualitysdk.sdk.i.f.f52++;
                    } else {
                        str2 = new String(cArrM713, 4, cArrM713.length - 4);
                    }
                }
            }
            return str2;
        }

        private void f(String str, Activity activity, Bundle bundle) {
            int i = f5437d + 101;
            c = i % 128;
            int i2 = i % 2;
            a(str, Arrays.asList(activity, bundle));
            int i3 = f5437d + 105;
            c = i3 % 128;
            int i4 = i3 % 2;
        }

        private void g(String str, boolean z, List<Object> list) {
            cj cjVar = cj.this;
            StringBuilder sb = new StringBuilder();
            sb.append(e("㮰\uee34\ufbd1⫔㯱鑸\u0ffb䐰퍺貶⚿緤\uea84ꗺ㹡檴臧\uda2e唠ɹ餥\uf305", 1 - Drawable.resolveOpacity(0, 0)).intern());
            sb.append(str);
            cj.K(cjVar, sb.toString(), z, false, list);
            int i = c + 35;
            f5437d = i % 128;
            if (!(i % 2 == 0)) {
                return;
            }
            int i2 = 50 / 0;
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0038  */
        @Override // com.json.adqualitysdk.sdk.i.je, android.app.Application.ActivityLifecycleCallbacks
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void onActivityCreated(android.app.Activity r5, android.os.Bundle r6) {
            /*
                r4 = this;
                int r0 = com.ironsource.adqualitysdk.sdk.i.cj.o.f5437d
                int r0 = r0 + 29
                int r1 = r0 % 128
                com.ironsource.adqualitysdk.sdk.i.cj.o.c = r1
                int r0 = r0 % 2
                r1 = 83
                r2 = 1
                if (r0 == 0) goto L11
                r0 = 1
                goto L13
            L11:
                r0 = 83
            L13:
                if (r0 == r1) goto L28
                java.util.List r0 = r4.f5438e
                boolean r0 = com.json.adqualitysdk.sdk.i.cj.x(r5, r0)
                r1 = 9
                r3 = 0
                int r1 = r1 / r3
                if (r0 == 0) goto L22
                goto L23
            L22:
                r3 = 1
            L23:
                if (r3 == r2) goto L4d
                goto L38
            L26:
                r5 = move-exception
                throw r5
            L28:
                java.util.List r0 = r4.f5438e
                boolean r0 = com.json.adqualitysdk.sdk.i.cj.x(r5, r0)
                r1 = 7
                if (r0 == 0) goto L33
                r0 = 7
                goto L35
            L33:
                r0 = 12
            L35:
                if (r0 == r1) goto L38
                goto L4d
            L38:
                r0 = 48
                char r0 = android.text.AndroidCharacter.getMirror(r0)
                int r0 = 49 - r0
                java.lang.String r1 = "읝鲹囸쎞윲\ue6f8ꋧ군⾕︻讔钾ᙑ흧鍭菩紌ꢻ\uf81e\ueb3a旉"
                java.lang.String r0 = e(r1, r0)
                java.lang.String r0 = r0.intern()
                r4.f(r0, r5, r6)
            L4d:
                int r5 = com.ironsource.adqualitysdk.sdk.i.cj.o.c
                int r5 = r5 + 121
                int r6 = r5 % 128
                com.ironsource.adqualitysdk.sdk.i.cj.o.f5437d = r6
                int r5 = r5 % 2
                if (r5 == 0) goto L5a
                return
            L5a:
                r5 = 0
                throw r5     // Catch: java.lang.Throwable -> L5c
            L5c:
                r5 = move-exception
                throw r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.cj.o.onActivityCreated(android.app.Activity, android.os.Bundle):void");
        }

        @Override // com.json.adqualitysdk.sdk.i.je, android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            int i = f5437d + 77;
            c = i % 128;
            int i2 = i % 2;
            if (!(!cj.x(activity, this.f5438e))) {
                int i3 = f5437d + 85;
                c = i3 % 128;
                int i4 = i3 % 2;
                d(e("䊍某喊㎨䋢ᶑꆕ嵆ꩅՒ裦撈鎁Ⰾ逘珈\uf8ca叇ﭪᬆ\ue004窪슠", (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1))).intern(), activity);
                int i5 = f5437d + 99;
                c = i5 % 128;
                int i6 = i5 % 2;
            }
        }

        @Override // com.json.adqualitysdk.sdk.i.je, android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            int i = f5437d + 53;
            c = i % 128;
            if (i % 2 != 0) {
                cj.x(activity, this.f5438e);
                throw null;
            }
            if (cj.x(activity, this.f5438e) ? false : true) {
                return;
            }
            d(b(new int[]{518069473, 943977482, -1265398805, -1416494087, -666467536, 1959148701, 1059455903, -180778032}, TextUtils.indexOf((CharSequence) "", '0', 0) + 17).intern(), activity);
            int i2 = f5437d + 63;
            c = i2 % 128;
            int i3 = i2 % 2;
        }

        @Override // com.json.adqualitysdk.sdk.i.je, android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
            if (cj.x(activity, this.f5438e)) {
                int i = c + 105;
                f5437d = i % 128;
                int i2 = i % 2;
                d(b(new int[]{518069473, 943977482, -1265398805, -1416494087, -1887755947, 637703213, -2082641305, -1129263551, 1896610003, 77469765}, 17 - (ViewConfiguration.getScrollBarFadeDuration() >> 16)).intern(), activity);
            }
            int i3 = f5437d + 81;
            c = i3 % 128;
            if ((i3 % 2 != 0 ? '%' : 'P') != '%') {
            } else {
                throw null;
            }
        }

        @Override // com.json.adqualitysdk.sdk.i.je, android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            int i = c + 103;
            f5437d = i % 128;
            int i2 = i % 2;
            if ((cj.x(activity, this.f5438e) ? '8' : '^') != '8') {
                return;
            }
            f(b(new int[]{518069473, 943977482, -1265398805, -1416494087, 855366098, -1097698644, 1893819285, 192117288, -12883539, 392242410, 169684494, -1132440538, 1166648961, 345409414}, (ViewConfiguration.getJumpTapTimeout() >> 16) + 27).intern(), activity, bundle);
            int i3 = f5437d + 119;
            c = i3 % 128;
            int i4 = i3 % 2;
        }

        @Override // com.json.adqualitysdk.sdk.i.je, android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            int i = f5437d + 19;
            c = i % 128;
            if ((i % 2 != 0 ? (char) 4 : (char) 17) != 17) {
                int i2 = 83 / 0;
                if (!cj.x(activity, this.f5438e)) {
                    return;
                }
            } else if (!cj.x(activity, this.f5438e)) {
                return;
            }
            d(e("锺\uf2ac퐻\ue753镕裭․覽緲逮ॗ끳䐶륲ᆾꜢ⽯욽竝쿷㞮", 1 - Color.argb(0, 0, 0, 0)).intern(), activity);
            int i3 = c + 43;
            f5437d = i3 % 128;
            int i4 = i3 % 2;
        }

        @Override // com.json.adqualitysdk.sdk.i.je, android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
            if ((cj.x(activity, this.f5438e) ? ';' : 'P') != ';') {
                return;
            }
            int i = f5437d + 119;
            c = i % 128;
            d(e("쁽糄䯬픜쀒څ뿳믲⢵Ṇ隀舼ᅱ㜚蹩镭稦䣗\ue50eﶸ择", (SystemClock.uptimeMillis() > (i % 2 != 0 ? 1L : 0L) ? 1 : (SystemClock.uptimeMillis() == (i % 2 != 0 ? 1L : 0L) ? 0 : -1))).intern(), activity);
            int i2 = f5437d + 7;
            c = i2 % 128;
            int i3 = i2 % 2;
        }

        @Override // com.json.adqualitysdk.sdk.i.je, com.json.adqualitysdk.sdk.i.jc
        /* JADX INFO: renamed from: ﻛ */
        public final void mo272(Activity activity) {
            int i = f5437d + 101;
            c = i % 128;
            int i2 = i % 2;
            d(b(new int[]{2064346502, -1710766077, 853747097, 1908749641, 1340615956, -1016475605, -1080283507, -478250113, -905798074, 621941063, 1896610003, 77469765}, ExpandableListView.getPackedPositionGroup(0L) + 21).intern(), activity);
            int i3 = c + 5;
            f5437d = i3 % 128;
            int i4 = i3 % 2;
        }

        @Override // com.json.adqualitysdk.sdk.i.je, com.json.adqualitysdk.sdk.i.jc
        /* JADX INFO: renamed from: ﾒ */
        public final void mo273(Activity activity) {
            int i = c + 7;
            f5437d = i % 128;
            int i2 = i % 2;
            d(e("礅㎺摐\ueb6a祪䧻遏薗釉儃뤯뱗ꠈ硯ꇨꬊ썕ލ쪭쏭\udb9a⻗\uf37b並\uf2db㘎\ue42fᄽഉ", 1 - (ViewConfiguration.getPressedStateDuration() >> 16)).intern(), activity);
            int i3 = f5437d + 7;
            c = i3 % 128;
            if ((i3 % 2 != 0 ? '5' : 'b') == 'b') {
            } else {
                throw null;
            }
        }
    }

    final class p extends ig {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ String f5443d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private /* synthetic */ List f5444e;

        p(String str, List list) {
            this.f5443d = str;
            this.f5444e = list;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            cj.K(cj.this, this.f5443d, false, true, this.f5444e);
        }
    }

    protected cj(ci ciVar, cz czVar, az azVar, ho hoVar, dr drVar) {
        this.i = hoVar;
        dr drVar2 = new dr(new HashMap(), drVar, true);
        this.j = drVar2;
        drVar2.m684(m452().m759());
        drVar.m686(hoVar.m758(), this);
        this.k = czVar;
        this.l = azVar;
        this.m = a();
        this.p = ciVar;
        this.r = new u();
        n(z((byte) ((ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)) + 44), "\u0001\u0002\u0003\u0004\u0005\u0002\u0006\u0000\b\t\u000b\u0002\u0003\b\u0004\b\r\t\u000b\t\u0001\u000b\u0007\u0014\u000f\u0016\u0092", (ViewConfiguration.getWindowTouchSlop() >> 8) + 27).intern(), new ArrayList());
        d();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x006a, code lost:
    
        if ((r7 == null) != true) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0070, code lost:
    
        return r7.getName();
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0071, code lost:
    
        r0 = com.json.adqualitysdk.sdk.i.cj.f5406g + 21;
        com.json.adqualitysdk.sdk.i.cj.h = r0 % 128;
        r0 = r0 % 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x007c, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x003c, code lost:
    
        if (r7 != null) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String A(java.lang.String r7) {
        /*
            r6 = this;
            int r0 = com.json.adqualitysdk.sdk.i.cj.f5406g
            int r0 = r0 + 121
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.cj.h = r1
            int r0 = r0 % 2
            r1 = 91
            if (r0 != 0) goto L11
            r0 = 91
            goto L13
        L11:
            r0 = 47
        L13:
            r2 = 0
            java.lang.String r4 = "\u000b\u0013\u0014\u0007\u0099\u0099"
            if (r0 == r1) goto L3f
            com.ironsource.adqualitysdk.sdk.i.az r0 = r6.m450()
            int r1 = android.view.ViewConfiguration.getDoubleTapTimeout()
            int r1 = r1 >> 16
            int r1 = 38 - r1
            byte r1 = (byte) r1
            int r2 = android.widget.ExpandableListView.getPackedPositionType(r2)
            int r2 = 6 - r2
            java.lang.String r1 = z(r1, r4, r2)
            java.lang.String r1 = r1.intern()
            java.lang.String r7 = com.json.adqualitysdk.sdk.i.jz.m994(r7, r1)
            java.lang.Class r7 = r0.m387(r7)
            if (r7 == 0) goto L71
            goto L6c
        L3f:
            com.ironsource.adqualitysdk.sdk.i.az r0 = r6.m450()
            r1 = 83
            int r5 = android.view.ViewConfiguration.getDoubleTapTimeout()
            int r5 = r5 << 104
            int r1 = r1 >>> r5
            byte r1 = (byte) r1
            r5 = 106(0x6a, float:1.49E-43)
            int r2 = android.widget.ExpandableListView.getPackedPositionType(r2)
            int r5 = r5 % r2
            java.lang.String r1 = z(r1, r4, r5)
            java.lang.String r1 = r1.intern()
            java.lang.String r7 = com.json.adqualitysdk.sdk.i.jz.m994(r7, r1)
            java.lang.Class r7 = r0.m387(r7)
            r0 = 1
            if (r7 == 0) goto L69
            r1 = 0
            goto L6a
        L69:
            r1 = 1
        L6a:
            if (r1 == r0) goto L71
        L6c:
            java.lang.String r7 = r7.getName()
            return r7
        L71:
            r7 = 0
            int r0 = com.json.adqualitysdk.sdk.i.cj.f5406g
            int r0 = r0 + 21
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.cj.h = r1
            int r0 = r0 % 2
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.cj.A(java.lang.String):java.lang.String");
    }

    private static String B(String str, int i2) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (com.json.adqualitysdk.sdk.i.o.f139) {
            char[] cArr2 = new char[cArr.length];
            com.json.adqualitysdk.sdk.i.o.f138 = 0;
            char[] cArr3 = new char[2];
            while (true) {
                int i3 = com.json.adqualitysdk.sdk.i.o.f138;
                if (i3 < cArr.length) {
                    cArr3[0] = cArr[i3];
                    cArr3[1] = cArr[i3 + 1];
                    int i4 = 58224;
                    for (int i5 = 0; i5 < 16; i5++) {
                        cArr3[1] = (char) (cArr3[1] - (((cArr3[0] + i4) ^ ((cArr3[0] << 4) + f5404e)) ^ ((cArr3[0] >>> 5) + f5405f)));
                        cArr3[0] = (char) (cArr3[0] - (((cArr3[1] + i4) ^ ((cArr3[1] << 4) + c)) ^ ((cArr3[1] >>> 5) + f5403d)));
                        i4 -= 40503;
                    }
                    int i6 = com.json.adqualitysdk.sdk.i.o.f138;
                    cArr2[i6] = cArr3[0];
                    cArr2[i6 + 1] = cArr3[1];
                    com.json.adqualitysdk.sdk.i.o.f138 = i6 + 2;
                } else {
                    str2 = new String(cArr2, 0, i2);
                }
            }
        }
        return str2;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x007c A[PHI: r1
      0x007c: PHI (r1v32 com.ironsource.adqualitysdk.sdk.i.dj) = (r1v31 com.ironsource.adqualitysdk.sdk.i.dj), (r1v34 com.ironsource.adqualitysdk.sdk.i.dj) binds: [B:18:0x007a, B:13:0x0071] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private org.json.JSONObject C(org.json.JSONObject r11) {
        /*
            Method dump skipped, instruction units count: 283
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.cj.C(org.json.JSONObject):org.json.JSONObject");
    }

    private void D(dg dgVar) {
        int i2 = f5406g + 87;
        h = i2 % 128;
        if (!(i2 % 2 != 0)) {
            C(dgVar.m636());
            throw null;
        }
        JSONObject jSONObjectC = C(dgVar.m636());
        if ((jSONObjectC != null ? 'B' : '\t') != '\t') {
            String strM638 = dgVar.m638();
            s sVarJ = j(true);
            s sVarJ2 = j(false);
            if (TextUtils.isEmpty(strM638)) {
                p(jSONObjectC, sVarJ2, sVarJ);
                return;
            }
            int i3 = h + 55;
            f5406g = i3 % 128;
            int i4 = i3 % 2;
            dn dnVarM456 = m456(strM638);
            if (dnVarM456 != null) {
                N(jSONObjectC, sVarJ2, sVarJ, new b(dnVarM456));
                return;
            }
            String strM445 = m445();
            StringBuilder sb = new StringBuilder();
            sb.append(z((byte) (37 - (ViewConfiguration.getMinimumFlingVelocity() >> 16)), "\u001d\u0000\u0001 \u0004\u0000\u0014\u0003\u0002\u001d\t\u000b\u000b\u0001\n\u0001\u0011\u0018\u001f\u0002\n\u0012", 22 - (ViewConfiguration.getTapTimeout() >> 16)).intern());
            sb.append(strM638);
            sb.append(B("饽噓\ue139ꝣ徯뜂ᢀ⥓㢕ꚷ", 10 - View.MeasureSpec.getSize(0)).intern());
            cn.m519(strM445, sb.toString(), null);
        }
    }

    private void E(String str, dg dgVar) {
        JSONObject jSONObjectC = C(dgVar.m636());
        if ((jSONObjectC != null ? ',' : 'U') != 'U') {
            int i2 = h + 71;
            f5406g = i2 % 128;
            if (i2 % 2 == 0 ? jSONObjectC.has(B("澢䦤阌্펅빏⽱⾂熫謃ؚ㾹㊟롦ꊶ˯ꥥꇌ", (Process.myTid() >> 22) + 18).intern()) : jSONObjectC.has(B("澢䦤阌্펅빏⽱⾂熫謃ؚ㾹㊟롦ꊶ˯ꥥꇌ", (Process.myTid() >>> 51) + 57).intern())) {
                jj.b bVarM915 = jj.b.m915(jSONObjectC.optString(B("澢䦤阌্펅빏⽱⾂熫謃ؚ㾹㊟롦ꊶ˯ꥥꇌ", 19 - (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1))).intern(), null));
                String strL = l(str, jSONObjectC);
                if ((bVarM915 != null ? '`' : '-') == '`') {
                    int i3 = f5406g + 117;
                    h = i3 % 128;
                    int i4 = i3 % 2;
                    jj.m911().m914(strL, bVarM915);
                }
            }
        }
        int i5 = f5406g + 31;
        h = i5 % 128;
        if (i5 % 2 == 0) {
            int i6 = 20 / 0;
        }
    }

    private void F(String str, boolean z, boolean z2, List<Object> list) {
        try {
            dk dkVarM760 = this.i.m760(str);
            if (dkVarM760 != null) {
                int i2 = h + 39;
                f5406g = i2 % 128;
                int i3 = i2 % 2;
                dn dnVarM762 = this.i.m762(dkVarM760.m660());
                if (dnVarM762 == null) {
                    String strM445 = m445();
                    StringBuilder sb = new StringBuilder();
                    sb.append(z((byte) (37 - (ViewConfiguration.getJumpTapTimeout() >> 16)), "\u001d\u0000\u0001 \u0004\u0000\u0014\u0003\u0002\u001d\t\u000b\u000b\u0001\n\u0001\u0011\u0018\u001f\u0002\n\u0012", TextUtils.getOffsetBefore("", 0) + 22).intern());
                    sb.append(dkVarM760.m660());
                    sb.append(B("饽噓\ue139ꝣ徯뜂ᢀ⥓㢕ꚷ", 10 - (ViewConfiguration.getFadingEdgeLength() >> 16)).intern());
                    cn.m519(strM445, sb.toString(), null);
                    return;
                }
                int i4 = f5406g + 123;
                h = i4 % 128;
                int i5 = i4 % 2;
                if (z == dkVarM760.m662()) {
                    int i6 = h + 73;
                    f5406g = i6 % 128;
                    if (!(i6 % 2 == 0)) {
                        dkVarM760.m661();
                        throw null;
                    }
                    if (z2 != dkVarM760.m661()) {
                        return;
                    }
                    if (r.m1033().m1037()) {
                        int i7 = f5406g + 111;
                        h = i7 % 128;
                        int i8 = i7 % 2;
                        cn.m518(m445(), str);
                    }
                    dnVarM762.m667(this.j, this, list);
                }
            }
        } catch (Throwable th) {
            String strM4452 = m445();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(z((byte) (59 - (ViewConfiguration.getKeyRepeatTimeout() >> 16)), "\u0012\t\n\u0004\n\u0012\"\b\r\u0003\u000f\u0007\f\u0011\u000f\u0003\u000f\u0006\u000b\u0003[", 21 - TextUtils.indexOf("", "", 0, 0)).intern());
            sb2.append(str);
            cn.m519(strM4452, sb2.toString(), th);
        }
    }

    private boolean G(JSONObject jSONObject, String str) {
        int i2 = f5406g + 17;
        h = i2 % 128;
        if (!(i2 % 2 != 0)) {
            boolean z = jSONObject.opt(str) instanceof String;
            throw null;
        }
        Object objOpt = jSONObject.opt(str);
        try {
            if (objOpt instanceof String) {
                String str2 = (String) objOpt;
                if ((y(str2) ? (char) 15 : '!') == 15) {
                    String strA = A(str2);
                    if ((strA != null ? (char) 1 : '/') == '/') {
                        String strM445 = m445();
                        StringBuilder sb = new StringBuilder();
                        sb.append(B("\ue548쮴\ue4f3浂ꚣ熰", KeyEvent.normalizeMetaState(0) + 6).intern());
                        sb.append(str2);
                        sb.append(z((byte) ((ViewConfiguration.getMinimumFlingVelocity() >> 16) + 101), "\u0018\u0011\u0004\u0005\u0010\u001f\u0006\u0018\r\u0003\u000e&\u0014\n&\u0001\u0012\u000b\t\u000b\u0014\u0012\u000f\u0007\u000b\u0002\u0003\b\u0004\b\u0010\n\u0002\u0005\u0015\u001a", View.getDefaultSize(0, 0) + 36).intern());
                        cn.m518(strM445, sb.toString());
                        return false;
                    }
                    int i3 = f5406g + 27;
                    h = i3 % 128;
                    int i4 = i3 % 2;
                    jSONObject.put(str, strA);
                }
            } else if (objOpt instanceof JSONArray) {
                jSONObject.put(str, new JSONArray((Collection) t(ju.m961((JSONArray) objOpt))));
            }
        } catch (JSONException unused) {
        }
        return true;
    }

    private com.json.adqualitysdk.sdk.i.l H(com.json.adqualitysdk.sdk.i.l lVar, com.json.adqualitysdk.sdk.i.l lVar2) {
        int i2 = h + 33;
        f5406g = i2 % 128;
        if ((i2 % 2 != 0 ? '%' : '6') != '6') {
            throw null;
        }
        if (lVar == null) {
            lVar = new com.json.adqualitysdk.sdk.i.l();
            int i3 = f5406g + 31;
            h = i3 % 128;
            int i4 = i3 % 2;
        }
        if (lVar2 == null) {
            lVar2 = new com.json.adqualitysdk.sdk.i.l();
        }
        return new d(lVar2, lVar);
    }

    private s I(s sVar, s sVar2) {
        int i2 = h + 63;
        f5406g = i2 % 128;
        int i3 = i2 % 2;
        if (sVar == null) {
            sVar = new s();
        }
        if (sVar2 == null) {
            sVar2 = new s();
        }
        h hVar = new h(sVar2, sVar);
        int i4 = f5406g + 117;
        h = i4 % 128;
        int i5 = i4 % 2;
        return hVar;
    }

    private JSONObject J(Activity activity, Bundle bundle) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ib.f120, m455().m437());
            jSONObject.put(ib.f78, m455().m438());
            jSONObject.put(ib.f75, m455().m434());
            jSONObject.put(B("擌꼑䨗뽝ꇳꑖ⓴ᨀ", 8 - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1))).intern(), activity.getClass().getName());
            if ((bundle != null ? 'b' : ')') != ')') {
                int i2 = h + 71;
                f5406g = i2 % 128;
                if (!(i2 % 2 == 0)) {
                    jSONObject.put(z((byte) (100 >> TextUtils.indexOf((CharSequence) "", (char) 2, 1, 0)), "\u000b\u0014\u0002'\u0006\u000b\u0005\u0002", (ViewConfiguration.getTapTimeout() << 69) + 62).intern(), false);
                } else {
                    jSONObject.put(z((byte) (TextUtils.indexOf((CharSequence) "", '0', 0, 0) + 80), "\u000b\u0014\u0002'\u0006\u000b\u0005\u0002", 8 - (ViewConfiguration.getTapTimeout() >> 16)).intern(), true);
                }
            }
        } catch (JSONException unused) {
            com.json.adqualitysdk.sdk.i.m.m1031(z((byte) (118 - (ViewConfiguration.getLongPressTimeout() >> 16)), "\u0001\u0002\u0003\u0004\u0005\u0002\u0006\u0000\b\t\u000b\u0002\u0003\b\u0004\b", 16 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24)).intern(), B("꫟\ue22a뿋꿛증慄䒗ݭ⫀戇ؚ㾹탢騫넶짣\ue41f\ue7ac㌎唌\uf1a3た␢\u1ad6\uf04b❜覩Ⱛ\ue41f\ue7ac", Color.blue(0) + 30).intern());
        }
        int i3 = f5406g + 89;
        h = i3 % 128;
        if (i3 % 2 != 0) {
            return jSONObject;
        }
        throw null;
    }

    static /* synthetic */ void K(cj cjVar, String str, boolean z, boolean z2, List list) {
        int i2 = f5406g + 45;
        h = i2 % 128;
        boolean z3 = i2 % 2 != 0;
        cjVar.F(str, z, z2, list);
        if (!z3) {
            int i3 = 51 / 0;
        }
        int i4 = h + 87;
        f5406g = i4 % 128;
        if ((i4 % 2 != 0 ? ';' : '&') == '&') {
        } else {
            throw null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:19:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00f0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void L(com.json.adqualitysdk.sdk.i.dg r20) {
        /*
            Method dump skipped, instruction units count: 474
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.cj.L(com.ironsource.adqualitysdk.sdk.i.dg):void");
    }

    private void M(ig igVar, boolean z) {
        int i2 = h + 59;
        f5406g = i2 % 128;
        try {
            if (i2 % 2 != 0) {
                throw null;
            }
            if (!z) {
                t.m1044(igVar);
                return;
            }
            t.m1041(new n(igVar));
            int i3 = f5406g + 111;
            h = i3 % 128;
            if ((i3 % 2 == 0 ? (char) 2 : 'W') != 2) {
            } else {
                throw null;
            }
        } catch (Throwable unused) {
        }
    }

    private void N(JSONObject jSONObject, s sVar, s sVar2, im imVar) {
        int i2 = f5406g + 7;
        h = i2 % 128;
        int i3 = i2 % 2;
        this.r.m1053(jSONObject, I(sVar, sVar2), imVar);
        int i4 = h + 37;
        f5406g = i4 % 128;
        int i5 = i4 % 2;
    }

    private jf O(List<String> list) {
        k kVar = new k(list);
        int i2 = h + 71;
        f5406g = i2 % 128;
        if ((i2 % 2 != 0 ? '2' : '<') == '<') {
            return kVar;
        }
        int i3 = 1 / 0;
        return kVar;
    }

    private x P(boolean z) {
        c cVar = new c(z);
        int i2 = f5406g + 29;
        h = i2 % 128;
        int i3 = i2 % 2;
        return cVar;
    }

    private JSONObject Q(JSONObject jSONObject) {
        int i2 = h + 9;
        f5406g = i2 % 128;
        if (!(i2 % 2 == 0)) {
            ju.m960(m444(), jSONObject);
            throw null;
        }
        JSONObject jSONObjectM444 = m444();
        ju.m960(jSONObjectM444, jSONObject);
        int i3 = h + 79;
        f5406g = i3 % 128;
        if (i3 % 2 == 0) {
            return jSONObjectM444;
        }
        int i4 = 79 / 0;
        return jSONObjectM444;
    }

    private void S(JSONObject jSONObject, x xVar, x xVar2) {
        int i2 = h + 17;
        f5406g = i2 % 128;
        if (i2 % 2 != 0) {
            this.r.m1048(jSONObject, k(xVar, xVar2));
            throw null;
        }
        this.r.m1048(jSONObject, k(xVar, xVar2));
        int i3 = f5406g + 41;
        h = i3 % 128;
        int i4 = i3 % 2;
    }

    private static boolean T(dg dgVar) {
        List listMo308 = ao.m303().mo308();
        ISAdQualityAdType iSAdQualityAdTypeM637 = dgVar.m637();
        if (listMo308 != null) {
            if ((iSAdQualityAdTypeM637 != ISAdQualityAdType.UNKNOWN ? '\\' : '\"') != '\"') {
                if (listMo308.contains(iSAdQualityAdTypeM637)) {
                    int i2 = f5406g + 75;
                    h = i2 % 128;
                    int i3 = i2 % 2;
                    return false;
                }
                int i4 = h + 39;
                f5406g = i4 % 128;
                int i5 = i4 % 2;
                return true;
            }
        }
        int i6 = h + 49;
        f5406g = i6 % 128;
        if ((i6 % 2 != 0 ? '9' : '_') != '9') {
            return true;
        }
        throw null;
    }

    private ch a() {
        a aVar = new a();
        int i2 = f5406g + 35;
        h = i2 % 128;
        if ((i2 % 2 == 0 ? (char) 31 : ']') == ']') {
            return aVar;
        }
        throw null;
    }

    private je b() {
        i iVar = new i();
        int i2 = h + 123;
        f5406g = i2 % 128;
        int i3 = i2 % 2;
        return iVar;
    }

    private void c() {
        int i2 = f5406g + 55;
        h = i2 % 128;
        if (i2 % 2 == 0) {
            this.r.m1047();
            int i3 = 58 / 0;
        } else {
            this.r.m1047();
        }
        int i4 = f5406g + 41;
        h = i4 % 128;
        if (i4 % 2 != 0) {
        } else {
            throw null;
        }
    }

    private void d() {
        dg next;
        Iterator<dg> it = m452().m763().iterator();
        int i2 = f5406g + 111;
        h = i2 % 128;
        int i3 = i2 % 2;
        while (true) {
            if (!(it.hasNext())) {
                return;
            }
            int i4 = f5406g + 65;
            h = i4 % 128;
            if (i4 % 2 == 0) {
                next = it.next();
                int i5 = 61 / 0;
                if (T(next)) {
                    L(next);
                }
            } else {
                next = it.next();
                if (!(T(next) ? false : true)) {
                    L(next);
                }
            }
        }
    }

    private void f() {
        int i2 = h + 107;
        f5406g = i2 % 128;
        int i3 = i2 % 2;
        this.r.m1051();
        int i4 = f5406g + 1;
        h = i4 % 128;
        int i5 = i4 % 2;
    }

    private void g() {
        int i2 = h + 39;
        f5406g = i2 % 128;
        if ((i2 % 2 != 0 ? '$' : (char) 22) != 22) {
            this.r.m1049();
            int i3 = 89 / 0;
        } else {
            this.r.m1049();
        }
        int i4 = f5406g + 101;
        h = i4 % 128;
        int i5 = i4 % 2;
    }

    private dj h() {
        int i2 = f5406g + 125;
        h = i2 % 128;
        if ((i2 % 2 == 0 ? '#' : 'C') != '#') {
            return m455().a();
        }
        m455().a();
        throw null;
    }

    private je i(List<String> list) {
        o oVar = new o(list);
        int i2 = f5406g + 43;
        h = i2 % 128;
        int i3 = i2 % 2;
        return oVar;
    }

    private s j(boolean z) {
        g gVar = new g(z);
        int i2 = h + 61;
        f5406g = i2 % 128;
        int i3 = i2 % 2;
        return gVar;
    }

    private x k(x xVar, x xVar2) {
        if (xVar == null) {
            xVar = new x();
            int i2 = f5406g + 101;
            h = i2 % 128;
            int i3 = i2 % 2;
        }
        if (xVar2 == null) {
            xVar2 = new x();
        }
        f fVar = new f(xVar2, xVar);
        int i4 = f5406g + 63;
        h = i4 % 128;
        int i5 = i4 % 2;
        return fVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00a2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String l(java.lang.String r8, org.json.JSONObject r9) {
        /*
            Method dump skipped, instruction units count: 260
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.cj.l(java.lang.String, org.json.JSONObject):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0052 A[PHI: r10
      0x0052: PHI (r10v3 java.lang.String) = (r10v1 java.lang.String), (r10v13 java.lang.String) binds: [B:23:0x0050, B:18:0x0043] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m(com.json.adqualitysdk.sdk.i.dg r10) {
        /*
            r9 = this;
            int r0 = com.json.adqualitysdk.sdk.i.cj.h
            int r0 = r0 + 83
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.cj.f5406g = r1
            int r0 = r0 % 2
            org.json.JSONObject r0 = r10.m636()
            org.json.JSONObject r0 = r9.C(r0)
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L18
            r3 = 1
            goto L19
        L18:
            r3 = 0
        L19:
            if (r3 == 0) goto Lb6
            int r3 = com.json.adqualitysdk.sdk.i.cj.f5406g
            int r3 = r3 + 37
            int r4 = r3 % 128
            com.json.adqualitysdk.sdk.i.cj.h = r4
            int r3 = r3 % 2
            r4 = 16
            r5 = 91
            if (r3 != 0) goto L2e
            r3 = 16
            goto L30
        L2e:
            r3 = 91
        L30:
            r6 = 0
            if (r3 == r5) goto L48
            java.lang.String r10 = r10.m633()
            boolean r3 = android.text.TextUtils.isEmpty(r10)
            r5 = 8
            int r5 = r5 / r2
            if (r3 != 0) goto L42
            r3 = 1
            goto L43
        L42:
            r3 = 0
        L43:
            if (r3 == r1) goto L52
            goto Lab
        L46:
            r10 = move-exception
            throw r10
        L48:
            java.lang.String r10 = r10.m633()
            boolean r3 = android.text.TextUtils.isEmpty(r10)
            if (r3 != 0) goto Lab
        L52:
            com.ironsource.adqualitysdk.sdk.i.dn r3 = r9.m456(r10)
            if (r3 == 0) goto L68
            com.ironsource.adqualitysdk.sdk.i.cj$l r6 = new com.ironsource.adqualitysdk.sdk.i.cj$l
            r6.<init>(r3, r10)
            int r10 = com.json.adqualitysdk.sdk.i.cj.h
            int r10 = r10 + 47
            int r3 = r10 % 128
            com.json.adqualitysdk.sdk.i.cj.f5406g = r3
            int r10 = r10 % 2
            goto Lab
        L68:
            java.lang.String r3 = r9.m445()
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            int r7 = android.view.View.MeasureSpec.getMode(r2)
            int r7 = 37 - r7
            byte r7 = (byte) r7
            int r8 = android.view.ViewConfiguration.getJumpTapTimeout()
            int r4 = r8 >> 16
            int r4 = 22 - r4
            java.lang.String r8 = "\u001d\u0000\u0001 \u0004\u0000\u0014\u0003\u0002\u001d\t\u000b\u000b\u0001\n\u0001\u0011\u0018\u001f\u0002\n\u0012"
            java.lang.String r4 = z(r7, r8, r4)
            java.lang.String r4 = r4.intern()
            r5.append(r4)
            r5.append(r10)
            int r10 = android.view.KeyEvent.getModifierMetaStateMask()
            byte r10 = (byte) r10
            int r10 = 9 - r10
            java.lang.String r4 = "饽噓\ue139ꝣ徯뜂ᢀ⥓㢕ꚷ"
            java.lang.String r10 = B(r4, r10)
            java.lang.String r10 = r10.intern()
            r5.append(r10)
            java.lang.String r10 = r5.toString()
            com.json.adqualitysdk.sdk.i.cn.m519(r3, r10, r6)
        Lab:
            com.ironsource.adqualitysdk.sdk.i.l r10 = r9.s(r2)
            com.ironsource.adqualitysdk.sdk.i.l r1 = r9.s(r1)
            r9.o(r0, r10, r1, r6)
        Lb6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.cj.m(com.ironsource.adqualitysdk.sdk.i.dg):void");
    }

    private void n(String str, List<Object> list) {
        t.m1039(new j(str, list));
        t.m1046(new m(str, list));
        M(new p(str, list), true);
        int i2 = h + 115;
        f5406g = i2 % 128;
        if (i2 % 2 != 0) {
            int i3 = 92 / 0;
        }
    }

    private void o(JSONObject jSONObject, com.json.adqualitysdk.sdk.i.l lVar, com.json.adqualitysdk.sdk.i.l lVar2, io ioVar) {
        int i2 = f5406g + 99;
        h = i2 % 128;
        if ((i2 % 2 == 0 ? 'R' : 'E') != 'E') {
            this.r.m1050(jSONObject, H(lVar, lVar2), b(), ioVar);
            throw null;
        }
        this.r.m1050(jSONObject, H(lVar, lVar2), b(), ioVar);
        int i3 = h + 77;
        f5406g = i3 % 128;
        if ((i3 % 2 != 0 ? '#' : '`') != '#') {
        } else {
            throw null;
        }
    }

    private void p(JSONObject jSONObject, s sVar, s sVar2) {
        int i2 = h + 95;
        f5406g = i2 % 128;
        int i3 = i2 % 2;
        this.r.m1052(jSONObject, I(sVar, sVar2));
        int i4 = f5406g + 101;
        h = i4 % 128;
        int i5 = i4 % 2;
    }

    private static boolean q(Activity activity, List<String> list) {
        int i2 = h + 53;
        f5406g = i2 % 128;
        int i3 = i2 % 2;
        if (!(list.isEmpty())) {
            int i4 = h + 9;
            f5406g = i4 % 128;
            char c2 = i4 % 2 != 0 ? '-' : ']';
            String name = activity.getClass().getName();
            if (c2 == '-') {
                list.contains(name);
                throw null;
            }
            if (!(list.contains(name))) {
                int i5 = h + 117;
                f5406g = i5 % 128;
                int i6 = i5 % 2;
                return false;
            }
        }
        return true;
    }

    static /* synthetic */ dr r(cj cjVar) {
        int i2 = f5406g + 17;
        h = i2 % 128;
        boolean z = i2 % 2 == 0;
        dr drVar = cjVar.j;
        if (z) {
            int i3 = 88 / 0;
        }
        return drVar;
    }

    private com.json.adqualitysdk.sdk.i.l s(boolean z) {
        e eVar = new e(z);
        int i2 = h + 103;
        f5406g = i2 % 128;
        int i3 = i2 % 2;
        return eVar;
    }

    private List<String> t(List<String> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            int i2 = f5406g + 39;
            h = i2 % 128;
            if ((i2 % 2 == 0 ? 'c' : '2') == 'c') {
                y(it.next());
                throw null;
            }
            String next = it.next();
            if (y(next)) {
                int i3 = h + 43;
                f5406g = i3 % 128;
                int i4 = i3 % 2;
                String strA = A(next);
                if (strA != null) {
                    arrayList.add(strA);
                }
                int i5 = f5406g + 21;
                h = i5 % 128;
                int i6 = i5 % 2;
            } else {
                arrayList.add(next);
                int i7 = f5406g + 99;
                h = i7 % 128;
                int i8 = i7 % 2;
            }
        }
        int i9 = f5406g + 63;
        h = i9 % 128;
        int i10 = i9 % 2;
        return arrayList;
    }

    static /* synthetic */ JSONObject u(cj cjVar, Activity activity, Bundle bundle) {
        int i2 = h + 71;
        f5406g = i2 % 128;
        int i3 = i2 % 2;
        JSONObject jSONObjectJ = cjVar.J(activity, bundle);
        int i4 = h + 111;
        f5406g = i4 % 128;
        if (i4 % 2 == 0) {
            return jSONObjectJ;
        }
        throw null;
    }

    static /* synthetic */ void v(cj cjVar, ig igVar, boolean z) {
        int i2 = f5406g + 27;
        h = i2 % 128;
        int i3 = i2 % 2;
        cjVar.M(igVar, z);
        int i4 = h + 115;
        f5406g = i4 % 128;
        int i5 = i4 % 2;
    }

    private void w(dg dgVar) {
        JSONObject jSONObjectC = C(dgVar.m636());
        if (!(jSONObjectC != null)) {
            return;
        }
        int i2 = f5406g + 31;
        h = i2 % 128;
        if (i2 % 2 == 0) {
        }
        S(jSONObjectC, P(false), P(true));
        int i3 = h + 69;
        f5406g = i3 % 128;
        int i4 = i3 % 2;
    }

    static /* synthetic */ boolean x(Activity activity, List list) {
        int i2 = f5406g + 95;
        h = i2 % 128;
        int i3 = i2 % 2;
        boolean zQ = q(activity, list);
        int i4 = h + 113;
        f5406g = i4 % 128;
        if ((i4 % 2 != 0 ? 'L' : (char) 1) != 'L') {
            return zQ;
        }
        throw null;
    }

    private static boolean y(String str) {
        int i2 = h + 51;
        f5406g = i2 % 128;
        int i3 = i2 % 2;
        boolean zEndsWith = str.endsWith(z((byte) (MotionEvent.axisFromString("") + 39), "\u000b\u0013\u0014\u0007\u0099\u0099", (ViewConfiguration.getScrollBarFadeDuration() >> 16) + 6).intern());
        int i4 = f5406g + 39;
        h = i4 % 128;
        if (i4 % 2 != 0) {
            return zEndsWith;
        }
        int i5 = 15 / 0;
        return zEndsWith;
    }

    private static String z(byte b2, String str, int i2) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (com.json.adqualitysdk.sdk.i.g.f56) {
            char[] cArr2 = a;
            char c2 = b;
            char[] cArr3 = new char[i2];
            if (i2 % 2 != 0) {
                i2--;
                cArr3[i2] = (char) (cArr[i2] - b2);
            }
            if (i2 > 1) {
                com.json.adqualitysdk.sdk.i.g.f60 = 0;
                while (true) {
                    int i3 = com.json.adqualitysdk.sdk.i.g.f60;
                    if (i3 >= i2) {
                        break;
                    }
                    com.json.adqualitysdk.sdk.i.g.f58 = cArr[i3];
                    com.json.adqualitysdk.sdk.i.g.f62 = cArr[com.json.adqualitysdk.sdk.i.g.f60 + 1];
                    if (com.json.adqualitysdk.sdk.i.g.f58 == com.json.adqualitysdk.sdk.i.g.f62) {
                        cArr3[com.json.adqualitysdk.sdk.i.g.f60] = (char) (com.json.adqualitysdk.sdk.i.g.f58 - b2);
                        cArr3[com.json.adqualitysdk.sdk.i.g.f60 + 1] = (char) (com.json.adqualitysdk.sdk.i.g.f62 - b2);
                    } else {
                        com.json.adqualitysdk.sdk.i.g.f59 = com.json.adqualitysdk.sdk.i.g.f58 / c2;
                        com.json.adqualitysdk.sdk.i.g.f55 = com.json.adqualitysdk.sdk.i.g.f58 % c2;
                        com.json.adqualitysdk.sdk.i.g.f61 = com.json.adqualitysdk.sdk.i.g.f62 / c2;
                        com.json.adqualitysdk.sdk.i.g.f57 = com.json.adqualitysdk.sdk.i.g.f62 % c2;
                        if (com.json.adqualitysdk.sdk.i.g.f55 == com.json.adqualitysdk.sdk.i.g.f57) {
                            com.json.adqualitysdk.sdk.i.g.f59 = ((com.json.adqualitysdk.sdk.i.g.f59 + c2) - 1) % c2;
                            com.json.adqualitysdk.sdk.i.g.f61 = ((com.json.adqualitysdk.sdk.i.g.f61 + c2) - 1) % c2;
                            int i4 = (com.json.adqualitysdk.sdk.i.g.f59 * c2) + com.json.adqualitysdk.sdk.i.g.f55;
                            int i5 = (com.json.adqualitysdk.sdk.i.g.f61 * c2) + com.json.adqualitysdk.sdk.i.g.f57;
                            int i6 = com.json.adqualitysdk.sdk.i.g.f60;
                            cArr3[i6] = cArr2[i4];
                            cArr3[i6 + 1] = cArr2[i5];
                        } else if (com.json.adqualitysdk.sdk.i.g.f59 == com.json.adqualitysdk.sdk.i.g.f61) {
                            com.json.adqualitysdk.sdk.i.g.f55 = ((com.json.adqualitysdk.sdk.i.g.f55 + c2) - 1) % c2;
                            com.json.adqualitysdk.sdk.i.g.f57 = ((com.json.adqualitysdk.sdk.i.g.f57 + c2) - 1) % c2;
                            int i7 = (com.json.adqualitysdk.sdk.i.g.f59 * c2) + com.json.adqualitysdk.sdk.i.g.f55;
                            int i8 = (com.json.adqualitysdk.sdk.i.g.f61 * c2) + com.json.adqualitysdk.sdk.i.g.f57;
                            int i9 = com.json.adqualitysdk.sdk.i.g.f60;
                            cArr3[i9] = cArr2[i7];
                            cArr3[i9 + 1] = cArr2[i8];
                        } else {
                            int i10 = (com.json.adqualitysdk.sdk.i.g.f59 * c2) + com.json.adqualitysdk.sdk.i.g.f57;
                            int i11 = (com.json.adqualitysdk.sdk.i.g.f61 * c2) + com.json.adqualitysdk.sdk.i.g.f55;
                            int i12 = com.json.adqualitysdk.sdk.i.g.f60;
                            cArr3[i12] = cArr2[i10];
                            cArr3[i12 + 1] = cArr2[i11];
                        }
                    }
                    com.json.adqualitysdk.sdk.i.g.f60 += 2;
                }
            }
            str2 = new String(cArr3);
        }
        return str2;
    }

    protected final void R(String str, List<Object> list) {
        StringBuilder sb = new StringBuilder();
        sb.append(B("ꣾ万\ude3cఋូ쓓ꄚ\ue75e䍐മ㠑滈\ue4f3浂괤⻘", '@' - AndroidCharacter.getMirror('0')).intern());
        sb.append(str);
        n(sb.toString(), list);
        int i2 = f5406g + 17;
        h = i2 % 128;
        int i3 = i2 % 2;
    }

    protected final void e() {
        c();
        g();
        f();
        if (!(this.n == null)) {
            int i2 = f5406g + 15;
            h = i2 % 128;
            int i3 = i2 % 2;
            jb.m899().m901(this.n);
            this.n = null;
            int i4 = h + 27;
            f5406g = i4 % 128;
            int i5 = i4 % 2;
        }
        jg jgVar = this.o;
        if (!(jgVar == null)) {
            jgVar.m910();
            this.o = null;
        }
        this.m = null;
    }

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public final cz m443() {
        cz czVar;
        int i2 = f5406g + 83;
        int i3 = i2 % 128;
        h = i3;
        if ((i2 % 2 == 0 ? 'U' : 'A') != 'A') {
            czVar = this.k;
            int i4 = 56 / 0;
        } else {
            czVar = this.k;
        }
        int i5 = i3 + 39;
        f5406g = i5 % 128;
        int i6 = i5 % 2;
        return czVar;
    }

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final JSONObject m444() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ib.f120, m455().m437());
            jSONObject.put(ib.f75, m455().m434());
            jSONObject.put(ib.f78, m455().m438());
        } catch (JSONException e2) {
            String strIntern = z((byte) (117 - TextUtils.lastIndexOf("", '0', 0)), "\u0001\u0002\u0003\u0004\u0005\u0002\u0006\u0000\b\t\u000b\u0002\u0003\b\u0004\b", 16 - TextUtils.getCapsMode("", 0, 0)).intern();
            StringBuilder sb = new StringBuilder();
            sb.append(z((byte) ((ViewConfiguration.getMaximumFlingVelocity() >> 16) + 46), "\u0012\t\n\u0004\n\u0012\u0019\u0012\u0006\b\u0001\u000b\f\u0011\u000f\u0003\u000f\u0006\u000b\u0003\u000e\u0018\n\u0002\b\u0018N", (ViewConfiguration.getTouchSlop() >> 8) + 27).intern());
            sb.append(e2.getLocalizedMessage());
            com.json.adqualitysdk.sdk.i.m.m1031(strIntern, sb.toString());
        }
        int i2 = h + 115;
        f5406g = i2 % 128;
        if (i2 % 2 == 0) {
            return jSONObject;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final String m445() {
        StringBuilder sb = new StringBuilder();
        sb.append(m455().m439());
        sb.append(B("ꪘ霱", TextUtils.indexOf("", "", 0) + 1).intern());
        sb.append(m452().m758());
        String string = sb.toString();
        int i2 = f5406g + 99;
        h = i2 % 128;
        int i3 = i2 % 2;
        return string;
    }

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final dr m446() {
        int i2 = f5406g;
        int i3 = i2 + 121;
        h = i3 % 128;
        int i4 = i3 % 2;
        dr drVar = this.j;
        int i5 = i2 + 21;
        h = i5 % 128;
        if ((i5 % 2 == 0 ? '\t' : 'A') == 'A') {
            return drVar;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final ch m447() {
        int i2 = f5406g;
        int i3 = i2 + 17;
        h = i3 % 128;
        int i4 = i3 % 2;
        ch chVar = this.m;
        int i5 = i2 + 15;
        h = i5 % 128;
        if ((i5 % 2 == 0 ? '\n' : '\t') != '\n') {
            return chVar;
        }
        int i6 = 75 / 0;
        return chVar;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final Context m448() {
        int i2 = h + 15;
        f5406g = i2 % 128;
        int i3 = i2 % 2;
        Context contextM430 = m455().m430();
        int i4 = h + 15;
        f5406g = i4 % 128;
        int i5 = i4 % 2;
        return contextM430;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final void m449(ii iiVar) {
        int i2 = f5406g + 85;
        h = i2 % 128;
        if ((i2 % 2 == 0 ? (char) 4 : (char) 20) != 4) {
            this.p.m429().m397(iiVar);
        } else {
            this.p.m429().m397(iiVar);
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final az m450() {
        int i2 = h + 89;
        f5406g = i2 % 128;
        if ((i2 % 2 != 0 ? 'R' : (char) 24) == 24) {
            return this.l;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final JSONObject m451() {
        int i2 = h + 77;
        int i3 = i2 % 128;
        f5406g = i3;
        int i4 = i2 % 2;
        JSONObject jSONObject = this.q;
        int i5 = i3 + 21;
        h = i5 % 128;
        if ((i5 % 2 == 0 ? ' ' : '+') != ' ') {
            return jSONObject;
        }
        int i6 = 31 / 0;
        return jSONObject;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final ho m452() {
        int i2 = h + 13;
        f5406g = i2 % 128;
        if ((i2 % 2 != 0 ? '0' : 'X') != '0') {
            return this.i;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m453(String str, JSONObject jSONObject) {
        if (str.equals(B("ᄻﰭｽ၁▨覆楚㮸\ue8db쟙槵ԏ", 12 - ((Process.getThreadPriority(0) + 20) >> 6)).intern())) {
            int i2 = h + 41;
            f5406g = i2 % 128;
            int i3 = i2 % 2;
            this.p.m429().m400(jSONObject);
            int i4 = f5406g + 51;
            h = i4 % 128;
            int i5 = i4 % 2;
        } else {
            if (str.equals(z((byte) ((ViewConfiguration.getLongPressTimeout() >> 16) + 115), "\u0014\r'\u0011\u0011\u0000\b\u0002×", (ViewConfiguration.getScrollDefaultDelay() >> 16) + 9).intern())) {
                this.p.m429().m396(jSONObject);
            }
        }
        JSONObject jSONObjectM962 = ju.m962(Q(jSONObject));
        if (str.equals(ib.f81)) {
            this.p.m429().m405(jSONObjectM962);
            return;
        }
        if ((str.equals(ib.f79) ? (char) 21 : 'N') != 'N') {
            this.p.m429().m401(jSONObjectM962);
            int i6 = h + 7;
            f5406g = i6 % 128;
            if (i6 % 2 == 0) {
                return;
            } else {
                throw null;
            }
        }
        if (str.equals(ib.f88)) {
            this.p.m429().m398(jSONObjectM962);
            return;
        }
        if (str.equals(ib.f84)) {
            int i7 = h + 117;
            f5406g = i7 % 128;
            boolean z = i7 % 2 != 0;
            this.p.m429().m395(jSONObjectM962);
            if (z) {
                throw null;
            }
            return;
        }
        if (str.equals(ib.f83)) {
            this.p.m429().m392(jSONObjectM962);
            return;
        }
        if (str.equals(ib.f82)) {
            this.p.m429().m394(jSONObjectM962);
            return;
        }
        if (!(str.equals(ib.f80))) {
            this.p.m429().m404(str, jSONObject);
            return;
        }
        this.p.m429().m393(jSONObjectM962);
        int i8 = f5406g + 53;
        h = i8 % 128;
        if (i8 % 2 == 0) {
            int i9 = 6 / 0;
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m454(JSONObject jSONObject) {
        int i2 = h + 11;
        f5406g = i2 % 128;
        this.q = ju.m963(jSONObject, (i2 % 2 != 0 ? 'N' : ')') == ')');
        int i3 = h + 75;
        f5406g = i3 % 128;
        if ((i3 % 2 != 0 ? '(' : '+') == '+') {
        } else {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final ci m455() {
        int i2 = h + 37;
        int i3 = i2 % 128;
        f5406g = i3;
        int i4 = i2 % 2;
        ci ciVar = this.p;
        int i5 = i3 + 17;
        h = i5 % 128;
        int i6 = i5 % 2;
        return ciVar;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final dn m456(String str) {
        int i2 = f5406g + 81;
        h = i2 % 128;
        if (i2 % 2 == 0) {
            throw null;
        }
        if (str == null) {
            return null;
        }
        dn dnVarM762 = m452().m762(str);
        int i3 = f5406g + 121;
        h = i3 % 128;
        if ((i3 % 2 == 0 ? 'P' : (char) 29) == 29) {
            return dnVarM762;
        }
        throw null;
    }
}
