package com.fyber.inneractive.sdk.model.vast;

import com.fyber.inneractive.sdk.util.v0;
import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.Node;

/* JADX INFO: loaded from: classes2.dex */
public class r {
    public String a;
    public List<e> b;

    public static r a(Node node) {
        e eVar;
        r rVar = new r();
        rVar.a = v0.b(node, "version");
        ArrayList<Node> arrayList = (ArrayList) v0.c(node, "Ad");
        if (!arrayList.isEmpty()) {
            rVar.b = new ArrayList();
            for (Node node2 : arrayList) {
                if (node2 == null) {
                    eVar = null;
                } else {
                    e eVar2 = new e();
                    eVar2.a = v0.b(node2, "id");
                    Node nodeD = v0.d(node2, "Wrapper");
                    if (nodeD != null) {
                        eVar2.b = v.c(nodeD);
                    }
                    Node nodeD2 = v0.d(node2, "InLine");
                    if (nodeD2 != null) {
                        eVar2.c = m.c(nodeD2);
                    }
                    eVar = eVar2;
                }
                rVar.b.add(eVar);
            }
        }
        return rVar;
    }

    public String toString() {
        return new StringBuilder("Vast: version - " + this.a + "\nAds: ").toString();
    }
}
