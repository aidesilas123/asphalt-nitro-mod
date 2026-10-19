package com.applovin.exoplayer2.i.g;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.i.a;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes.dex */
final class d {
    public final long Gi;

    @Nullable
    public final String JN;

    @Nullable
    private final String[] SA;
    public final String SB;

    @Nullable
    public final String SC;

    @Nullable
    public final d SD;
    private final HashMap<String, Integer> SE;
    private final HashMap<String, Integer> SF;
    private List<d> SG;
    public final boolean Sx;
    public final long Sy;

    @Nullable
    public final g Sz;

    @Nullable
    public final String tag;

    private d(@Nullable String str, @Nullable String str2, long j, long j2, @Nullable g gVar, @Nullable String[] strArr, String str3, @Nullable String str4, @Nullable d dVar) {
        this.tag = str;
        this.JN = str2;
        this.SC = str4;
        this.Sz = gVar;
        this.SA = strArr;
        this.Sx = str2 != null;
        this.Gi = j;
        this.Sy = j2;
        this.SB = (String) com.applovin.exoplayer2.l.a.checkNotNull(str3);
        this.SD = dVar;
        this.SE = new HashMap<>();
        this.SF = new HashMap<>();
    }

    private static SpannableStringBuilder a(String str, Map<String, a.C0041a> map) {
        if (!map.containsKey(str)) {
            a.C0041a c0041a = new a.C0041a();
            c0041a.m(new SpannableStringBuilder());
            map.put(str, c0041a);
        }
        return (SpannableStringBuilder) com.applovin.exoplayer2.l.a.checkNotNull(map.get(str).lQ());
    }

    public static d a(@Nullable String str, long j, long j2, @Nullable g gVar, @Nullable String[] strArr, String str2, @Nullable String str3, @Nullable d dVar) {
        return new d(str, null, j, j2, gVar, strArr, str2, str3, dVar);
    }

    private void a(long j, String str, List<Pair<String, String>> list) {
        if (!"".equals(this.SB)) {
            str = this.SB;
        }
        if (bh(j) && TtmlNode.TAG_DIV.equals(this.tag) && this.SC != null) {
            list.add(new Pair<>(str, this.SC));
            return;
        }
        for (int i = 0; i < mE(); i++) {
            eC(i).a(j, str, list);
        }
    }

