package com.nearme.game.sdk.c.b;

import com.json.mediationsdk.logger.IronSourceError;
import java.io.Serializable;

/* JADX INFO: compiled from: ApiRequest.java */
/* JADX INFO: loaded from: classes4.dex */
public class a implements Serializable {
    private static final long serialVersionUID = 4059808429728006510L;
    public int a;
    public byte[] b;
    public long c;

    /* JADX WARN: Removed duplicated region for block: B:14:0x001d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x004f A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean equals(java.lang.Object r8) {
        /*
            r7 = this;
            r0 = 1
            if (r8 != r7) goto L4
            return r0
        L4:
            boolean r1 = r8 instanceof com.nearme.game.sdk.c.b.a
            r2 = 0
            if (r1 == 0) goto L50
            com.nearme.game.sdk.c.b.a r8 = (com.nearme.game.sdk.c.b.a) r8
            int r1 = r8.a
            int r3 = r7.a
            if (r1 != r3) goto L50
            byte[] r8 = r8.b
            byte[] r1 = r7.b
            if (r8 != 0) goto L1b
            if (r1 != 0) goto L1d
            r8 = 1
            goto L4d
        L1b:
            if (r1 != 0) goto L1f
        L1d:
            r8 = 0
            goto L4d
        L1f:
            java.util.HashSet r3 = new java.util.HashSet
            r3.<init>()
            int r4 = r8.length
            r5 = 0
        L26:
            if (r5 >= r4) goto L34
            r6 = r8[r5]
            java.lang.Byte r6 = java.lang.Byte.valueOf(r6)
            r3.add(r6)
            int r5 = r5 + 1
            goto L26
        L34:
            java.util.HashSet r8 = new java.util.HashSet
            r8.<init>()
            int r4 = r1.length
            r5 = 0
        L3b:
            if (r5 >= r4) goto L49
            r6 = r1[r5]
            java.lang.Byte r6 = java.lang.Byte.valueOf(r6)
            r8.add(r6)
            int r5 = r5 + 1
            goto L3b
        L49:
            boolean r8 = r3.equals(r8)
        L4d:
            if (r8 == 0) goto L50
            return r0
        L50:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nearme.game.sdk.c.b.a.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        int i = this.a + IronSourceError.ERROR_NON_EXISTENT_INSTANCE;
        if (this.b != null) {
            int i2 = 17;
            int i3 = 0;
            while (true) {
                byte[] bArr = this.b;
                if (i3 >= bArr.length) {
                    break;
                }
                i2 = (i2 * 31) + bArr[i3];
                i3++;
            }
            i = (i * 31) + i2;
        }
        return (i * 31) + ((int) this.c);
    }
}
