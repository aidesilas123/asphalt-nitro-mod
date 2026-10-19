package com.json.mediationsdk.demandOnly;

import com.json.d1;
import com.json.mediationsdk.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.p;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0001\u0003J\b\u0010\u0003\u001a\u00020\u0002H&J\b\u0010\u0005\u001a\u00020\u0004H&J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0006\u001a\u00020\u0002H&J\u0012\u0010\n\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\bH&¨\u0006\u000b"}, d2 = {"Lcom/ironsource/mediationsdk/demandOnly/a;", "", "", "a", "", "isEmpty", "instanceName", "Lcom/ironsource/d1;", "", "index", "get", "mediationsdk_release"}, mv = {1, 8, 0})
public interface a {

    /* JADX INFO: renamed from: com.ironsource.mediationsdk.demandOnly.a$a, reason: collision with other inner class name */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0006\u001a\u00020\u0002H\u0016J\u0012\u0010\n\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\bH\u0016R\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\f¨\u0006\u0010"}, d2 = {"Lcom/ironsource/mediationsdk/demandOnly/a$a;", "Lcom/ironsource/mediationsdk/demandOnly/a;", "", "a", "", "isEmpty", "instanceName", "Lcom/ironsource/d1;", "", "index", "get", "", "Ljava/util/List;", d.h, "<init>", "(Ljava/util/List;)V", "mediationsdk_release"}, mv = {1, 8, 0})
    public static final class C0358a implements a {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private final List<d1> waterfall;

        /* JADX WARN: Multi-variable type inference failed */
        public C0358a() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public C0358a(List<d1> waterfall) {
            Intrinsics.checkNotNullParameter(waterfall, "waterfall");
            this.waterfall = waterfall;
        }

        public /* synthetic */ C0358a(List list, int i, n nVar) {
            this((i & 1) != 0 ? new ArrayList() : list);
        }

        @Override // com.json.mediationsdk.demandOnly.a
        public d1 a(String instanceName) {
            Object next;
            Intrinsics.checkNotNullParameter(instanceName, "instanceName");
            Iterator<T> it = this.waterfall.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (Intrinsics.areEqual(((d1) next).c(), instanceName)) {
                    break;
                }
            }
            return (d1) next;
        }

        @Override // com.json.mediationsdk.demandOnly.a
        public String a() {
            if (this.waterfall.isEmpty()) {
                return "";
            }
            return '1' + ((d1) p.first((List) this.waterfall)).c();
        }

        @Override // com.json.mediationsdk.demandOnly.a
        public d1 get(int index) {
            if (index < 0 || index >= this.waterfall.size()) {
                return null;
            }
            return this.waterfall.get(index);
        }

        @Override // com.json.mediationsdk.demandOnly.a
        public boolean isEmpty() {
            return this.waterfall.isEmpty();
        }
    }

    d1 a(String instanceName);

    String a();

    d1 get(int index);

    boolean isEmpty();
}
