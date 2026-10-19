package com.applovin.exoplayer2.ui;

import android.text.Html;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.common.a.u;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.ui.h;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
final class h {
    private static final Pattern Yj = Pattern.compile("(&#13;)?&#10;");

    public static class a {
        public final String Yk;
        public final Map<String, String> Yl;

        private a(String str, Map<String, String> map) {
            this.Yk = str;
            this.Yl = map;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class b {
        private static final Comparator<b> Ym = new Comparator() { // from class: com.applovin.exoplayer2.ui.r
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return h.b.b((h.b) obj, (h.b) obj2);
            }
        };
        private static final Comparator<b> Yn = new Comparator() { // from class: com.applovin.exoplayer2.ui.q
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return h.b.a((h.b) obj, (h.b) obj2);
            }
        };
        public final String Yo;
        public final String Yp;
        public final int end;
        public final int start;

        private b(int i, int i2, String str, String str2) {
            this.start = i;
            this.end = i2;
            this.Yo = str;
            this.Yp = str2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int a(b bVar, b bVar2) {
            int iCompare = Integer.compare(bVar2.start, bVar.start);
            if (iCompare != 0) {
                return iCompare;
            }
            int iCompareTo = bVar2.Yo.compareTo(bVar.Yo);
            return iCompareTo != 0 ? iCompareTo : bVar2.Yp.compareTo(bVar.Yp);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int b(b bVar, b bVar2) {
            int iCompare = Integer.compare(bVar2.end, bVar.end);
            if (iCompare != 0) {
                return iCompare;
            }
            int iCompareTo = bVar.Yo.compareTo(bVar2.Yo);
            return iCompareTo != 0 ? iCompareTo : bVar.Yp.compareTo(bVar2.Yp);
        }
    }

    private static final class c {
        private final List<b> Yq = new ArrayList();
        private final List<b> Yr = new ArrayList();
    }

    private static String I(int i, int i2) {
        StringBuilder sb = new StringBuilder();
        if (i2 == 1) {
            sb.append("filled ");
        } else if (i2 == 2) {
            sb.append("open ");
        }
        if (i == 0) {
            sb.append("none");
        } else if (i == 1) {
            sb.append("circle");
        } else if (i == 2) {
            sb.append("dot");
        } else if (i != 3) {
            sb.append("unset");
        } else {
            sb.append("sesame");
        }
        return sb.toString();
    }

    @Nullable
    private static String K(Object obj) {
        if ((obj instanceof StrikethroughSpan) || (obj instanceof ForegroundColorSpan) || (obj instanceof BackgroundColorSpan) || (obj instanceof com.applovin.exoplayer2.i.d.a) || (obj instanceof AbsoluteSizeSpan) || (obj instanceof RelativeSizeSpan) || (obj instanceof com.applovin.exoplayer2.i.d.e)) {
            return "</span>";
        }
        if (obj instanceof TypefaceSpan) {
            if (((TypefaceSpan) obj).getFamily() != null) {
                return "</span>";
            }
            return null;
        }
        if (obj instanceof StyleSpan) {
            int style = ((StyleSpan) obj).getStyle();
            if (style == 1) {
                return "</b>";
            }
            if (style == 2) {
                return "</i>";
            }
            if (style == 3) {
                return "</i></b>";
            }
        } else {
            if (obj instanceof com.applovin.exoplayer2.i.d.c) {
                return "<rt>" + o(((com.applovin.exoplayer2.i.d.c) obj).Rp) + "</rt></ruby>";
            }
            if (obj instanceof UnderlineSpan) {
                return "</u>";
            }
        }
        return null;
    }

    private static SparseArray<c> a(Spanned spanned, float f2) {
        SparseArray<c> sparseArray = new SparseArray<>();
        for (Object obj : spanned.getSpans(0, spanned.length(), Object.class)) {
            String strA = a(obj, f2);
            String strK = K(obj);
            int spanStart = spanned.getSpanStart(obj);
            int spanEnd = spanned.getSpanEnd(obj);
            if (strA != null) {
                com.applovin.exoplayer2.l.a.checkNotNull(strK);
                b bVar = new b(spanStart, spanEnd, strA, strK);
                b(sparseArray, spanStart).Yq.add(bVar);
                b(sparseArray, spanEnd).Yr.add(bVar);
            }
        }
        return sparseArray;
    }

    public static a a(@Nullable CharSequence charSequence, float f2) {
        if (charSequence == null) {
            return new a("", u.gi());
        }
        if (!(charSequence instanceof Spanned)) {
            return new a(o(charSequence), u.gi());
        }
        Spanned spanned = (Spanned) charSequence;
        HashSet hashSet = new HashSet();
        int i = 0;
        for (BackgroundColorSpan backgroundColorSpan : (BackgroundColorSpan[]) spanned.getSpans(0, spanned.length(), BackgroundColorSpan.class)) {
            hashSet.add(Integer.valueOf(backgroundColorSpan.getBackgroundColor()));
        }
        HashMap map = new HashMap();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            int iIntValue = ((Integer) it.next()).intValue();
            map.put(e.aJ("bg_" + iIntValue), ai.a("background-color:%s;", e.eX(iIntValue)));
        }
        SparseArray<c> sparseArrayA = a(spanned, f2);
        StringBuilder sb = new StringBuilder(spanned.length());
        int i2 = 0;
        while (i < sparseArrayA.size()) {
            int iKeyAt = sparseArrayA.keyAt(i);
            sb.append(o(spanned.subSequence(i2, iKeyAt)));
            c cVar = sparseArrayA.get(iKeyAt);
            Collections.sort(cVar.Yr, b.Yn);
            Iterator it2 = cVar.Yr.iterator();
            while (it2.hasNext()) {
                sb.append(((b) it2.next()).Yp);
            }
            Collections.sort(cVar.Yq, b.Ym);
            Iterator it3 = cVar.Yq.iterator();
            while (it3.hasNext()) {
                sb.append(((b) it3.next()).Yo);
            }
            i++;
            i2 = iKeyAt;
        }
        sb.append(o(spanned.subSequence(i2, spanned.length())));
        return new a(sb.toString(), map);
    }

