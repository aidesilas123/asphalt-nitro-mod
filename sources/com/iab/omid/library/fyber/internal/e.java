package com.iab.omid.library.fyber.internal;

import android.view.View;
import androidx.annotation.Nullable;
import com.iab.omid.library.fyber.adsession.FriendlyObstructionPurpose;

/* JADX INFO: loaded from: classes2.dex */
public class e {
    private final com.iab.omid.library.fyber.weakreference.a a;
    private final String b;
    private final FriendlyObstructionPurpose c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f4853d;

    public e(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, @Nullable String str) {
        this.a = new com.iab.omid.library.fyber.weakreference.a(view);
        this.b = view.getClass().getCanonicalName();
        this.c = friendlyObstructionPurpose;
        this.f4853d = str;
    }

    public String a() {
        return this.f4853d;
    }

    public FriendlyObstructionPurpose b() {
        return this.c;
    }

    public com.iab.omid.library.fyber.weakreference.a c() {
        return this.a;
    }

    public String d() {
        return this.b;
    }
}
