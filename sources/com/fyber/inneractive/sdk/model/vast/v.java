package com.fyber.inneractive.sdk.model.vast;

import com.fyber.inneractive.sdk.util.v0;
import org.w3c.dom.Node;

/* JADX INFO: loaded from: classes2.dex */
public class v extends f {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f2096f;

    public static v c(Node node) {
        v vVar = new v();
        super.b(node);
        vVar.f2096f = v0.a(v0.d(node, "VASTAdTagURI"));
        return vVar;
    }
}
