package com.iab.omid.library.kidoznet.internal;

import android.view.View;
import androidx.annotation.Nullable;
import com.iab.omid.library.kidoznet.adsession.FriendlyObstructionPurpose;

/* JADX INFO: loaded from: classes2.dex */
public class e {
    private final com.iab.omid.library.kidoznet.weakreference.a a;
    private final String b;
    private final FriendlyObstructionPurpose c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f4994d;

    public e(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, @Nullable String str) {
        this.a = new com.iab.omid.library.kidoznet.weakreference.a(view);
        this.b = view.getClass().getCanonicalName();
        this.c = friendlyObstructionPurpose;
        this.f4994d = str;
    }

    public String a() {
        return this.f4994d;
    }

    public FriendlyObstructionPurpose b() {
        return this.c;
    }

    public com.iab.omid.library.kidoznet.weakreference.a c() {
        return this.a;
    }

    public String d() {
        return this.b;
    }
}
