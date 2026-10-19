package com.iab.omid.library.mmadbridge.internal;

import android.view.View;
import androidx.annotation.Nullable;
import com.iab.omid.library.mmadbridge.adsession.FriendlyObstructionPurpose;

/* JADX INFO: loaded from: classes2.dex */
public class e {
    private final com.iab.omid.library.mmadbridge.weakreference.a a;
    private final String b;
    private final FriendlyObstructionPurpose c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f5030d;

    public e(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, @Nullable String str) {
        this.a = new com.iab.omid.library.mmadbridge.weakreference.a(view);
        this.b = view.getClass().getCanonicalName();
        this.c = friendlyObstructionPurpose;
        this.f5030d = str;
    }

    public String a() {
        return this.f5030d;
    }

    public FriendlyObstructionPurpose b() {
        return this.c;
    }

    public com.iab.omid.library.mmadbridge.weakreference.a c() {
        return this.a;
    }

    public String d() {
        return this.b;
    }
}
