package com.fyber.inneractive.sdk.mraid;

import com.facebook.share.internal.ShareConstants;
import com.fyber.inneractive.sdk.ui.IAmraidWebViewController;
import com.fyber.inneractive.sdk.util.k0;
import com.fyber.inneractive.sdk.web.i;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class n extends a {
    public n(Map<String, String> map, com.fyber.inneractive.sdk.web.i iVar, k0 k0Var) {
        super(map, iVar, k0Var);
    }

    @Override // com.fyber.inneractive.sdk.mraid.b
    public void a() {
        String str = this.b.get(ShareConstants.MEDIA_URI);
        if (str == null || "".equals(str)) {
            this.c.a(g.PLAY_VIDEO, "Video can't be played with null or empty URL");
            return;
        }
        L l = ((IAmraidWebViewController) this.c).f2756g;
        if (l != 0) {
            ((i.f) l).a(str);
        }
    }

    @Override // com.fyber.inneractive.sdk.mraid.a
    public String c() {
        return this.b.get(ShareConstants.MEDIA_URI);
    }
}
