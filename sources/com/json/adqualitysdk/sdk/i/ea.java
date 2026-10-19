package com.json.adqualitysdk.sdk.i;

import android.media.AudioTrack;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.ViewConfiguration;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class ea extends dy {
    private static long j = -4962234331851583263L;
    private static int k = 0;
    private static int l = 1;
    private dx m;
    private dx[] n;

    public ea(dx dxVar, String str, List<dx> list, List<dx> list2, Cdo cdo) {
        super(str, list2, cdo);
        this.m = dxVar;
        if (list != null) {
            dx[] dxVarArr = new dx[list.size()];
            this.n = dxVarArr;
            list.toArray(dxVarArr);
        }
    }

    private static List<Class> g(dx[] dxVarArr, dr drVar, cj cjVar) {
        ArrayList arrayList = new ArrayList();
        int length = dxVarArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                return arrayList;
            }
            int i2 = k + 73;
            l = i2 % 128;
            if (i2 % 2 == 0) {
                arrayList.add((Class) dxVarArr[i].m702(drVar, cjVar).m674());
                i += 60;
            } else {
                arrayList.add((Class) dxVarArr[i].m702(drVar, cjVar).m674());
                i++;
            }
            int i3 = l + 11;
            k = i3 % 128;
            int i4 = i3 % 2;
        }
    }

    private static String h(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (h.f63) {
            h.f64 = i;
            char[] cArr2 = new char[cArr.length];
            h.f65 = 0;
            while (true) {
                int i2 = h.f65;
                if (i2 < cArr.length) {
                    cArr2[i2] = (char) (((long) (cArr[i2] ^ (h.f64 * i2))) ^ j);
                    h.f65++;
                } else {
                    str2 = new String(cArr2);
                }
            }
        }
        return str2;
    }

    private String i() {
        int i = k;
        int i2 = i + 13;
        l = i2 % 128;
        int i3 = i2 % 2;
        if (this.n != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(h("ო", 58631 - (ViewConfiguration.getDoubleTapTimeout() >> 16)).intern());
            sb.append(dx.a(this.n));
            sb.append(h("ჟ", 29179 - TextUtils.indexOf("", "")).intern());
            return sb.toString();
        }
        int i4 = i + 99;
        l = i4 % 128;
        if (i4 % 2 == 0) {
            throw null;
        }
        return "";
    }

    @Override // com.json.adqualitysdk.sdk.i.dy
    final String c(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.m);
        sb.append(h("\u10cf", (ViewConfiguration.getJumpTapTimeout() >> 16) + 53231).intern());
        sb.append(m705());
        sb.append(i());
        sb.append(h("\u10c9", 50951 - TextUtils.getOffsetAfter("", 0)).intern());
        sb.append(dx.a(objArr));
        sb.append(h("\u10c8", 29101 - TextUtils.indexOf("", "", 0, 0)).intern());
        String string = sb.toString();
        int i = k + 11;
        l = i % 128;
        int i2 = i % 2;
        return string;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0020, code lost:
    
        if ((r5 == r6) != true) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0022, code lost:
    
        if (r6 == null) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0024, code lost:
    
        r1 = r1 + 105;
        com.json.adqualitysdk.sdk.i.ea.k = r1 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x002e, code lost:
    
        if ((r1 % 2) == 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0030, code lost:
    
        r1 = ' ';
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0033, code lost:
    
        r1 = '\r';
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0035, code lost:
    
        if (r1 != '\r') goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x003f, code lost:
    
        if (com.json.adqualitysdk.sdk.i.ea.class == r6.getClass()) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0041, code lost:
    
        r0 = '-';
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0044, code lost:
    
        r0 = 24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0046, code lost:
    
        if (r0 == 24) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x004d, code lost:
    
        if (super.equals(r6) != false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x004f, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0050, code lost:
    
        r6 = (com.json.adqualitysdk.sdk.i.ea) r6;
        r0 = r5.m;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0054, code lost:
    
        if (r0 == null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0056, code lost:
    
        r1 = com.json.adqualitysdk.sdk.i.ea.k + 43;
        com.json.adqualitysdk.sdk.i.ea.l = r1 % 128;
        r1 = r1 % 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0066, code lost:
    
        if (r0.equals(r6.m) != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0068, code lost:
    
        r6 = com.json.adqualitysdk.sdk.i.ea.l + 111;
        com.json.adqualitysdk.sdk.i.ea.k = r6 % 128;
        r6 = r6 % 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0075, code lost:
    
        if (r6.m == null) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0077, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0078, code lost:
    
        r0 = r5.n;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x007a, code lost:
    
        if (r0 == null) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x007c, code lost:
    
        r1 = com.json.adqualitysdk.sdk.i.ea.l + 89;
        com.json.adqualitysdk.sdk.i.ea.k = r1 % 128;
        r1 = r1 % 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x008c, code lost:
    
        return r0.equals(r6.n);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0091, code lost:
    
        if (r6.n != null) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0093, code lost:
    
        r6 = ')';
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0096, code lost:
    
        r6 = '8';
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0098, code lost:
    
        if (r6 == '8') goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x009a, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x009b, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x009d, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00a0, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00a1, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0016, code lost:
    
        if ((r5 != r6) != false) goto L17;
     */
    @Override // com.json.adqualitysdk.sdk.i.dy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            int r0 = com.json.adqualitysdk.sdk.i.ea.k
            int r0 = r0 + 59
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.ea.l = r1
            int r0 = r0 % 2
            r2 = 1
            r3 = 0
            if (r0 != 0) goto L1b
            r0 = 43
            int r0 = r0 / r3
            if (r5 != r6) goto L15
            r0 = 0
            goto L16
        L15:
            r0 = 1
        L16:
            if (r0 == 0) goto La1
            goto L22
        L19:
            r6 = move-exception
            throw r6
        L1b:
            if (r5 != r6) goto L1f
            r0 = 1
            goto L20
        L1f:
            r0 = 0
        L20:
            if (r0 == r2) goto La1
        L22:
            if (r6 == 0) goto La0
            int r1 = r1 + 105
            int r0 = r1 % 128
            com.json.adqualitysdk.sdk.i.ea.k = r0
            int r1 = r1 % 2
            r0 = 13
            if (r1 == 0) goto L33
            r1 = 32
            goto L35
        L33:
            r1 = 13
        L35:
            if (r1 != r0) goto L9c
            java.lang.Class<com.ironsource.adqualitysdk.sdk.i.ea> r0 = com.json.adqualitysdk.sdk.i.ea.class
            java.lang.Class r1 = r6.getClass()
            r4 = 24
            if (r0 == r1) goto L44
            r0 = 45
            goto L46
        L44:
            r0 = 24
        L46:
            if (r0 == r4) goto L49
            goto La0
        L49:
            boolean r0 = super.equals(r6)
            if (r0 != 0) goto L50
            return r3
        L50:
            com.ironsource.adqualitysdk.sdk.i.ea r6 = (com.json.adqualitysdk.sdk.i.ea) r6
            com.ironsource.adqualitysdk.sdk.i.dx r0 = r5.m
            if (r0 == 0) goto L73
            int r1 = com.json.adqualitysdk.sdk.i.ea.k
            int r1 = r1 + 43
            int r4 = r1 % 128
            com.json.adqualitysdk.sdk.i.ea.l = r4
            int r1 = r1 % 2
            com.ironsource.adqualitysdk.sdk.i.dx r1 = r6.m
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L78
            int r6 = com.json.adqualitysdk.sdk.i.ea.l
            int r6 = r6 + 111
            int r0 = r6 % 128
            com.json.adqualitysdk.sdk.i.ea.k = r0
            int r6 = r6 % 2
            goto L77
        L73:
            com.ironsource.adqualitysdk.sdk.i.dx r0 = r6.m
            if (r0 == 0) goto L78
        L77:
            return r3
        L78:
            com.ironsource.adqualitysdk.sdk.i.dx[] r0 = r5.n
            if (r0 == 0) goto L8d
            int r1 = com.json.adqualitysdk.sdk.i.ea.l
            int r1 = r1 + 89
            int r2 = r1 % 128
            com.json.adqualitysdk.sdk.i.ea.k = r2
            int r1 = r1 % 2
            com.ironsource.adqualitysdk.sdk.i.dx[] r6 = r6.n
            boolean r6 = r0.equals(r6)
            return r6
        L8d:
            com.ironsource.adqualitysdk.sdk.i.dx[] r6 = r6.n
            r0 = 56
            if (r6 != 0) goto L96
            r6 = 41
            goto L98
        L96:
            r6 = 56
        L98:
            if (r6 == r0) goto L9b
            return r2
        L9b:
            return r3
        L9c:
            r6 = 0
            throw r6     // Catch: java.lang.Throwable -> L9e
        L9e:
            r6 = move-exception
            throw r6
        La0:
            return r3
        La1:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.ea.equals(java.lang.Object):boolean");
    }

    @Override // com.json.adqualitysdk.sdk.i.dy
    public final int hashCode() {
        int iHashCode;
        int iHashCode2 = super.hashCode() * 31;
        dx dxVar = this.m;
        int iHashCode3 = 0;
        if (dxVar != null) {
            int i = k + 59;
            l = i % 128;
            if ((i % 2 == 0 ? (char) 17 : (char) 24) != 24) {
                dxVar.hashCode();
                throw null;
            }
            iHashCode = dxVar.hashCode();
        } else {
            iHashCode = 0;
        }
        int i2 = (iHashCode2 + iHashCode) * 31;
        dx[] dxVarArr = this.n;
        if ((dxVarArr != null ? 'W' : 'G') != 'W') {
            int i3 = l + 117;
            k = i3 % 128;
            int i4 = i3 % 2;
        } else {
            int i5 = l + 115;
            k = i5 % 128;
            int i6 = i5 % 2;
            iHashCode3 = dxVarArr.hashCode();
        }
        return i2 + iHashCode3;
    }

    @Override // com.json.adqualitysdk.sdk.i.dy
    public final String toString() {
        int i = k + 59;
        l = i % 128;
        if (i % 2 != 0) {
            return c(e());
        }
        c(e());
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.dy, com.json.adqualitysdk.sdk.i.dx
    /* JADX INFO: renamed from: ﻛ */
    public final dp mo687(dr drVar, cj cjVar) {
        Method methodM967;
        List<Object> listF = f(drVar, cjVar);
        dx dxVar = this.m;
        if ((dxVar instanceof ej) && ((ej) dxVar).m712().equals(h("႒줋ꎯ鱙盯", (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 55711).intern())) {
            return cjVar.m452().m761().m762(m705()).m667(drVar, cjVar, listF).m676(false);
        }
        Object objM674 = this.m.m702(drVar, cjVar).m674();
        if (objM674 instanceof cg) {
            return new dp(((cg) objM674).mo388(m705(), listF, cjVar.m447()));
        }
        if (objM674 instanceof cf) {
            String strM705 = m705();
            cjVar.m447();
            return new dp(((cf) objM674).mo427(cjVar, strM705, listF, drVar));
        }
        if (objM674 instanceof cj) {
            synchronized (objM674) {
                cj cjVar2 = (cj) objM674;
                dn dnVarM456 = cjVar2.m456(m705());
                if (dnVarM456 != null) {
                    return dnVarM456.m667(cjVar2.m446(), cjVar2, listF).m676(false);
                }
                String strM445 = cjVar.m445();
                StringBuilder sb = new StringBuilder();
                sb.append(h("Ⴄퟰ鹕䚧ട\uf42e볖挬⮜ዹ\ud94a臔䠬よ\uf7ec브暼ⴗᑣ\udcd0茲䮚㉃", 51043 - (ViewConfiguration.getFadingEdgeLength() >> 16)).intern());
                sb.append(m705());
                cn.m519(strM445, sb.toString(), new NoSuchMethodException());
            }
        }
        try {
            dx[] dxVarArr = this.n;
            if (dxVarArr != null) {
                methodM967 = jw.m974(objM674, m705(), g(dxVarArr, drVar, cjVar));
            } else {
                methodM967 = jw.m967(objM674, m705(), listF);
            }
            if (methodM967 != null) {
                return new dp(methodM967.invoke(objM674, listF.toArray()));
            }
            listF.add(0, objM674);
            cz czVarM443 = cjVar.m443();
            String strM7052 = m705();
            cjVar.m447();
            return new dp(czVarM443.mo427(cjVar, strM7052, listF, drVar));
        } catch (IllegalAccessException e2) {
            String strM4452 = cjVar.m445();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(h("Ⴄퟰ鹕䚧ട\uf42e볖挬⮜ዹ\ud94a臔䠬よ\uf7ec브暼ⴗᑣ\udcd0茲䮚㉃", 51044 - (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1))).intern());
            sb2.append(this);
            cn.m519(strM4452, sb2.toString(), e2);
            return null;
        } catch (IllegalArgumentException e3) {
            String strM4453 = cjVar.m445();
            StringBuilder sb3 = new StringBuilder();
            sb3.append(h("Ⴄퟰ鹕䚧ട\uf42e볖挬⮜ዹ\ud94a臔䠬よ\uf7ec브暼ⴗᑣ\udcd0茲䮚㉃", 51044 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1))).intern());
            sb3.append(this);
            cn.m519(strM4453, sb3.toString(), e3);
            return null;
        } catch (Exception e4) {
            throw new RuntimeException(e4);
        }
    }
}
