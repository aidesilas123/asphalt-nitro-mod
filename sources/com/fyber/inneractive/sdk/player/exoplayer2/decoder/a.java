package com.fyber.inneractive.sdk.player.exoplayer2.decoder;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import com.fyber.inneractive.sdk.player.exoplayer2.util.u;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    public byte[] a;
    public byte[] b;
    public int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[] f2219d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f2220e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2221f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final MediaCodec.CryptoInfo f2222g;
    public final b h;

    @TargetApi(24)
    public static final class b {
        public final MediaCodec.CryptoInfo a;
        public final MediaCodec.CryptoInfo.Pattern b;

        public b(MediaCodec.CryptoInfo cryptoInfo) {
            this.a = cryptoInfo;
            this.b = new MediaCodec.CryptoInfo.Pattern(0, 0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a() {
        int i = u.a;
        Object[] objArr = 0;
        MediaCodec.CryptoInfo cryptoInfoA = i >= 16 ? a() : null;
        this.f2222g = cryptoInfoA;
        this.h = i >= 24 ? new b(cryptoInfoA) : null;
    }

    @TargetApi(16)
    public final MediaCodec.CryptoInfo a() {
        return new MediaCodec.CryptoInfo();
    }
}
