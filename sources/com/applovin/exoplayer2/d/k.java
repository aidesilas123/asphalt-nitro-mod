package com.applovin.exoplayer2.d;

import android.media.MediaDrmException;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.applovin.exoplayer2.d.e;
import com.applovin.exoplayer2.d.m;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(18)
public final class k implements m {
    @Override // com.applovin.exoplayer2.d.m
    public m.a a(byte[] bArr, @Nullable List<e.a> list, int i, @Nullable HashMap<String, String> map) {
        throw new IllegalStateException();
    }

    @Override // com.applovin.exoplayer2.d.m
    public void a(@Nullable m.b bVar) {
    }

    @Override // com.applovin.exoplayer2.d.m
    public boolean a(byte[] bArr, String str) {
        throw new IllegalStateException();
    }

    @Override // com.applovin.exoplayer2.d.m
    @Nullable
    public byte[] a(byte[] bArr, byte[] bArr2) {
        throw new IllegalStateException();
    }

    @Override // com.applovin.exoplayer2.d.m
    public void b(byte[] bArr, byte[] bArr2) {
        throw new IllegalStateException();
    }

    @Override // com.applovin.exoplayer2.d.m
    public byte[] hL() throws MediaDrmException {
        throw new MediaDrmException("Attempting to open a session using a dummy ExoMediaDrm.");
    }

    @Override // com.applovin.exoplayer2.d.m
    public m.d hM() {
        throw new IllegalStateException();
    }

    @Override // com.applovin.exoplayer2.d.m
    public int hN() {
        return 1;
    }

    @Override // com.applovin.exoplayer2.d.m
    public void p(byte[] bArr) {
    }

    @Override // com.applovin.exoplayer2.d.m
    public void q(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // com.applovin.exoplayer2.d.m
    public Map<String, String> r(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // com.applovin.exoplayer2.d.m
    public void release() {
    }

    @Override // com.applovin.exoplayer2.d.m
    public com.applovin.exoplayer2.c.b s(byte[] bArr) {
        throw new IllegalStateException();
    }
}
