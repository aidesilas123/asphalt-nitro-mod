package com.fyber.inneractive.sdk.model.vast;

import android.text.TextUtils;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.v0;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.w3c.dom.Node;

/* JADX INFO: loaded from: classes2.dex */
public class f {
    public String a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public l f2083e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public List<com.fyber.inneractive.sdk.measurement.f> f2082d = new ArrayList();
    public List<String> b = new ArrayList();
    public List<k> c = new ArrayList();

    public final void a(Node node) {
        com.fyber.inneractive.sdk.measurement.f fVar;
        Node nodeD = v0.d(node, "AdVerifications");
        if (nodeD != null) {
            for (Node node2 : (ArrayList) v0.c(nodeD, "Verification")) {
                if (node2 == null) {
                    fVar = null;
                } else {
                    com.fyber.inneractive.sdk.measurement.f fVar2 = new com.fyber.inneractive.sdk.measurement.f();
                    fVar2.f2055e = v0.b(node2, "vendor");
                    Node nodeD2 = v0.d(node2, "JavaScriptResource");
                    if (nodeD2 != null) {
                        fVar2.f2057g = true;
                        try {
                            fVar2.f2056f = v0.a(nodeD2);
                            fVar2.b = v0.b(nodeD2, "apiFramework");
                            fVar2.a = new URL(fVar2.f2056f);
                        } catch (MalformedURLException unused) {
                        }
                    }
                    Node nodeD3 = v0.d(node2, "TrackingEvents");
                    if (nodeD3 != null) {
                        for (Node node3 : (ArrayList) v0.c(nodeD3, "Tracking")) {
                            s sVarA = s.a(node3);
                            if (node3 != null && sVarA.a.equalsIgnoreCase("verificationNotExecuted")) {
                                fVar2.a(t.EVENT_VERIFICATION_NOT_EXECUTED, sVarA.b);
                            }
                        }
                    }
                    Node nodeD4 = v0.d(node2, "VerificationParameters");
                    if (nodeD4 != null) {
                        fVar2.f2054d = v0.a(nodeD4);
                    }
                    fVar = fVar2;
                }
                if (fVar != null) {
                    IAlog.a("Verification Found - %s", fVar.toString());
                    this.f2082d.add(fVar);
                }
            }
        }
    }