    @Nullable
    private static String a(Object obj, float f2) {
        if (obj instanceof StrikethroughSpan) {
            return "<span style='text-decoration:line-through;'>";
        }
        if (obj instanceof ForegroundColorSpan) {
            return ai.a("<span style='color:%s;'>", e.eX(((ForegroundColorSpan) obj).getForegroundColor()));
        }
        if (obj instanceof BackgroundColorSpan) {
            return ai.a("<span class='bg_%s'>", Integer.valueOf(((BackgroundColorSpan) obj).getBackgroundColor()));
        }
        if (obj instanceof com.applovin.exoplayer2.i.d.a) {
            return "<span style='text-combine-upright:all;'>";
        }
        if (obj instanceof AbsoluteSizeSpan) {
            return ai.a("<span style='font-size:%.2fpx;'>", Float.valueOf(((AbsoluteSizeSpan) obj).getDip() ? r4.getSize() : r4.getSize() / f2));
        }
        if (obj instanceof RelativeSizeSpan) {
            return ai.a("<span style='font-size:%.2f%%;'>", Float.valueOf(((RelativeSizeSpan) obj).getSizeChange() * 100.0f));
        }
        if (obj instanceof TypefaceSpan) {
            String family = ((TypefaceSpan) obj).getFamily();
            if (family != null) {
                return ai.a("<span style='font-family:\"%s\";'>", family);
            }
            return null;
        }
        if (obj instanceof StyleSpan) {
            int style = ((StyleSpan) obj).getStyle();
            if (style == 1) {
                return "<b>";
            }
            if (style == 2) {
                return "<i>";
            }
            if (style != 3) {
                return null;
            }
            return "<b><i>";
        }
        if (!(obj instanceof com.applovin.exoplayer2.i.d.c)) {
            if (obj instanceof UnderlineSpan) {
                return "<u>";
            }
            if (!(obj instanceof com.applovin.exoplayer2.i.d.e)) {
                return null;
            }
            com.applovin.exoplayer2.i.d.e eVar = (com.applovin.exoplayer2.i.d.e) obj;
            return ai.a("<span style='-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;'>", I(eVar.Rq, eVar.Rr), fb(eVar.oX));
        }
        int i = ((com.applovin.exoplayer2.i.d.c) obj).oX;
        if (i == -1) {
            return "<ruby style='ruby-position:unset;'>";
        }
        if (i == 1) {
            return "<ruby style='ruby-position:over;'>";
        }
        if (i != 2) {
            return null;
        }
        return "<ruby style='ruby-position:under;'>";
    }

    private static c b(SparseArray<c> sparseArray, int i) {
        c cVar = sparseArray.get(i);
        if (cVar != null) {
            return cVar;
        }
        c cVar2 = new c();
        sparseArray.put(i, cVar2);
        return cVar2;
    }

    private static String fb(int i) {
        return i != 2 ? "over right" : "under left";
    }

    private static String o(CharSequence charSequence) {
        return Yj.matcher(Html.escapeHtml(charSequence)).replaceAll("<br>");
    }
}
