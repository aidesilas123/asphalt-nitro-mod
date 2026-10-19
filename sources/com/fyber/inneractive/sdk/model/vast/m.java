package com.fyber.inneractive.sdk.model.vast;

import com.fyber.inneractive.sdk.util.v0;
import org.w3c.dom.Node;

/* JADX INFO: loaded from: classes2.dex */
public class m extends f {
    public static m c(Node node) {
        m mVar = new m();
        super.b(node);
        v0.a(v0.d(node, "AdTitle"));
        v0.a(v0.d(node, "Description"));
        return mVar;
    }
}