    public void b(Node node) {
        Iterator it;
        k kVar;
        g gVar;
        Iterator it2;
        o oVar;
        Iterator it3;
        if (node == null) {
            return;
        }
        Node nodeD = v0.d(node, "AdSystem");
        if (nodeD != null) {
            v0.b(nodeD, "version");
            v0.a(nodeD);
        }
        Node nodeD2 = v0.d(node, "Error");
        if (nodeD2 != null) {
            String strA = v0.a(nodeD2);
            if (!TextUtils.isEmpty(strA)) {
                this.a = strA;
            }
        }
        Iterator it4 = ((ArrayList) v0.c(node, "Impression")).iterator();
        while (it4.hasNext()) {
            String strA2 = v0.a((Node) it4.next());
            if (!TextUtils.isEmpty(strA2)) {
                this.b.add(strA2);
            }
        }
        Node nodeD3 = v0.d(node, "Creatives");
        if (nodeD3 != null) {
            Iterator it5 = ((ArrayList) v0.c(nodeD3, "Creative")).iterator();
            while (it5.hasNext()) {
                Node node2 = (Node) it5.next();
                if (node2 == null) {
                    it = it5;
                    kVar = null;
                } else {
                    k kVar2 = new k();
                    v0.b(node2, "AdID");
                    v0.b(node2, "id");
                    v0.a(node2, "sequence");
                    Node nodeD4 = v0.d(node2, "Linear");
                    if (nodeD4 != null) {
                        n nVar = new n();
                        Node nodeD5 = v0.d(nodeD4, "MediaFiles");
                        if (nodeD5 != null) {
                            ArrayList arrayList = (ArrayList) v0.c(nodeD5, "MediaFile");
                            if (!arrayList.isEmpty()) {
                                nVar.a = new ArrayList();
                                Iterator it6 = arrayList.iterator();
                                while (it6.hasNext()) {
                                    Node node3 = (Node) it6.next();
                                    if (node3 == null) {
                                        it2 = it5;
                                        it3 = it6;
                                        oVar = null;
                                    } else {
                                        it2 = it5;
                                        oVar = new o();
                                        it3 = it6;
                                        oVar.a = v0.b(node3, "delivery");
                                        oVar.b = v0.a(node3, "width");
                                        oVar.c = v0.a(node3, "height");
                                        oVar.f2092d = v0.b(node3, "type");
                                        v0.b(node3, "id");
                                        oVar.f2094f = v0.b(node3, "apiFramework");
                                        oVar.f2093e = v0.a(node3, "bitrate");
                                        String strB = v0.b(node3, "maintainAspectRatio");
                                        if (!TextUtils.isEmpty(strB)) {
                                            try {
                                                Boolean.valueOf(strB);
                                            } catch (NumberFormatException unused) {
                                            }
                                        }
                                        String strB2 = v0.b(node3, "scalable");
                                        if (!TextUtils.isEmpty(strB2)) {
                                            try {
                                                Boolean.valueOf(strB2);
                                            } catch (NumberFormatException unused2) {
                                            }
                                        }
                                        oVar.f2095g = v0.a(node3);
                                    }
                                    if (oVar != null) {
                                        nVar.a.add(oVar);
                                    }
                                    it5 = it2;
                                    it6 = it3;
                                }
                            }
                        }
                        it = it5;
                        Node nodeD6 = v0.d(nodeD4, "VideoClicks");
                        if (nodeD6 != null) {
                            nVar.c = v0.a(v0.d(nodeD6, "ClickThrough"));
                            ArrayList arrayList2 = (ArrayList) v0.c(nodeD6, "ClickTracking");
                            if (!arrayList2.isEmpty()) {
                                nVar.f2090d = new ArrayList();
                                Iterator it7 = arrayList2.iterator();
                                while (it7.hasNext()) {
                                    String strA3 = v0.a((Node) it7.next());
                                    if (!TextUtils.isEmpty(strA3)) {
                                        nVar.f2090d.add(strA3);
                                    }
                                }
                            }
                        }
                        Node nodeD7 = v0.d(nodeD4, "TrackingEvents");
                        if (nodeD7 != null) {
                            ArrayList arrayList3 = (ArrayList) v0.c(nodeD7, "Tracking");
                            if (!arrayList3.isEmpty()) {
                                nVar.b = new ArrayList();
                                Iterator it8 = arrayList3.iterator();
                                while (it8.hasNext()) {
                                    s sVarA = s.a((Node) it8.next());
                                    if (sVarA != null) {
                                        nVar.b.add(sVarA);
                                    }
                                }
                            }
                        }
                        Node nodeD8 = v0.d(nodeD4, "Duration");
                        if (nodeD8 != null) {
                            nVar.f2091e = v0.a(nodeD8);
                        }
                        kVar2.a = nVar;
                    } else {
                        it = it5;
                    }
                    Node nodeD9 = v0.d(node2, "CompanionAds");
                    if (nodeD9 != null) {
                        List<Node> listC = v0.c(nodeD9, "Companion");
                        kVar2.b = new ArrayList();
                        for (Node node4 : (ArrayList) listC) {
                            if (node4 == null) {
                                gVar = null;
                            } else {
                                gVar = new g();
                                gVar.a = v0.a(node4, "width");
                                gVar.b = v0.a(node4, "height");
                                gVar.c = v0.b(node4, "id");
                                v0.b(node4, "apiFramework");
                                v0.a(node4, "expandedWidth");
                                v0.a(node4, "expandedHeight");
                                Node nodeD10 = v0.d(node4, "StaticResource");
                                if (nodeD10 != null) {
                                    j jVar = new j();
                                    jVar.a = v0.b(nodeD10, "creativeType");
                                    jVar.b = v0.a(nodeD10);
                                    gVar.f2084d = jVar;
                                }
                                Node nodeD11 = v0.d(node4, "HTMLResource");
                                if (nodeD11 != null) {
                                    gVar.f2086f = v0.a(nodeD11);
                                }
                                Node nodeD12 = v0.d(node4, "IFrameResource");
                                if (nodeD12 != null) {
                                    gVar.f2085e = v0.a(nodeD12);
                                }
                                Node nodeD13 = v0.d(node4, "CompanionClickThrough");
                                if (nodeD13 != null) {
                                    gVar.f2087g = v0.a(nodeD13);
                                }
                                ArrayList arrayList4 = (ArrayList) v0.c(node4, "CompanionClickTracking");
                                if (arrayList4.size() > 0) {
                                    gVar.h = new ArrayList();
                                    Iterator it9 = arrayList4.iterator();
                                    while (it9.hasNext()) {
                                        String strA4 = v0.a((Node) it9.next());
                                        if (!TextUtils.isEmpty(strA4)) {
                                            gVar.h.add(strA4);
                                        }
                                    }
                                }
                                Node nodeD14 = v0.d(node4, "TrackingEvents");
                                if (nodeD14 != null) {
                                    ArrayList arrayList5 = (ArrayList) v0.c(nodeD14, "Tracking");
                                    if (!arrayList5.isEmpty()) {
                                        gVar.j = new ArrayList();
                                        Iterator it10 = arrayList5.iterator();
                                        while (it10.hasNext()) {
                                            s sVarA2 = s.a((Node) it10.next());
                                            if (sVarA2 != null) {
                                                gVar.j.add(sVarA2);
                                            }
                                        }
                                    }
                                }
                            }
                            if (gVar != null) {
                                kVar2.b.add(gVar);
                            }
                        }
                    }
                    kVar = kVar2;
                }
                if (kVar != null) {
                    this.c.add(kVar);
                }
                it5 = it;
            }
        }
        Node nodeD15 = v0.d(node, "Extensions");
        if (nodeD15 != null) {
            for (Node node5 : (ArrayList) v0.c(nodeD15, "Extension")) {
                if ("AdVerifications".equalsIgnoreCase(v0.b(node5, "type"))) {
                    a(node5);
                }
                if ("FMPCompanionAssets".equalsIgnoreCase(v0.b(node5, "type"))) {
                    IAlog.a("parseFMPCompanionAssetsTag", new Object[0]);
                    Node nodeD16 = v0.d(node5, "FMPCompanionAssets");
                    if (nodeD16 != null) {
                        l lVar = new l();
                        Node nodeD17 = v0.d(nodeD16, "Name");
                        if (nodeD17 != null) {
                            lVar.a = v0.a(nodeD17);
                        }
                        Node nodeD18 = v0.d(nodeD16, "Description");
                        if (nodeD18 != null) {
                            lVar.b = v0.a(nodeD18);
                        }
                        Node nodeD19 = v0.d(nodeD16, "Icons");
                        if (nodeD19 != null) {
                            lVar.c = new ArrayList();
                            Iterator it11 = ((ArrayList) v0.c(nodeD19, "Icon")).iterator();
                            while (it11.hasNext()) {
                                lVar.c.add(v0.a((Node) it11.next()));
                            }
                        }
                        Node nodeD20 = v0.d(nodeD16, "Rating");
                        if (nodeD20 != null) {
                            try {
                                lVar.f2088d = Float.parseFloat(v0.a(nodeD20));
                            } catch (Exception unused3) {
                            }
                        }
                        Node nodeD21 = v0.d(nodeD16, "Screenshots");
                        if (nodeD21 != null) {
                            lVar.f2089e = new ArrayList();
                            Iterator it12 = ((ArrayList) v0.c(nodeD21, "Screenshot")).iterator();
                            while (it12.hasNext()) {
                                String strA5 = v0.a((Node) it12.next());
                                if (!TextUtils.isEmpty(strA5)) {
                                    lVar.f2089e.add(strA5);
                                }
                            }
                        }
                        this.f2083e = lVar;
                    }
                }
            }
        }
        a(node);
    }
}
