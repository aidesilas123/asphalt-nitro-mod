package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.AdPlacementType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ah, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1581ah implements InterfaceC06600j, InterfaceC06640o {
    public static byte[] A0A;
    public static String[] A0B = {"OTBhn", "woE0GsYsDC", "jJJsRhZ6eh", "RbmDZKGZyk", "MbYnCV2deeCvNEpfUSPgn7RvJuamywdV", "va4Mi1JJiq4w08mNkhVxy34L1bzftr4W", "QQZqW8pW387BdDH3gcXSwYVoWAeaIxNz", "E72k8"};
    public static final String A0C;
    public int A00;
    public AnonymousClass12 A01;
    public AnonymousClass13 A02;
    public J3 A03;
    public List<UJ> A04;
    public boolean A05;
    public boolean A06;
    public boolean A07;
    public boolean A08;
    public final YA A09;

    static {
        A04();
        A0C = C1581ah.class.getSimpleName();
    }

    public C1581ah(YA ya) {
        this(ya, new AnonymousClass12());
    }

    public C1581ah(YA ya, AnonymousClass12 anonymousClass12) {
        this.A00 = 200;
        this.A01 = anonymousClass12;
        this.A09 = ya;
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 106);
        }
        return new String(bArrCopyOfRange);
    }

    private Map<String, String> A03(Map<String, String> map) {
        HashMap map2 = new HashMap();
        String strA02 = A02(116, 4, 94);
        if (map.containsKey(strA02)) {
            map2.put(strA02, map.get(strA02));
        }
        String strA022 = A02(108, 8, 41);
        if (map.containsKey(strA022)) {
            map2.put(strA022, map.get(strA022));
        }
        return map2;
    }

    public static void A04() {
        A0A = new byte[]{124, 89, 92, 77, 73, 88, 79, Ascii.GS, 92, 81, 79, 88, 92, 89, 68, Ascii.GS, 81, 82, 92, 89, 88, 89, Ascii.GS, 89, 92, 73, 92, 93, 114, 119, 125, 117, 62, 118, Ascii.DEL, 110, 110, 123, 112, 123, 122, 62, 113, 112, 62, 114, 113, 125, 117, 109, 125, 108, 123, 123, 112, 62, Ascii.DEL, 122, 104, 71, 66, 72, 64, Ascii.VT, 71, 68, 76, 76, 78, 79, 45, Ascii.SUB, Ascii.SUB, 7, Ascii.SUB, 72, Ascii.CR, Ascii.DLE, Ascii.CR, Ascii.VT, Ascii.GS, Ascii.FS, 1, 6, Ascii.SI, 72, 9, Ascii.VT, Ascii.FS, 1, 7, 6, 64, 66, 81, 71, 64, 77, 87, 54, 52, 39, 49, 60, 59, 49, 92, 75, 48, 45, 34, 51, 48, 43, 44, 55, 66, 93, 81, 67};
    }

    private void A05(AnonymousClass12 anonymousClass12) {
        if (this.A05) {
            throw new IllegalStateException(A02(0, 27, 87));
        }
        this.A01 = anonymousClass12;
        List<AnonymousClass12> listA0f = anonymousClass12.A0f();
        if (listA0f != null && listA0f.size() > 0) {
            int size = listA0f.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                C1581ah c1581ah = new C1581ah(this.A09);
                c1581ah.A05(listA0f.get(i));
                arrayList.add(new UJ(this.A09, c1581ah, (C8G) null, this.A03));
            }
            this.A04 = arrayList;
        }
        this.A05 = true;
        this.A06 = A07();
    }

    private void A06(Map<String, String> map, Map<String, String> map2) {
        try {
            new Handler().postDelayed(new C1582ai(this, map2, A03(map)), this.A01.A07() * 1000);
        } catch (Exception unused) {
        }
    }

    private boolean A07() {
        if (((!this.A01.A0h() && !TextUtils.isEmpty(this.A01.A0W())) || (!TextUtils.isEmpty(this.A01.A0T()) && this.A01.A0h())) && (this.A01.A0G() != null || this.A01.A0h())) {
            J4 j4A0F = this.A01.A0F();
            if (A0B[2].length() != 10) {
                throw new RuntimeException();
            }
            A0B[6] = "coz4LHwVNN2LSDndRSBnj9WvwXuRM5HO";
            if (j4A0F != null || A7W() == AdPlacementType.NATIVE_BANNER) {
                return true;
            }
        }
        return false;
    }

    public final int A08() {
        return this.A01.A02();
    }

    public final int A09() {
        return this.A01.A05();
    }

    public final int A0A() {
        int iA06 = this.A01.A06();
        if (iA06 < 0 || iA06 > 100) {
            return 0;
        }
        return iA06;
    }

    public final int A0B() {
        return this.A00;
    }

    public final int A0C() {
        return this.A01.A08();
    }

    public final int A0D() {
        return this.A01.A09();
    }

    public final AnonymousClass12 A0E() {
        return this.A01;
    }

    public final AnonymousClass13 A0F() {
        return this.A02;
    }

    public final String A0G() {
        return this.A01.A0a();
    }

    public final List<UJ> A0H() {
        if (A0T()) {
            return this.A04;
        }
        return null;
    }

    public final void A0I() {
        if (this.A08) {
            return;
        }
        String strA0b = A0E().A0b();
        if (A0B[2].length() != 10) {
            throw new RuntimeException();
        }
        A0B[5] = "8ArINtb0xmmgo9NmELWQk3NiIhKYvaDc";
        if (strA0b != null) {
            this.A09.A09().ADr(strA0b);
        }
        this.A08 = true;
    }

    public final void A0J() {
        Iterator<UJ> it;
        List<UJ> list = this.A04;
        if (list == null) {
            return;
        }
        boolean zIsEmpty = list.isEmpty();
        if (A0B[6].charAt(13) != 'D') {
            throw new RuntimeException();
        }
        A0B[6] = "kj4WnsmCok25qDrlf1kxSYggARLvW33C";
        if (zIsEmpty) {
            return;
        }
        List<UJ> list2 = this.A04;
        if (A0B[2].length() != 10) {
            it = list2.iterator();
        } else {
            A0B[2] = "wGXHpE1nya";
            it = list2.iterator();
        }
        while (true) {
            boolean zHasNext = it.hasNext();
            if (A0B[2].length() != 10) {
                A0B[6] = "0lb5BUzW8n1EJDWyWAqaA7d0lZJNpkzV";
                if (!zHasNext) {
                    return;
                }
            } else {
                A0B[5] = "QJQdkpg5cmGOeaue26HVF3aLtsB2qwfM";
                if (!zHasNext) {
                    return;
                }
            }
            it.next().unregisterView();
        }
    }

    public final void A0K(AnonymousClass13 anonymousClass13) {
        this.A02 = anonymousClass13;
    }

    public final void A0L(YA ya, AnonymousClass13 anonymousClass13, InterfaceC1086If interfaceC1086If, C06941s c06941s, J3 j3) {
        this.A02 = anonymousClass13;
        this.A03 = j3;
        JSONObject jSONObjectA03 = c06941s.A03();
        C8G c8gA01 = c06941s.A01();
        this.A00 = c8gA01 != null ? c8gA01.A06() : 200;
        A05(AnonymousClass14.A00(ya, jSONObjectA03, L0.A02(jSONObjectA03, A02(106, 2, 85))));
        if (C06610k.A06(ya, this, interfaceC1086If)) {
            ya.A0E().A4H();
            anonymousClass13.ACE(this, JG.A00(AdErrorType.NO_FILL));
        } else if (anonymousClass13 != null) {
            anonymousClass13.ACB(this);
        }
    }

    public final void A0M(Map<String, String> map) {
        if (A0T()) {
            if (IP.A1c(this.A09) && LW.A03(map)) {
                String str = A0C;
                if (A0B[4].charAt(15) != 'f') {
                    throw new RuntimeException();
                }
                A0B[6] = "D3JUlaax70Z19DqZX7Vx94n8SobUQcIP";
                Log.e(str, A02(27, 31, 116));
                return;
            }
            HashMap map2 = new HashMap();
            if (map != null) {
                map2.putAll(map);
            }
            C1138Ki.A02(this.A09, A02(58, 12, 65));
            AnonymousClass13 anonymousClass13 = this.A02;
            if (anonymousClass13 != null) {
                anonymousClass13.ACA(this);
            }
            if (this.A01.A0h()) {
                map2.put(A02(99, 7, 63), String.valueOf(A0E().A04()));
                map2.put(A02(92, 7, 73), String.valueOf(A0E().A03()));
            }
            YA ya = this.A09;
            AbstractC06570g abstractC06570gA00 = C06580h.A00(ya, ya.A09(), this.A01.A0Y(), this.A01.A0B(), map2, null);
            if (abstractC06570gA00 != null) {
                try {
                    abstractC06570gA00.A0C();
                } catch (Exception e2) {
                    Log.e(A0C, A02(70, 22, 2), e2);
                }
            }
        }
    }

    public final void A0N(Map<String, String> map) {
        this.A09.A09().A9I(this.A01.A0Y(), map);
    }

    public final void A0O(Map<String, String> map) {
        if (A0T() && !this.A07) {
            AnonymousClass13 anonymousClass13 = this.A02;
            if (anonymousClass13 != null) {
                anonymousClass13.ACC(this);
            }
            HashMap map2 = new HashMap();
            if (map != null) {
                map2.putAll(map);
            }
            if (this.A01.A0h()) {
                map2.put(A02(99, 7, 63), String.valueOf(A0E().A04()));
                map2.put(A02(92, 7, 73), String.valueOf(A0E().A03()));
            }
            if (!TextUtils.isEmpty(A6N())) {
                if (!this.A01.A0h()) {
                    this.A09.A0E().A2g();
                    C2C.A00(this.A01.A0Z());
                }
                this.A09.A09().A9S(A6N(), map2);
            }
            if (A0V() || A0W()) {
                A06(map, map2);
            }
            this.A07 = true;
        }
    }

    public final void A0P(Map<String, String> map) {
        this.A09.A09().A9n(this.A01.A0Y(), map);
    }

    public final void A0Q(Map<String, String> map) {
        this.A09.A09().A9o(this.A01.A0Y(), map);
    }

    public final boolean A0R() {
        return true;
    }

    public final boolean A0S() {
        return A0T() && this.A01.A0B() != null;
    }

    public final boolean A0T() {
        return this.A05 && this.A06;
    }

    public final boolean A0U() {
        return this.A01.A0g();
    }

    public final boolean A0V() {
        if (IP.A1C(this.A09) && A0T()) {
            boolean zA0i = this.A01.A0i();
            if (A0B[4].charAt(15) != 'f') {
                throw new RuntimeException();
            }
            A0B[6] = "hsrOxssvGH6abDOIeI9T6FJFSNjQSl4a";
            if (zA0i) {
                return true;
            }
        }
        return false;
    }

    public final boolean A0W() {
        if (IP.A1C(this.A09) && A0T()) {
            boolean zA0j = this.A01.A0j();
            String[] strArr = A0B;
            if (strArr[0].length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            A0B[2] = "qputmJyOXU";
            if (zA0j) {
                return true;
            }
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06600j
    public final String A6N() {
        return this.A01.A0Y();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06600j
    public final Collection<String> A6g() {
        return A0E().A0e();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06600j
    public final EnumC06590i A77() {
        return A0E().A0C();
    }

    public AdPlacementType A7W() {
        return AdPlacementType.NATIVE;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06640o
    public final boolean AFs() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06640o
    public final void onDestroy() {
    }
}