    private void a(long j, Map<String, g> map, Map<String, e> map2, String str, Map<String, a.C0041a> map3) {
        int i;
        if (bh(j)) {
            String str2 = "".equals(this.SB) ? str : this.SB;
            Iterator<Map.Entry<String, Integer>> it = this.SF.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<String, Integer> next = it.next();
                String key = next.getKey();
                int iIntValue = this.SE.containsKey(key) ? this.SE.get(key).intValue() : 0;
                int iIntValue2 = next.getValue().intValue();
                if (iIntValue != iIntValue2) {
                    a(map, (a.C0041a) com.applovin.exoplayer2.l.a.checkNotNull(map3.get(key)), iIntValue, iIntValue2, ((e) com.applovin.exoplayer2.l.a.checkNotNull(map2.get(str2))).Ol);
                }
            }
            for (i = 0; i < mE(); i++) {
                eC(i).a(j, map, map2, str2, map3);
            }
        }
    }

    private void a(long j, boolean z, String str, Map<String, a.C0041a> map) {
        this.SE.clear();
        this.SF.clear();
        if ("metadata".equals(this.tag)) {
            return;
        }
        if (!"".equals(this.SB)) {
            str = this.SB;
        }
        if (this.Sx && z) {
            a(str, map).append((CharSequence) com.applovin.exoplayer2.l.a.checkNotNull(this.JN));
            return;
        }
        if (TtmlNode.TAG_BR.equals(this.tag) && z) {
            a(str, map).append('\n');
            return;
        }
        if (bh(j)) {
            for (Map.Entry<String, a.C0041a> entry : map.entrySet()) {
                this.SE.put(entry.getKey(), Integer.valueOf(((CharSequence) com.applovin.exoplayer2.l.a.checkNotNull(entry.getValue().lQ())).length()));
            }
            boolean zEquals = TtmlNode.TAG_P.equals(this.tag);
            for (int i = 0; i < mE(); i++) {
                eC(i).a(j, z || zEquals, str, map);
            }
            if (zEquals) {
                f.b(a(str, map));
            }
            for (Map.Entry<String, a.C0041a> entry2 : map.entrySet()) {
                this.SF.put(entry2.getKey(), Integer.valueOf(((CharSequence) com.applovin.exoplayer2.l.a.checkNotNull(entry2.getValue().lQ())).length()));
            }
        }
    }

    private static void a(SpannableStringBuilder spannableStringBuilder) {
        for (a aVar : (a[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), a.class)) {
            spannableStringBuilder.replace(spannableStringBuilder.getSpanStart(aVar), spannableStringBuilder.getSpanEnd(aVar), "");
        }
        for (int i = 0; i < spannableStringBuilder.length(); i++) {
            if (spannableStringBuilder.charAt(i) == ' ') {
                int i2 = i + 1;
                int i3 = i2;
                while (i3 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i3) == ' ') {
                    i3++;
                }
                int i4 = i3 - i2;
                if (i4 > 0) {
                    spannableStringBuilder.delete(i, i4 + i);
                }
            }
        }
        if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(0) == ' ') {
            spannableStringBuilder.delete(0, 1);
        }
        for (int i5 = 0; i5 < spannableStringBuilder.length() - 1; i5++) {
            if (spannableStringBuilder.charAt(i5) == '\n') {
                int i6 = i5 + 1;
                if (spannableStringBuilder.charAt(i6) == ' ') {
                    spannableStringBuilder.delete(i6, i5 + 2);
                }
            }
        }
        if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == ' ') {
            spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
        }
        for (int i7 = 0; i7 < spannableStringBuilder.length() - 1; i7++) {
            if (spannableStringBuilder.charAt(i7) == ' ') {
                int i8 = i7 + 1;
                if (spannableStringBuilder.charAt(i8) == '\n') {
                    spannableStringBuilder.delete(i7, i8);
                }
            }
        }
        if (spannableStringBuilder.length() <= 0 || spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) != '\n') {
            return;
        }
        spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
    }

    private void a(Map<String, g> map, a.C0041a c0041a, int i, int i2, int i3) {
        g gVarA = f.a(this.Sz, this.SA, map);
        SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) c0041a.lQ();
        if (spannableStringBuilder == null) {
            spannableStringBuilder = new SpannableStringBuilder();
            c0041a.m(spannableStringBuilder);
        }
        SpannableStringBuilder spannableStringBuilder2 = spannableStringBuilder;
        if (gVarA != null) {
            f.a(spannableStringBuilder2, i, i2, gVarA, this.SD, map, i3);
            if (TtmlNode.TAG_P.equals(this.tag)) {
                if (gVarA.mP() != Float.MAX_VALUE) {
                    c0041a.r((gVarA.mP() * (-90.0f)) / 100.0f);
                }
                if (gVarA.mT() != null) {
                    c0041a.a(gVarA.mT());
                }
                if (gVarA.mU() != null) {
                    c0041a.b(gVarA.mU());
                }
            }
        }
    }

    private void a(TreeSet<Long> treeSet, boolean z) {
        boolean zEquals = TtmlNode.TAG_P.equals(this.tag);
        boolean zEquals2 = TtmlNode.TAG_DIV.equals(this.tag);
        if (z || zEquals || (zEquals2 && this.SC != null)) {
            long j = this.Gi;
            if (j != C.TIME_UNSET) {
                treeSet.add(Long.valueOf(j));
            }
            long j2 = this.Sy;
            if (j2 != C.TIME_UNSET) {
                treeSet.add(Long.valueOf(j2));
            }
        }
        if (this.SG == null) {
            return;
        }
        for (int i = 0; i < this.SG.size(); i++) {
            this.SG.get(i).a(treeSet, z || zEquals);
        }
    }

    public static d as(String str) {
        return new d(null, f.at(str), C.TIME_UNSET, C.TIME_UNSET, null, null, "", null, null);
    }

    public List<com.applovin.exoplayer2.i.a> a(long j, Map<String, g> map, Map<String, e> map2, Map<String, String> map3) {
        List<Pair<String, String>> arrayList = new ArrayList<>();
        a(j, this.SB, arrayList);
        TreeMap treeMap = new TreeMap();
        a(j, false, this.SB, (Map<String, a.C0041a>) treeMap);
        a(j, map, map2, this.SB, treeMap);
        ArrayList arrayList2 = new ArrayList();
        for (Pair<String, String> pair : arrayList) {
            String str = map3.get(pair.second);
            if (str != null) {
                byte[] bArrDecode = Base64.decode(str, 0);
                Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
                e eVar = (e) com.applovin.exoplayer2.l.a.checkNotNull(map2.get(pair.first));
                arrayList2.add(new a.C0041a().a(bitmapDecodeByteArray).o(eVar.Od).eg(0).b(eVar.Oa, 0).ef(eVar.Oc).p(eVar.SH).q(eVar.SJ).ei(eVar.Ol).lU());
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            e eVar2 = (e) com.applovin.exoplayer2.l.a.checkNotNull(map2.get(entry.getKey()));
            a.C0041a c0041a = (a.C0041a) entry.getValue();
            a((SpannableStringBuilder) com.applovin.exoplayer2.l.a.checkNotNull(c0041a.lQ()));
            c0041a.b(eVar2.Oa, eVar2.Ob);
            c0041a.ef(eVar2.Oc);
            c0041a.o(eVar2.Od);
            c0041a.p(eVar2.SH);
            c0041a.c(eVar2.Ok, eVar2.Oj);
            c0041a.ei(eVar2.Ol);
            arrayList2.add(c0041a.lU());
        }
        return arrayList2;
    }

    public void a(d dVar) {
        if (this.SG == null) {
            this.SG = new ArrayList();
        }
        this.SG.add(dVar);
    }

    public boolean bh(long j) {
        long j2 = this.Gi;
        return (j2 == C.TIME_UNSET && this.Sy == C.TIME_UNSET) || (j2 <= j && this.Sy == C.TIME_UNSET) || ((j2 == C.TIME_UNSET && j < this.Sy) || (j2 <= j && j < this.Sy));
    }

    public d eC(int i) {
        List<d> list = this.SG;
        if (list != null) {
            return list.get(i);
        }
        throw new IndexOutOfBoundsException();
    }

    public int mE() {
        List<d> list = this.SG;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public long[] mF() {
        TreeSet<Long> treeSet = new TreeSet<>();
        int i = 0;
        a(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator<Long> it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i] = it.next().longValue();
            i++;
        }
        return jArr;
    }

    @Nullable
    public String[] mG() {
        return this.SA;
    }
}
