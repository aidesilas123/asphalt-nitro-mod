package com.hyprmx.android.sdk.model.vast;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    public final List<c> a;
    public final e b;
    public final List<i> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List<b> f4571d;

    /* JADX INFO: renamed from: com.hyprmx.android.sdk.model.vast.a$a, reason: collision with other inner class name */
    public static final class C0291a {
        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r1v1 com.hyprmx.android.sdk.model.vast.a, still in use, count: 3, list:
              (r1v1 com.hyprmx.android.sdk.model.vast.a) from 0x0144: MOVE (r24v0 com.hyprmx.android.sdk.model.vast.a) = (r1v1 com.hyprmx.android.sdk.model.vast.a)
              (r1v1 com.hyprmx.android.sdk.model.vast.a) from 0x009d: MOVE (r24v2 com.hyprmx.android.sdk.model.vast.a) = (r1v1 com.hyprmx.android.sdk.model.vast.a)
              (r1v1 com.hyprmx.android.sdk.model.vast.a) from 0x0079: MOVE (r24v4 com.hyprmx.android.sdk.model.vast.a) = (r1v1 com.hyprmx.android.sdk.model.vast.a)
            	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
            	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
            	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:91)
            	at jadx.core.utils.InsnRemover.addAndUnbind(InsnRemover.java:57)
            	at jadx.core.dex.visitors.ModVisitor.removeStep(ModVisitor.java:463)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:97)
            */
        public static com.hyprmx.android.sdk.model.vast.a a(org.json.JSONObject r30) {
            /*
                Method dump skipped, instruction units count: 685
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.model.vast.a.C0291a.a(org.json.JSONObject):com.hyprmx.android.sdk.model.vast.a");
        }
    }

    public a(List<c> impressions, e linear, List<i> viewableImpressions, List<b> adVerifications) {
        Intrinsics.checkNotNullParameter(impressions, "impressions");
        Intrinsics.checkNotNullParameter(linear, "linear");
        Intrinsics.checkNotNullParameter(viewableImpressions, "viewableImpressions");
        Intrinsics.checkNotNullParameter(adVerifications, "adVerifications");
        this.a = impressions;
        this.b = linear;
        this.c = viewableImpressions;
        this.f4571d = adVerifications;
    }

    public final String a() {
        Object next;
        Iterator<T> it = this.b.f4573d.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            boolean z = true;
            if (!Intrinsics.areEqual(((h) next).a, "ClickThrough") || !(!StringsKt__StringsJVMKt.isBlank(r3.b))) {
                z = false;
            }
            if (z) {
                break;
            }
        }
        h hVar = (h) next;
        if (hVar != null) {
            return hVar.b;
        }
        return null;
    }

    public final ArrayList b() {
        ArrayList arrayList = new ArrayList();
        List<h> list = this.b.f4573d;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : list) {
            h hVar = (h) obj;
            if (Intrinsics.areEqual(hVar.a, "ClickTracking") && (StringsKt__StringsJVMKt.isBlank(hVar.b) ^ true)) {
                arrayList2.add(obj);
            }
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            arrayList.add(((h) it.next()).b);
        }
        return arrayList;
    }

    public final HashMap c() {
        HashMap map = new HashMap();
        List<g> list = this.b.c;
        ArrayList<g> arrayList = new ArrayList();
        for (Object obj : list) {
            g gVar = (g) obj;
            if (!Intrinsics.areEqual(gVar.b, "progress") && (StringsKt__StringsJVMKt.isBlank(gVar.a) ^ true)) {
                arrayList.add(obj);
            }
        }
        for (g gVar2 : arrayList) {
            Collection arrayList2 = (List) map.get(gVar2.b);
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
            }
            List mutableList = CollectionsKt___CollectionsKt.toMutableList(arrayList2);
            mutableList.add(gVar2.a);
            map.put(gVar2.b, mutableList);
        }
        return map;
    }

    public final ArrayList d() {
        List<c> list = this.a;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((c) it.next()).a);
        }
        return arrayList;
    }

    public final ArrayList e() {
        List<b> list = this.f4571d;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            List<d> list2 = ((b) obj).b;
            boolean z = true;
            if ((list2 instanceof Collection) && list2.isEmpty()) {
                z = false;
            } else {
                for (d dVar : list2) {
                    if ((dVar.a.length() > 0) && dVar.b.contentEquals(CampaignEx.KEY_OMID) && dVar.c) {
                        break;
                    }
                }
                z = false;
            }
            if (z) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final HashMap f() {
        HashMap map = new HashMap();
        List<g> list = this.b.c;
        ArrayList<g> arrayList = new ArrayList();
        for (Object obj : list) {
            g gVar = (g) obj;
            if (Intrinsics.areEqual(gVar.b, "progress") && (StringsKt__StringsJVMKt.isBlank(gVar.a) ^ true)) {
                arrayList.add(obj);
            }
        }
        for (g gVar2 : arrayList) {
            long j = gVar2.c / ((long) 1000);
            Collection arrayList2 = (List) map.get(Long.valueOf(j));
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
            }
            List mutableList = CollectionsKt___CollectionsKt.toMutableList(arrayList2);
            mutableList.add(gVar2.a);
            map.put(Long.valueOf(j), mutableList);
        }
        return map;
    }

    public final HashMap g() {
        HashMap map = new HashMap();
        for (i iVar : this.c) {
            Collection arrayList = (List) map.get(iVar.a);
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            List mutableList = CollectionsKt___CollectionsKt.toMutableList(arrayList);
            mutableList.add(iVar.b);
            map.put(iVar.a, mutableList);
        }
        return map;
    }
}
