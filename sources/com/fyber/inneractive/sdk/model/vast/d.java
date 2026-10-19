package com.fyber.inneractive.sdk.model.vast;

import android.text.TextUtils;
import com.facebook.internal.security.CertificateUtil;
import com.fyber.inneractive.sdk.util.IAlog;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class d {
    public final String a;
    public final String b;
    public int c = a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f2081d;

    public static class a implements Comparator<d> {
        @Override // java.util.Comparator
        public int compare(d dVar, d dVar2) {
            return dVar.c - dVar2.c;
        }
    }

    public d(String str, String str2) {
        this.a = str;
        this.b = str2;
        this.f2081d = b(str2);
    }

    public final int a() {
        String str;
        if (this.f2081d != 2 || (str = this.b) == null) {
            return -1;
        }
        ArrayList arrayList = (ArrayList) a(str);
        return (((((Integer) arrayList.get(0)).intValue() * 60 * 60) + (((Integer) arrayList.get(1)).intValue() * 60) + ((Integer) arrayList.get(2)).intValue()) * 1000) + ((Integer) arrayList.get(3)).intValue();
    }

    public List<Integer> a(String str) {
        ArrayList arrayList = new ArrayList();
        if (str == null) {
            return arrayList;
        }
        String[] strArrSplit = str.split(CertificateUtil.DELIMITER);
        if (strArrSplit.length != 3) {
            return arrayList;
        }
        String str2 = strArrSplit[0];
        String str3 = strArrSplit[1];
        String[] strArrSplit2 = strArrSplit[2].split("\\.");
        String str4 = strArrSplit2[0];
        String str5 = strArrSplit2.length > 1 ? strArrSplit2[1] : "000";
        try {
            arrayList.add(Integer.valueOf(Integer.parseInt(str2)));
            arrayList.add(Integer.valueOf(Integer.parseInt(str3)));
            arrayList.add(Integer.valueOf(Integer.parseInt(str4)));
            arrayList.add(Integer.valueOf(Integer.parseInt(str5)));
            return arrayList;
        } catch (NumberFormatException e2) {
            IAlog.e("ProgressTrackingEvent: failed convertOffsetToTimeList with %s", e2.getMessage());
            return new ArrayList();
        }
    }

    public int b() {
        if (TextUtils.isEmpty(this.b)) {
            return -1;
        }
        return Integer.parseInt(this.b.substring(0, r0.length() - 1));
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0040 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int b(java.lang.String r5) {
        /*
            r4 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r5)
            r1 = 0
            if (r0 != 0) goto L8c
            java.lang.String r0 = "-"
            boolean r0 = r5.startsWith(r0)
            if (r0 == 0) goto L11
            goto L8c
        L11:
            java.lang.String r0 = "%"
            boolean r2 = r5.endsWith(r0)
            r3 = 1
            if (r2 == 0) goto L41
            boolean r0 = r5.endsWith(r0)
            if (r0 != 0) goto L21
            goto L2d
        L21:
            int r0 = r4.b()     // Catch: java.lang.NumberFormatException -> L2f
            if (r0 < 0) goto L2d
            r2 = 100
            if (r0 > r2) goto L2d
            r0 = 1
            goto L3e
        L2d:
            r0 = 0
            goto L3e
        L2f:
            r0 = move-exception
            java.lang.Object[] r2 = new java.lang.Object[r3]
            java.lang.String r0 = r0.getMessage()
            r2[r1] = r0
            java.lang.String r0 = "ProgressTrackingEvent: failed isPercentageOffsetValid with %s"
            com.fyber.inneractive.sdk.util.IAlog.e(r0, r2)
            goto L2d
        L3e:
            if (r0 == 0) goto L41
            return r3
        L41:
            java.lang.String r0 = ":"
            boolean r0 = r5.contains(r0)
            if (r0 == 0) goto L8c
            java.util.List r5 = r4.a(r5)
            java.util.ArrayList r5 = (java.util.ArrayList) r5
            boolean r0 = r5.isEmpty()
            r2 = 2
            if (r0 != 0) goto L88
            java.lang.Object r0 = r5.get(r1)
            java.lang.Integer r0 = (java.lang.Integer) r0
            int r0 = r0.intValue()
            if (r0 < 0) goto L88
            java.lang.Object r0 = r5.get(r3)
            java.lang.Integer r0 = (java.lang.Integer) r0
            int r0 = r0.intValue()
            if (r0 < 0) goto L88
            java.lang.Object r0 = r5.get(r2)
            java.lang.Integer r0 = (java.lang.Integer) r0
            int r0 = r0.intValue()
            if (r0 < 0) goto L88
            r0 = 3
            java.lang.Object r5 = r5.get(r0)
            java.lang.Integer r5 = (java.lang.Integer) r5
            int r5 = r5.intValue()
            if (r5 < 0) goto L88
            goto L89
        L88:
            r3 = 0
        L89:
            if (r3 == 0) goto L8c
            return r2
        L8c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.model.vast.d.b(java.lang.String):int");
    }
}
