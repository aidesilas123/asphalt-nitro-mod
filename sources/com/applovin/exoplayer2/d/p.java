package com.applovin.exoplayer2.d;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.d.m;
import com.applovin.exoplayer2.k.l;
import com.applovin.exoplayer2.k.t;
import com.applovin.exoplayer2.l.ai;
import com.json.b4;
import java.io.Closeable;
import java.io.InputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class p implements r {
    private final t.b ts;

    @Nullable
    private final String tt;
    private final boolean tu;
    private final Map<String, String> tv;

    public p(@Nullable String str, boolean z, t.b bVar) {
        com.applovin.exoplayer2.l.a.checkArgument((z && TextUtils.isEmpty(str)) ? false : true);
        this.ts = bVar;
        this.tt = str;
        this.tu = z;
        this.tv = new HashMap();
    }

    @Nullable
    private static String a(t.e eVar, int i) {
        Map<String, List<String>> map;
        List<String> list;
        int i2 = eVar.aaC;
        if (!((i2 == 307 || i2 == 308) && i < 5) || (map = eVar.aaM) == null || (list = map.get("Location")) == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    private static byte[] a(t.b bVar, String str, @Nullable byte[] bArr, Map<String, String> map) throws s {
        com.applovin.exoplayer2.k.z zVar = new com.applovin.exoplayer2.k.z(bVar.ox());
        com.applovin.exoplayer2.k.l lVarOj = new l.a().aK(str).d(map).fh(2).G(bArr).fi(1).oj();
        int i = 0;
        com.applovin.exoplayer2.k.l lVarOj2 = lVarOj;
        while (true) {
            try {
                com.applovin.exoplayer2.k.k kVar = new com.applovin.exoplayer2.k.k(zVar, lVarOj2);
                try {
                    return ai.a((InputStream) kVar);
                } catch (t.e e2) {
                    String strA = a(e2, i);
                    if (strA == null) {
                        throw e2;
                    }
                    i++;
                    lVarOj2 = lVarOj2.oi().aK(strA).oj();
                } finally {
                    ai.a((Closeable) kVar);
                }
            } catch (Exception e3) {
                throw new s(lVarOj, (Uri) com.applovin.exoplayer2.l.a.checkNotNull(zVar.oI()), zVar.kT(), zVar.oH(), e3);
            }
        }
    }

    @Override // com.applovin.exoplayer2.d.r
    public byte[] a(UUID uuid, m.a aVar) throws s {
        String strHP = aVar.hP();
        if (this.tu || TextUtils.isEmpty(strHP)) {
            strHP = this.tt;
        }
        if (TextUtils.isEmpty(strHP)) {
            throw new s(new l.a().e(Uri.EMPTY).oj(), Uri.EMPTY, com.applovin.exoplayer2.common.a.u.gi(), 0L, new IllegalStateException("No license URL"));
        }
        HashMap map = new HashMap();
        UUID uuid2 = com.applovin.exoplayer2.h.an;
        map.put(b4.I, uuid2.equals(uuid) ? "text/xml" : com.applovin.exoplayer2.h.al.equals(uuid) ? b4.J : "application/octet-stream");
        if (uuid2.equals(uuid)) {
            map.put("SOAPAction", "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense");
        }
        synchronized (this.tv) {
            map.putAll(this.tv);
        }
        return a(this.ts, strHP, aVar.hO(), map);
    }

    @Override // com.applovin.exoplayer2.d.r
    public byte[] a(UUID uuid, m.d dVar) throws s {
        return a(this.ts, dVar.hQ() + "&signedRequest=" + ai.J(dVar.hO()), null, Collections.emptyMap());
    }

    public void c(String str, String str2) {
        com.applovin.exoplayer2.l.a.checkNotNull(str);
        com.applovin.exoplayer2.l.a.checkNotNull(str2);
        synchronized (this.tv) {
            this.tv.put(str, str2);
        }
    }
}
