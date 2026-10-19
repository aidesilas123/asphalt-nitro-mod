package com.applovin.exoplayer2.k;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class z implements i {
    private final i LR;
    private long aaE;
    private Uri aby = Uri.EMPTY;
    private Map<String, List<String>> abz = Collections.emptyMap();

    public z(i iVar) {
        this.LR = (i) com.applovin.exoplayer2.l.a.checkNotNull(iVar);
    }

    @Override // com.applovin.exoplayer2.k.i
    public long a(l lVar) throws IOException {
        this.aby = lVar.ef;
        this.abz = Collections.emptyMap();
        long jA = this.LR.a(lVar);
        this.aby = (Uri) com.applovin.exoplayer2.l.a.checkNotNull(getUri());
        this.abz = kT();
        return jA;
    }

    @Override // com.applovin.exoplayer2.k.i
    public void c(aa aaVar) {
        com.applovin.exoplayer2.l.a.checkNotNull(aaVar);
        this.LR.c(aaVar);
    }

    @Override // com.applovin.exoplayer2.k.i
    public void close() throws IOException {
        this.LR.close();
    }

    @Override // com.applovin.exoplayer2.k.i
    @Nullable
    public Uri getUri() {
        return this.LR.getUri();
    }

    @Override // com.applovin.exoplayer2.k.i
    public Map<String, List<String>> kT() {
        return this.LR.kT();
    }

    public long oH() {
        return this.aaE;
    }

    public Uri oI() {
        return this.aby;
    }

    public Map<String, List<String>> oJ() {
        return this.abz;
    }

    @Override // com.applovin.exoplayer2.k.g
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.LR.read(bArr, i, i2);
        if (i3 != -1) {
            this.aaE += (long) i3;
        }
        return i3;
    }
}
