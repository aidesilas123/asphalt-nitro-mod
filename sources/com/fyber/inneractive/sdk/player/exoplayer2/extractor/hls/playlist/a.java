package com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist;

import com.fyber.inneractive.sdk.player.exoplayer2.i;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends c {
    public final List<C0180a> b;
    public final List<C0180a> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List<C0180a> f2269d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final i f2270e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List<i> f2271f;

    /* JADX INFO: renamed from: com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.playlist.a$a, reason: collision with other inner class name */
    public static final class C0180a {
        public final String a;
        public final i b;

        public C0180a(String str, i iVar) {
            this.a = str;
            this.b = iVar;
        }
    }

    public a(String str, List<C0180a> list, List<C0180a> list2, List<C0180a> list3, i iVar, List<i> list4) {
        super(str);
        this.b = Collections.unmodifiableList(list);
        this.c = Collections.unmodifiableList(list2);
        this.f2269d = Collections.unmodifiableList(list3);
        this.f2270e = iVar;
        this.f2271f = list4 != null ? Collections.unmodifiableList(list4) : null;
    }
}
