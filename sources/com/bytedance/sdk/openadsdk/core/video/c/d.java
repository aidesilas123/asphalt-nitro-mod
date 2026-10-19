package com.bytedance.sdk.openadsdk.core.video.c;

import com.bykv.vk.openvk.component.video.api.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: SupportReplayMediaPlayer.java */
/* JADX INFO: loaded from: classes2.dex */
public class d extends com.bykv.vk.openvk.component.video.a.d.d {
    private final List<b> a = Collections.synchronizedList(new ArrayList());
    private int b = 1;
    private int c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f1706d;

    /* JADX INFO: compiled from: SupportReplayMediaPlayer.java */
    private class a implements a.InterfaceC0091a {
        private a() {
        }

        @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
        public void a(com.bykv.vk.openvk.component.video.api.a aVar) {
            d.a(d.this);
            if (d.this.c > d.this.b) {
                Iterator it = d.this.a.iterator();
                while (it.hasNext()) {
                    ((b) it.next()).a(aVar);
                }
            } else {
                Iterator it2 = d.this.a.iterator();
                while (it2.hasNext()) {
                    ((b) it2.next()).a(d.this.c, d.this.b);
                }
                d.this.i();
            }
        }

        @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
        public void a(com.bykv.vk.openvk.component.video.api.a aVar, int i) {
            Iterator it = d.this.a.iterator();
            while (it.hasNext()) {
                ((b) it.next()).a(aVar, i);
            }
        }

        @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
        public void a(com.bykv.vk.openvk.component.video.api.a aVar, int i, int i2) {
            Iterator it = d.this.a.iterator();
            while (it.hasNext()) {
                ((b) it.next()).a(aVar, i, i2);
            }
        }

        @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
        public void a(com.bykv.vk.openvk.component.video.api.a aVar, int i, int i2, int i3) {
            Iterator it = d.this.a.iterator();
            while (it.hasNext()) {
                ((b) it.next()).a(aVar, i, i2, i3);
            }
        }

        @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
        public void a(com.bykv.vk.openvk.component.video.api.a aVar, long j) {
            Iterator it = d.this.a.iterator();
            while (it.hasNext()) {
                ((b) it.next()).a(aVar, j);
            }
        }

        @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
        public void a(com.bykv.vk.openvk.component.video.api.a aVar, long j, long j2) {
            Iterator it = d.this.a.iterator();
            while (it.hasNext()) {
                ((b) it.next()).a(aVar, j, j2);
            }
        }

        @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
        public void a(com.bykv.vk.openvk.component.video.api.a aVar, com.bykv.vk.openvk.component.video.api.c.a aVar2) {
            Iterator it = d.this.a.iterator();
            while (it.hasNext()) {
                ((b) it.next()).a(aVar, aVar2);
            }
        }

        @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
        public void a(com.bykv.vk.openvk.component.video.api.a aVar, boolean z) {
            Iterator it = d.this.a.iterator();
            while (it.hasNext()) {
                ((b) it.next()).a(aVar, z);
            }
        }

        @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
        public void b(com.bykv.vk.openvk.component.video.api.a aVar) {
            Iterator it = d.this.a.iterator();
            while (it.hasNext()) {
                ((b) it.next()).b(aVar);
            }
        }

        @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
        public void b(com.bykv.vk.openvk.component.video.api.a aVar, int i) {
            Iterator it = d.this.a.iterator();
            while (it.hasNext()) {
                ((b) it.next()).b(aVar, i);
            }
        }

        @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
        public void c(com.bykv.vk.openvk.component.video.api.a aVar) {
            Iterator it = d.this.a.iterator();
            while (it.hasNext()) {
                ((b) it.next()).c(aVar);
            }
        }

        @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
        public void d(com.bykv.vk.openvk.component.video.api.a aVar) {
            Iterator it = d.this.a.iterator();
            while (it.hasNext()) {
                ((b) it.next()).d(aVar);
            }
        }

        @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
        public void e(com.bykv.vk.openvk.component.video.api.a aVar) {
            Iterator it = d.this.a.iterator();
            while (it.hasNext()) {
                ((b) it.next()).e(aVar);
            }
        }
    }

    /* JADX INFO: compiled from: SupportReplayMediaPlayer.java */
    public interface b extends a.InterfaceC0091a {
        void a(int i, int i2);
    }

    public d() {
        a aVar = new a();
        this.f1706d = aVar;
        super.a(aVar);
        a(500);
    }

    static /* synthetic */ int a(d dVar) {
        int i = dVar.c;
        dVar.c = i + 1;
        return i;
    }

    @Override // com.bykv.vk.openvk.component.video.a.d.d
    public void a(a.InterfaceC0091a interfaceC0091a) {
        if (!(interfaceC0091a instanceof b)) {
            super.a(interfaceC0091a);
        } else {
            if (this.a.contains(interfaceC0091a)) {
                return;
            }
            this.a.add((b) interfaceC0091a);
        }
    }

    public void c(int i) {
        this.b = Math.max(1, i);
    }

    @Override // com.bykv.vk.openvk.component.video.a.d.d
    public long p() {
        return super.p() * ((long) this.b);
    }

    @Override // com.bykv.vk.openvk.component.video.a.d.d
    public long q() {
        return super.q() + (((long) (this.c - 1)) * super.p());
    }

    public int t() {
        return this.c;
    }
}
