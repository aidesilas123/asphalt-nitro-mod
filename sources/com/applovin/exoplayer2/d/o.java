package com.applovin.exoplayer2.d;

import android.annotation.SuppressLint;
import android.media.DeniedByServerException;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaDrm;
import android.media.MediaDrmException;
import android.media.NotProvisionedException;
import android.media.UnsupportedSchemeException;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.applovin.exoplayer2.common.base.Charsets;
import com.applovin.exoplayer2.d.e;
import com.applovin.exoplayer2.d.m;
import com.applovin.exoplayer2.l.ai;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(18)
public final class o implements m {
    public static final m.c tq = new m.c() { // from class: com.applovin.exoplayer2.d.l0
        @Override // com.applovin.exoplayer2.d.m.c
        public final m acquireExoMediaDrm(UUID uuid) {
            return o.d(uuid);
        }
    };
    private final UUID ey;
    private int sp;
    private final MediaDrm tr;

    @RequiresApi(31)
    private static class a {
        public static boolean a(MediaDrm mediaDrm, String str) {
            return mediaDrm.requiresSecureDecoder(str);
        }
    }

    private o(UUID uuid) throws UnsupportedSchemeException {
        com.applovin.exoplayer2.l.a.checkNotNull(uuid);
        com.applovin.exoplayer2.l.a.checkArgument(!com.applovin.exoplayer2.h.ak.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.ey = uuid;
        MediaDrm mediaDrm = new MediaDrm(c(uuid));
        this.tr = mediaDrm;
        this.sp = 1;
        if (com.applovin.exoplayer2.h.am.equals(uuid) && hR()) {
            a(mediaDrm);
        }
    }

    private static e.a a(UUID uuid, List<e.a> list) {
        boolean z;
        if (!com.applovin.exoplayer2.h.am.equals(uuid)) {
            return list.get(0);
        }
        if (ai.acV >= 28 && list.size() > 1) {
            e.a aVar = list.get(0);
            int length = 0;
            for (int i = 0; i < list.size(); i++) {
                e.a aVar2 = list.get(i);
                byte[] bArr = (byte[]) com.applovin.exoplayer2.l.a.checkNotNull(aVar2.tf);
                if (!ai.r(aVar2.eg, aVar.eg) || !ai.r(aVar2.te, aVar.te) || !com.applovin.exoplayer2.e.g.h.w(bArr)) {
                    z = false;
                    break;
                }
                length += bArr.length;
            }
            z = true;
            if (z) {
                byte[] bArr2 = new byte[length];
                int i2 = 0;
                for (int i3 = 0; i3 < list.size(); i3++) {
                    byte[] bArr3 = (byte[]) com.applovin.exoplayer2.l.a.checkNotNull(list.get(i3).tf);
                    int length2 = bArr3.length;
                    System.arraycopy(bArr3, 0, bArr2, i2, length2);
                    i2 += length2;
                }
                return aVar.o(bArr2);
            }
        }
        for (int i4 = 0; i4 < list.size(); i4++) {
            e.a aVar3 = list.get(i4);
            int iY = com.applovin.exoplayer2.e.g.h.y((byte[]) com.applovin.exoplayer2.l.a.checkNotNull(aVar3.tf));
            int i5 = ai.acV;
            if (i5 < 23 && iY == 0) {
                return aVar3;
            }
            if (i5 >= 23 && iY == 1) {
                return aVar3;
            }
        }
        return list.get(0);
    }

    private static String a(UUID uuid, String str) {
        return (ai.acV < 26 && com.applovin.exoplayer2.h.al.equals(uuid) && (MimeTypes.VIDEO_MP4.equals(str) || MimeTypes.AUDIO_MP4.equals(str))) ? C.CENC_TYPE_cenc : str;
    }

    @SuppressLint({"WrongConstant"})
    private static void a(MediaDrm mediaDrm) {
        mediaDrm.setPropertyString("securityLevel", "L3");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(m.b bVar, MediaDrm mediaDrm, byte[] bArr, int i, int i2, byte[] bArr2) {
        bVar.a(this, bArr, i, i2, bArr2);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static byte[] a(java.util.UUID r3, byte[] r4) {
        /*
            java.util.UUID r0 = com.applovin.exoplayer2.h.an
            boolean r1 = r0.equals(r3)
            if (r1 == 0) goto L18
            byte[] r1 = com.applovin.exoplayer2.e.g.h.a(r4, r3)
            if (r1 != 0) goto Lf
            goto L10
        Lf:
            r4 = r1
        L10:
            byte[] r4 = u(r4)
            byte[] r4 = com.applovin.exoplayer2.e.g.h.c(r0, r4)
        L18:
            int r1 = com.applovin.exoplayer2.l.ai.acV
            r2 = 23
            if (r1 >= r2) goto L26
            java.util.UUID r1 = com.applovin.exoplayer2.h.am
            boolean r1 = r1.equals(r3)
            if (r1 != 0) goto L58
        L26:
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L5f
            java.lang.String r0 = com.applovin.exoplayer2.l.ai.acX
            java.lang.String r1 = "Amazon"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L5f
            java.lang.String r0 = com.applovin.exoplayer2.l.ai.acY
            java.lang.String r1 = "AFTB"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L58
            java.lang.String r1 = "AFTS"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L58
            java.lang.String r1 = "AFTM"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L58
            java.lang.String r1 = "AFTT"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L5f
        L58:
            byte[] r3 = com.applovin.exoplayer2.e.g.h.a(r4, r3)
            if (r3 == 0) goto L5f
            return r3
        L5f:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.d.o.a(java.util.UUID, byte[]):byte[]");
    }

    public static o b(UUID uuid) throws t {
        try {
            return new o(uuid);
        } catch (UnsupportedSchemeException e2) {
            throw new t(1, e2);
        } catch (Exception e3) {
            throw new t(2, e3);
        }
    }

    private static byte[] b(UUID uuid, byte[] bArr) {
        return com.applovin.exoplayer2.h.al.equals(uuid) ? com.applovin.exoplayer2.d.a.l(bArr) : bArr;
    }

    private static UUID c(UUID uuid) {
        return (ai.acV >= 27 || !com.applovin.exoplayer2.h.al.equals(uuid)) ? uuid : com.applovin.exoplayer2.h.ak;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ m d(UUID uuid) {
        try {
            return b(uuid);
        } catch (t unused) {
            com.applovin.exoplayer2.l.q.i("FrameworkMediaDrm", "Failed to instantiate a FrameworkMediaDrm for uuid: " + uuid + ".");
            return new k();
        }
    }

    private static boolean hR() {
        return "ASUS_Z00AD".equals(ai.acY);
    }

    private static byte[] u(byte[] bArr) {
        com.applovin.exoplayer2.l.y yVar = new com.applovin.exoplayer2.l.y(bArr);
        int iPy = yVar.py();
        short sPs = yVar.ps();
        short sPs2 = yVar.ps();
        if (sPs != 1 || sPs2 != 1) {
            com.applovin.exoplayer2.l.q.g("FrameworkMediaDrm", "Unexpected record count or type. Skipping LA_URL workaround.");
            return bArr;
        }
        short sPs3 = yVar.ps();
        Charset charset = Charsets.UTF_16LE;
        String strB = yVar.b(sPs3, charset);
        if (strB.contains("<LA_URL>")) {
            return bArr;
        }
        int iIndexOf = strB.indexOf("</DATA>");
        if (iIndexOf == -1) {
            com.applovin.exoplayer2.l.q.h("FrameworkMediaDrm", "Could not find the </DATA> tag. Skipping LA_URL workaround.");
        }
        String str = strB.substring(0, iIndexOf) + "<LA_URL>https://x</LA_URL>" + strB.substring(iIndexOf);
        int i = iPy + 52;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.putInt(i);
        byteBufferAllocate.putShort(sPs);
        byteBufferAllocate.putShort(sPs2);
        byteBufferAllocate.putShort((short) (str.length() * 2));
        byteBufferAllocate.put(str.getBytes(charset));
        return byteBufferAllocate.array();
    }

    public String C(String str) {
        return this.tr.getPropertyString(str);
    }

    @Override // com.applovin.exoplayer2.d.m
    public m.a a(byte[] bArr, @Nullable List<e.a> list, int i, @Nullable HashMap<String, String> map) throws NotProvisionedException {
        byte[] bArrA;
        String strA;
        e.a aVarA = null;
        if (list != null) {
            aVarA = a(this.ey, list);
            bArrA = a(this.ey, (byte[]) com.applovin.exoplayer2.l.a.checkNotNull(aVarA.tf));
            strA = a(this.ey, aVarA.eg);
        } else {
            bArrA = null;
            strA = null;
        }
        MediaDrm.KeyRequest keyRequest = this.tr.getKeyRequest(bArr, bArrA, strA, i, map);
        byte[] bArrB = b(this.ey, keyRequest.getData());
        String defaultUrl = keyRequest.getDefaultUrl();
        if ("https://x".equals(defaultUrl)) {
            defaultUrl = "";
        }
        if (TextUtils.isEmpty(defaultUrl) && aVarA != null && !TextUtils.isEmpty(aVarA.te)) {
            defaultUrl = aVarA.te;
        }
        return new m.a(bArrB, defaultUrl, ai.acV >= 23 ? keyRequest.getRequestType() : Integer.MIN_VALUE);
    }

    @Override // com.applovin.exoplayer2.d.m
    public void a(@Nullable final m.b bVar) {
        this.tr.setOnEventListener(bVar == null ? null : new MediaDrm.OnEventListener() { // from class: com.applovin.exoplayer2.d.k0
            @Override // android.media.MediaDrm.OnEventListener
            public final void onEvent(MediaDrm mediaDrm, byte[] bArr, int i, int i2, byte[] bArr2) {
                this.a.a(bVar, mediaDrm, bArr, i, i2, bArr2);
            }
        });
    }

    @Override // com.applovin.exoplayer2.d.m
    public boolean a(byte[] bArr, String str) {
        if (ai.acV >= 31) {
            return a.a(this.tr, str);
        }
        try {
            MediaCrypto mediaCrypto = new MediaCrypto(this.ey, bArr);
            try {
                return mediaCrypto.requiresSecureDecoderComponent(str);
            } finally {
                mediaCrypto.release();
            }
        } catch (MediaCryptoException unused) {
            return true;
        }
    }

    @Override // com.applovin.exoplayer2.d.m
    @Nullable
    public byte[] a(byte[] bArr, byte[] bArr2) throws DeniedByServerException, NotProvisionedException {
        if (com.applovin.exoplayer2.h.al.equals(this.ey)) {
            bArr2 = com.applovin.exoplayer2.d.a.m(bArr2);
        }
        return this.tr.provideKeyResponse(bArr, bArr2);
    }

    @Override // com.applovin.exoplayer2.d.m
    public void b(byte[] bArr, byte[] bArr2) {
        this.tr.restoreKeys(bArr, bArr2);
    }

    @Override // com.applovin.exoplayer2.d.m
    public byte[] hL() throws MediaDrmException {
        return this.tr.openSession();
    }

    @Override // com.applovin.exoplayer2.d.m
    public m.d hM() {
        MediaDrm.ProvisionRequest provisionRequest = this.tr.getProvisionRequest();
        return new m.d(provisionRequest.getData(), provisionRequest.getDefaultUrl());
    }

    @Override // com.applovin.exoplayer2.d.m
    public int hN() {
        return 2;
    }

    @Override // com.applovin.exoplayer2.d.m
    public void p(byte[] bArr) {
        this.tr.closeSession(bArr);
    }

    @Override // com.applovin.exoplayer2.d.m
    public void q(byte[] bArr) throws DeniedByServerException {
        this.tr.provideProvisionResponse(bArr);
    }

    @Override // com.applovin.exoplayer2.d.m
    public Map<String, String> r(byte[] bArr) {
        return this.tr.queryKeyStatus(bArr);
    }

    @Override // com.applovin.exoplayer2.d.m
    public synchronized void release() {
        int i = this.sp - 1;
        this.sp = i;
        if (i == 0) {
            this.tr.release();
        }
    }

    @Override // com.applovin.exoplayer2.d.m
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public n s(byte[] bArr) throws MediaCryptoException {
        return new n(c(this.ey), bArr, ai.acV < 21 && com.applovin.exoplayer2.h.am.equals(this.ey) && "L3".equals(C("securityLevel")));
    }
}
