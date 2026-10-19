package com.json.adqualitysdk.sdk.i;

import android.os.Process;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.webkit.WebView;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class v<T> extends y<WebView, T> {
    private ad o;
    private io p;
    private Map<T, ad> n = new WeakHashMap();
    private v<T>.e q = new e();

    final class a implements View.OnLayoutChangeListener {
        private static char[] a = {'F', 54899, 44128, 33406, 22635, 11901, 1110, 55887, 45141, 34392, 23677, 12838, 2048, 56879, 46138, 35390, 24588, 13827, 3102, 'E', 54900, 44158, 33405, 22634, 11838, 1101, 55876, 45072, 34393, 23634, 12814, 2089, 56887, 46139, 35375, 24596, 13861, 3076, 57875, 47126, 36377, 25825};
        private static long b = -4665923372164786682L;
        private static int c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static int f6013d = 1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private /* synthetic */ Object f6014e;

        a(Object obj) {
            this.f6014e = obj;
        }

        private static String a(int i, int i2, char c2) {
            String str;
            synchronized (com.json.adqualitysdk.sdk.i.e.f50) {
                char[] cArr = new char[i];
                com.json.adqualitysdk.sdk.i.e.f51 = 0;
                while (true) {
                    int i3 = com.json.adqualitysdk.sdk.i.e.f51;
                    if (i3 < i) {
                        cArr[i3] = (char) ((((long) a[i2 + i3]) ^ (((long) i3) * b)) ^ ((long) c2));
                        com.json.adqualitysdk.sdk.i.e.f51 = i3 + 1;
                    } else {
                        str = new String(cArr);
                    }
                }
            }
            return str;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            try {
                ArrayList arrayList = new ArrayList();
                v.this.r(this.f6014e, arrayList);
                if (arrayList.isEmpty()) {
                    return;
                }
                View viewO = v.this.o(this.f6014e);
                boolean z = true;
                if (viewO != null) {
                    int i9 = c + 47;
                    f6013d = i9 % 128;
                    if ((i9 % 2 == 0 ? 'b' : '\'') != '\'') {
                        int i10 = 48 / 0;
                        if (v.this.q.f6019f) {
                            z = false;
                        }
                        if (z) {
                            int i11 = c + 43;
                            f6013d = i11 % 128;
                            int i12 = i11 % 2;
                            viewO.removeOnLayoutChangeListener(this);
                        }
                    } else if (!v.this.q.f6019f) {
                        int i112 = c + 43;
                        f6013d = i112 % 128;
                        int i122 = i112 % 2;
                        viewO.removeOnLayoutChangeListener(this);
                    }
                }
                v.this.n(this.f6014e, arrayList);
                v.this.mo228(new JSONObject(), arrayList.get(0), this.f6014e);
                int i13 = f6013d + 9;
                c = i13 % 128;
                int i14 = i13 % 2;
            } catch (Throwable th) {
                jy.m987(a((TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 19, Process.myPid() >> 22, (char) KeyEvent.normalizeMetaState(0)).intern(), a(View.MeasureSpec.makeMeasureSpec(0, 0) + 23, 19 - (ViewConfiguration.getScrollBarFadeDuration() >> 16), (char) View.MeasureSpec.getSize(0)).intern(), th, false);
            }
        }
    }

    final class b implements Runnable {
        private /* synthetic */ Object a;
        private /* synthetic */ List b;
        private /* synthetic */ JSONObject c;

        b(Object obj, List list, JSONObject jSONObject) {
            this.a = obj;
            this.b = list;
            this.c = jSONObject;
        }

        @Override // java.lang.Runnable
        public final void run() {
            v.this.n(this.a, this.b);
            v.super.mo229(this.c, (WebView) this.b.get(0), this.a);
        }
    }

    public class e {
        private String a;
        private List<String> b;
        private boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f6017d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f6018e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f6019f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f6020g;
        private boolean h;
        private boolean i;
        private boolean j;
        private boolean k;
        protected List<String> l = new ArrayList();

        /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
        public final v<T>.e m1054(boolean z) {
            this.k = z;
            return this;
        }

        /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
        public final v<T>.e m1055(boolean z) {
            this.j = z;
            return this;
        }

        /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
        public final v<T>.e m1056(boolean z) {
            this.h = z;
            return this;
        }

        /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
        public final v<T>.e m1057(boolean z) {
            this.i = z;
            return this;
        }

        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        public final v<T>.e m1058(List<String> list) {
            if (list != null) {
                this.l = list;
            }
            return this;
        }

        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        public final v<T>.e m1059(boolean z) {
            this.c = z;
            return this;
        }

        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
        public final v<T>.e m1060(String str) {
            this.a = str;
            return this;
        }

        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
        public final v<T>.e m1061(boolean z) {
            this.f6017d = z;
            return this;
        }

        /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
        public final v<T>.e m1062(List<String> list) {
            this.b = list;
            return this;
        }

        /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
        public final v<T>.e m1063(boolean z) {
            this.f6020g = z;
            return this;
        }

        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public final v<T>.e m1064(boolean z) {
            this.f6018e = z;
            return this;
        }

        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        public final v<T>.e m1065(boolean z) {
            this.f6019f = z;
            return this;
        }
    }

    public v(io ioVar) {
        this.p = ioVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(T t, List<WebView> list) {
        (((e) this.q).j ? this.n.get(t) : this.o).m243(list);
        if (((e) this.q).c) {
            (((e) this.q).j ? this.n.get(t) : this.o).m239(Integer.toHexString(list.get(0).hashCode()));
        }
    }

    abstract ad f();

    final void h(io ioVar) {
        this.p = ioVar;
    }

    void j(T t) {
        mo232(new JSONObject(), (((e) this.q).j ? this.n.get(t) : this.o).m242(), t);
    }

    void k(T t, String str) {
        l(new JSONObject(), t, str);
    }

    final void l(JSONObject jSONObject, T t, String str) {
        boolean z = ((e) this.q).f6018e && !TextUtils.isEmpty(((e) this.q).a);
        ad adVarF = ((e) this.q).j ? this.n.get(t) : this.o;
        if (adVarF == null) {
            adVarF = f();
            if (((e) this.q).j) {
                this.n.put(t, adVarF);
            } else {
                this.o = adVarF;
            }
            adVarF.m1070(m());
        }
        adVarF.m240();
        adVarF.s(((e) this.q).a, ((e) this.q).b, z, ((e) this.q).f6017d, ((e) this.q).h, ((e) this.q).i);
        adVarF.m239(str);
        if (!((e) this.q).f6020g) {
            super.mo229(jSONObject, null, t);
            return;
        }
        ArrayList arrayList = new ArrayList();
        r(t, arrayList);
        List<WebView> arrayList2 = new ArrayList<>();
        io ioVar = this.p;
        if (ioVar != null) {
            arrayList2 = ioVar.mo482(t);
        }
        List<WebView> listM950 = jt.m950(arrayList, arrayList2);
        if (listM950.isEmpty() || ((e) this.q).f6019f) {
            View viewO = o(t);
            if (viewO != null) {
                viewO.addOnLayoutChangeListener(new a(t));
            }
            if (listM950.isEmpty()) {
                super.mo229(jSONObject, null, t);
                return;
            }
        }
        if (((e) this.q).k) {
            t.m1043().post(new b(t, listM950, jSONObject));
        } else {
            n(t, listM950);
            super.mo229(jSONObject, listM950.get(0), t);
        }
    }

    abstract p<WebView, T> m();

    abstract View o(T t);

    final void q(v<T>.e eVar) {
        this.q = eVar;
    }

    abstract void r(T t, List<WebView> list);

    @Override // com.json.adqualitysdk.sdk.i.y
    /* JADX INFO: renamed from: ﻐ */
    protected final String mo223(T t) {
        return (((e) this.q).j ? this.n.get(t) : this.o).mo223(t);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.json.adqualitysdk.sdk.i.y, com.json.adqualitysdk.sdk.i.p
    /* JADX INFO: renamed from: ｋ */
    public final /* synthetic */ void mo229(JSONObject jSONObject, Object obj, Object obj2) {
        super.mo226(jSONObject, (WebView) obj, obj2);
    }
}
